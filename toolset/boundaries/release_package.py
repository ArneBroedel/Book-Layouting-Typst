"""Chapter release package validator (PRODUCT-BOUNDARIES ADR 55).

Parses YAML (stdlib-friendly: optional PyYAML, else minimal subset) and enforces
the hard contract fields used to couple C → B → A|W without forking SoT.
"""

from __future__ import annotations

import re
from dataclasses import dataclass, field
from pathlib import Path
from typing import Any

# Align with freeze_gate / content-maturity
_VALID_REV = re.compile(
    r"^(?:git:[0-9a-f]{7,40}|sha256:[0-9a-f]{64})$",
    re.IGNORECASE,
)
_VALID_SCOPE = frozenset({"print", "web", "both"})
_PRINT_STATUSES = frozenset({"pending", "composed", "validated", "proofed", "n/a"})
_WEB_STATUSES = frozenset({"pending", "built", "proofed", "n/a"})
_ASSET_STATUSES = frozenset({"accepted", "draft", "gap", "rejected"})
_SCHEMA_VERSION = "1"


@dataclass
class ReleaseCheckResult:
    ok: bool
    messages: list[str] = field(default_factory=list)
    data: dict[str, Any] | None = None


def is_valid_content_revision(rev: str | None) -> bool:
    if not rev or not isinstance(rev, str):
        return False
    return bool(_VALID_REV.match(rev.strip()))


def load_release_package(path: Path) -> dict[str, Any]:
    """Load a release package from YAML or JSON path.

    Prefers PyYAML when installed; otherwise uses a minimal YAML subset
    sufficient for contract fixtures (mappings, lists, scalars, comments).
    """
    path = Path(path)
    if not path.is_file():
        raise FileNotFoundError(f"release package not found: {path}")
    text = path.read_text(encoding="utf-8")
    suffix = path.suffix.lower()
    if suffix == ".json":
        import json

        data = json.loads(text)
        if not isinstance(data, dict):
            raise ValueError("release package JSON root must be an object")
        return data

    try:
        import yaml  # type: ignore

        data = yaml.safe_load(text)
    except ImportError:
        data = _minimal_yaml_load(text)

    if not isinstance(data, dict):
        raise ValueError("release package root must be a mapping/object")
    return data


def _minimal_yaml_load(text: str) -> dict[str, Any]:
    """Minimal indented YAML loader for release packages (no anchors/tags)."""
    # Strip comments carefully (not inside quotes)
    lines: list[str] = []
    for raw in text.splitlines():
        s = raw.rstrip()
        if not s.strip() or s.lstrip().startswith("#"):
            continue
        # drop end-of-line comment when not quoted
        if "#" in s:
            in_q = False
            out = []
            for ch in s:
                if ch in "\"'":
                    in_q = not in_q
                if ch == "#" and not in_q:
                    break
                out.append(ch)
            s = "".join(out).rstrip()
        if s:
            lines.append(s)

    root: dict[str, Any] = {}
    stack: list[tuple[int, Any]] = [(-1, root)]

    def _parse_scalar(val: str) -> Any:
        v = val.strip()
        if v in ("", "~", "null", "Null", "NULL"):
            return None
        if v in ("true", "True", "TRUE"):
            return True
        if v in ("false", "False", "FALSE"):
            return False
        if (v.startswith('"') and v.endswith('"')) or (
            v.startswith("'") and v.endswith("'")
        ):
            return v[1:-1]
        return v

    i = 0
    while i < len(lines):
        line = lines[i]
        indent = len(line) - len(line.lstrip(" "))
        body = line.lstrip(" ")

        while len(stack) > 1 and indent <= stack[-1][0]:
            stack.pop()
        parent = stack[-1][1]

        if body.startswith("- "):
            item_body = body[2:].strip()
            if not isinstance(parent, list):
                raise ValueError(f"list item without list parent: {line}")
            if ":" in item_body and not item_body.startswith("{"):
                # mapping list item: "- key: val" possibly multi-line
                key, _, rest = item_body.partition(":")
                key = key.strip()
                rest = rest.strip()
                obj: dict[str, Any] = {}
                if rest:
                    obj[key] = _parse_scalar(rest)
                else:
                    # nested under this key on following lines
                    obj[key] = None
                    # look ahead: if next is more indented mapping under item
                    # handle empty value as start of nested map
                    nested: dict[str, Any] = {}
                    obj[key] = nested if False else None  # placeholder
                parent.append(obj)
                if not rest:
                    # empty after colon → nested mapping on next lines
                    nested_map: dict[str, Any] = {}
                    obj[key] = nested_map
                    stack.append((indent, obj))
                    # also push nested if we see deeper indent with key:
                    # simpler path: treat multi-key list items as flat on same indent+2
                    stack.append((indent, nested_map))
                else:
                    stack.append((indent, obj))
            elif item_body == "":
                new_list: list[Any] = []
                parent.append(new_list)
                stack.append((indent, new_list))
            else:
                parent.append(_parse_scalar(item_body))
            i += 1
            continue

        if ":" in body:
            key, _, rest = body.partition(":")
            key = key.strip()
            rest = rest.strip()
            if not isinstance(parent, dict):
                raise ValueError(f"key under non-mapping: {line}")
            if rest == "":
                # peek next line for list or map
                if i + 1 < len(lines):
                    nindent = len(lines[i + 1]) - len(lines[i + 1].lstrip(" "))
                    nbody = lines[i + 1].lstrip(" ")
                    if nindent > indent and nbody.startswith("- "):
                        lst: list[Any] = []
                        parent[key] = lst
                        stack.append((indent, lst))
                    elif nindent > indent:
                        child: dict[str, Any] = {}
                        parent[key] = child
                        stack.append((indent, child))
                    else:
                        parent[key] = None
                else:
                    parent[key] = None
            else:
                parent[key] = _parse_scalar(rest)
            i += 1
            continue

        raise ValueError(f"unparseable YAML line: {line}")

    return root


