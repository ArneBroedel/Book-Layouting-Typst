"""Production freeze gate: Human-signed freeze + content_revision pin match.

Smoke profile skips this gate. Domain-agnostic — no medical logic.
"""

from __future__ import annotations

import hashlib
import re
from dataclasses import dataclass, field
from pathlib import Path


@dataclass
class FreezeResult:
    ok: bool
    skipped: bool = False
    messages: list[str] = field(default_factory=list)


_REV_LINE = re.compile(
    r"^\s*content_revision\s*:\s*[\"']?([^\s\"'#]+)[\"']?",
    re.IGNORECASE | re.MULTILINE,
)
_REV_HEADER = re.compile(
    r"//\s*content_revision\s*:\s*(\S+)",
    re.IGNORECASE,
)
_STATUS_FROZEN = re.compile(
    r"content_status\s*:\s*frozen\b",
    re.IGNORECASE,
)
# Human sign-off: require a non-empty Human name field in freeze record
_HUMAN_NAME = re.compile(
    r"(?:\*\*)?Human name(?:\*\*)?\s*\|\s*([^\n|]+)",
    re.IGNORECASE,
)
_HUMAN_NAME_YAML = re.compile(
    r"^\s*human(?:_name|)\s*:\s*[\"']?([^\s\"'#]+)",
    re.IGNORECASE | re.MULTILINE,
)
_VALID_REV = re.compile(
    r"^(?:git:[0-9a-f]{7,40}|sha256:[0-9a-f]{64})$",
    re.IGNORECASE,
)

# Human checkpoint map (content-maturity / agentic-adaptations)
_NEXT_H1 = (
    "next_checkpoint: H1 Content Freeze — "
    "see domains/content-maturity/checkpoints.md"
)


def _fail(messages: list[str]) -> FreezeResult:
    """Production freeze failure always points at Human checkpoint H1."""
    out = list(messages)
    if _NEXT_H1 not in out:
        out.append(_NEXT_H1)
    return FreezeResult(ok=False, messages=out)


def parse_revision(text: str) -> str | None:
    """Extract content_revision from freeze MD or typ header comments."""
    m = _REV_LINE.search(text)
    if m:
        return m.group(1).strip()
    m = _REV_HEADER.search(text)
    if m:
        return m.group(1).strip()
    return None


def is_valid_revision(rev: str | None) -> bool:
    if not rev:
        return False
    return bool(_VALID_REV.match(rev.strip()))


def file_sha256_revision(path: Path) -> str:
    h = hashlib.sha256(path.read_bytes()).hexdigest()
    return f"sha256:{h}"


def _human_signed(text: str) -> bool:
    for rx in (_HUMAN_NAME, _HUMAN_NAME_YAML):
        m = rx.search(text)
        if m:
            name = m.group(1).strip()
            if name and name.lower() not in {"", "—", "-", "tbd", "todo", "agent"}:
                return True
    # Fallback: explicit prose
    if re.search(r"Human sign-off[^\n]*\n(?:.*\n)*?\|[^\n]*\|[^\n]+\|", text, re.I):
        # table row with non-empty second cell already handled; prose:
        pass
    if re.search(r"I authorize this revision", text, re.I):
        # still need a name somewhere
        if re.search(r"\*\*Human name\*\*\s*\|\s*\S+", text):
            return True
    return False


def check_freeze(
    *,
    profile: str,
    freeze_path: Path | str | None,
    typ_source: str,
    content_path: Path | str | None = None,
    expected_revision: str | None = None,
) -> FreezeResult:
    """
    profile smoke → skip.
    profile production → require freeze file, frozen status, human sign, valid rev,
    and match vs typ header and/or content bytes when sha256.
    """
    prof = (profile or "smoke").strip().lower()
    if prof == "smoke":
        return FreezeResult(
            ok=True,
            skipped=True,
            messages=["freeze-gate: skipped (--profile smoke)"],
        )
    if prof != "production":
        return FreezeResult(
            ok=False,
            messages=[f"freeze-gate: FAIL — unknown profile '{profile}' (use smoke|production)"],
        )

    if freeze_path is None:
        return _fail(
            [
                "freeze-gate: FAIL — production requires --freeze path "
                "(or use --profile smoke)"
            ]
        )

    p = Path(freeze_path)
    if not p.is_file():
        return _fail([f"freeze-gate: FAIL — freeze file not found: {p}"])

    text = p.read_text(encoding="utf-8")
    msgs: list[str] = []

    if not _STATUS_FROZEN.search(text):
        return _fail(["freeze-gate: FAIL — freeze record missing content_status: frozen"])

    if not _human_signed(text):
        return _fail(
            [
                "freeze-gate: FAIL — Human sign-off missing "
                "(table field 'Human name' must be non-empty; not agent-only)"
            ]
        )
    msgs.append("freeze-gate: Human sign-off present")

    rev = expected_revision or parse_revision(text)
    if not is_valid_revision(rev):
        return _fail(
            [
                f"freeze-gate: FAIL — invalid or missing content_revision "
                f"(need git:<short> or sha256:<64-hex>; got {rev!r})"
            ]
        )
    assert rev is not None
    rev_n = rev.strip()
    msgs.append(f"freeze-gate: freeze content_revision={rev_n}")

    typ_rev = parse_revision(typ_source)
    if typ_rev:
        if typ_rev.strip().lower() != rev_n.lower():
            return _fail(
                [
                    f"freeze-gate: FAIL — typ header revision {typ_rev!r} "
                    f"!= freeze {rev_n!r}"
                ]
            )
        msgs.append("freeze-gate: typ header pin matches freeze")
    else:
        return _fail(
            [
                "freeze-gate: FAIL — chapter .typ missing "
                "`// content_revision: git:…|sha256:…` header"
            ]
        )

    # If sha256 pin and content path given, verify bytes
    if rev_n.lower().startswith("sha256:") and content_path:
        cp = Path(content_path)
        if cp.is_file():
            actual = file_sha256_revision(cp)
            if actual.lower() != rev_n.lower():
                return _fail(
                    [
                        f"freeze-gate: FAIL — content sha256 mismatch "
                        f"(file {actual} != pin {rev_n})"
                    ]
                )
            msgs.append("freeze-gate: content file sha256 matches pin")
        else:
            msgs.append(f"freeze-gate: WARN — content path not found for sha256 check: {cp}")

    msgs.append("freeze-gate: production freeze OK")
    return FreezeResult(ok=True, messages=msgs)