def validate_release_package(
    data: dict[str, Any],
    *,
    check_paths: bool = False,
    repo_root: Path | None = None,
) -> ReleaseCheckResult:
    """Validate in-memory release package dict. Does not reimplement schema in tests."""
    msgs: list[str] = []

    def fail(m: str) -> None:
        msgs.append(f"release-package: FAIL — {m}")

    def note(m: str) -> None:
        msgs.append(f"release-package: {m}")

    ver = data.get("schema_version")
    if ver is None:
        fail("missing schema_version")
    elif str(ver) != _SCHEMA_VERSION:
        fail(f"schema_version must be '{_SCHEMA_VERSION}', got {ver!r}")

    chapter_id = data.get("chapter_id")
    if not isinstance(chapter_id, str) or not chapter_id.strip():
        fail("chapter_id must be a non-empty string")

    rev = data.get("content_revision")
    if not is_valid_content_revision(rev if isinstance(rev, str) else None):
        fail(
            "content_revision must match git:<7–40 hex> or sha256:<64 hex> "
            f"(got {rev!r})"
        )
    else:
        note(f"content_revision={rev}")

    scope = data.get("channel_scope")
    if not isinstance(scope, str) or scope not in _VALID_SCOPE:
        fail(f"channel_scope must be one of {sorted(_VALID_SCOPE)} (got {scope!r})")
        scope = None
    else:
        note(f"channel_scope={scope}")

    channels = data.get("channels")
    if not isinstance(channels, dict):
        fail("channels must be a mapping with print and/or web")
        channels = {}

    if scope in ("print", "both"):
        if "print" not in channels:
            fail(f"channel_scope={scope} requires channels.print")
        else:
            st = channels["print"]
            if not isinstance(st, dict) or "status" not in st:
                fail("channels.print.status is required")
            else:
                status = st.get("status")
                if status not in _PRINT_STATUSES:
                    fail(
                        f"channels.print.status invalid {status!r}; "
                        f"allowed {sorted(_PRINT_STATUSES)}"
                    )

    if scope in ("web", "both"):
        if "web" not in channels:
            fail(f"channel_scope={scope} requires channels.web")
        else:
            st = channels["web"]
            if not isinstance(st, dict) or "status" not in st:
                fail("channels.web.status is required")
            else:
                status = st.get("status")
                if status not in _WEB_STATUSES:
                    fail(
                        f"channels.web.status invalid {status!r}; "
                        f"allowed {sorted(_WEB_STATUSES)}"
                    )

    # Reject unknown channel keys
    for k in channels:
        if k not in ("print", "web"):
            fail(f"unknown channel key {k!r} (only print|web)")

    assets = data.get("assets", [])
    if assets is None:
        assets = []
    if not isinstance(assets, list):
        fail("assets must be a list")
    else:
        for i, item in enumerate(assets):
            if not isinstance(item, dict):
                fail(f"assets[{i}] must be a mapping")
                continue
            aid = item.get("id")
            if not isinstance(aid, str) or not aid.strip():
                fail(f"assets[{i}].id must be non-empty string")
            st = item.get("status")
            if st not in _ASSET_STATUSES:
                fail(
                    f"assets[{i}].status invalid {st!r}; "
                    f"allowed {sorted(_ASSET_STATUSES)}"
                )

    accept_paths = data.get("accept_paths", [])
    if accept_paths is None:
        accept_paths = []
    if not isinstance(accept_paths, list):
        fail("accept_paths must be a list of strings")
    else:
        for i, p in enumerate(accept_paths):
            if not isinstance(p, str) or not p.strip():
                fail(f"accept_paths[{i}] must be non-empty string")

    if check_paths and repo_root is not None:
        root = Path(repo_root)
        for i, p in enumerate(accept_paths if isinstance(accept_paths, list) else []):
            if isinstance(p, str) and p.strip():
                fp = root / p if not Path(p).is_absolute() else Path(p)
                if not fp.is_file():
                    fail(f"accept_paths[{i}] not found: {p}")
        if isinstance(assets, list):
            for i, item in enumerate(assets):
                if not isinstance(item, dict):
                    continue
                ap = item.get("path")
                if isinstance(ap, str) and ap.strip():
                    fp = root / ap if not Path(ap).is_absolute() else Path(ap)
                    if not fp.exists():
                        fail(f"assets[{i}].path not found: {ap}")

    for key in ("design_clean", "visual_clean"):
        val = data.get(key, None)
        if val is not None and not isinstance(val, (str, bool)):
            fail(f"{key} must be path string, bool, or null")

    ok = not any(m.startswith("release-package: FAIL") for m in msgs)
    if ok:
        note("OK")
    return ReleaseCheckResult(ok=ok, messages=msgs, data=data)


def validate_release_file(
    path: Path,
    *,
    check_paths: bool = False,
    repo_root: Path | None = None,
) -> ReleaseCheckResult:
    try:
        data = load_release_package(path)
    except (OSError, ValueError) as e:
        return ReleaseCheckResult(ok=False, messages=[f"release-package: FAIL — {e}"])
    return validate_release_package(
        data, check_paths=check_paths, repo_root=repo_root
    )
