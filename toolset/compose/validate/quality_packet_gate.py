"""Soft quality-packet path gate (presence only).

Opt-in via ``--quality-packet PATH``. Checks that the packet file exists and
that path-like tokens listed in it resolve on disk. Does **not** certify
Design CLEAN, Visual CLEAN, or Media Accept quality.

Severity is soft: the check result may set ``ok=False`` when paths are missing;
the runner surfaces that as WARN and must not flip ``report.ok``.
"""

from __future__ import annotations

import re
from dataclasses import dataclass, field
from pathlib import Path

# Path-like extensions we treat as artifact references in freeform MD packets.
_PATH_EXTS = (
    ".png",
    ".pdf",
    ".md",
    ".jpg",
    ".jpeg",
    ".svg",
    ".yml",
    ".yaml",
    ".json",
)

# Tokens that look path-like but are status / noise, not files.
_NOISE_TOKENS = frozenset(
    {
        "clean",
        "pass",
        "fail",
        "n/a",
        "na",
        "required",
        "optional",
        "skip",
        "accepted",
        "gap",
        "missing",
        "partial",
        "blocked",
        "todo",
        "ready",
        "yes",
        "no",
        "true",
        "false",
        "path",
        "paths",
        "—",
        "-",
        "–",
        "...",
        "…",
    }
)

# Backtick-enclosed path candidates
_BACKTICK = re.compile(r"`([^`\n]+)`")
# Markdown links: [label](target)
_MD_LINK = re.compile(r"\[[^\]]*\]\(([^)\s]+)\)")
# Absolute POSIX paths ending in a known extension
_ABS_PATH = re.compile(
    r"(?<![`\w])(/[^\s|`\"'<>]+\.(?:"
    + "|".join(e.lstrip(".") for e in _PATH_EXTS)
    + r"))\b",
    re.IGNORECASE,
)
# Relative path-like tokens with known extensions (allow ./ ../ and subdirs)
_REL_PATH = re.compile(
    r"(?<![`\w/])((?:\.\.?/)?(?:[\w.-]+/)*[\w.-]+\.(?:"
    + "|".join(e.lstrip(".") for e in _PATH_EXTS)
    + r"))\b",
    re.IGNORECASE,
)
# Function-call-ish tokens to drop (foo(...))
_FUNC_CALL = re.compile(r"^[A-Za-z_]\w*\(.*\)$")
# Ellipsis-only
_ELLIPSIS_ONLY = re.compile(r"^\.{2,}$|^…+$")


@dataclass
class QualityPacketResult:
    """Presence-only result for a quality packet soft check.

    ``ok=False`` means missing packet and/or missing referenced paths.
    The runner maps this to WARN (never hard-fail / never report.ok=False).
    """

    ok: bool
    messages: list[str] = field(default_factory=list)
    paths_checked: list[str] = field(default_factory=list)
    missing: list[str] = field(default_factory=list)


def _is_noise(token: str) -> bool:
    t = token.strip().strip("\"'").rstrip(".,;")
    if not t:
        return True
    low = t.lower()
    if low in _NOISE_TOKENS:
        return True
    if _ELLIPSIS_ONLY.match(t):
        return True
    if _FUNC_CALL.match(t):
        return True
    # bare status words with trailing punctuation already stripped
    if low.rstrip("?") in _NOISE_TOKENS:
        return True
    return False


def _looks_like_path(token: str) -> bool:
    t = token.strip().strip("\"'")
    if not t or _is_noise(t):
        return False
    # URL schemes are not local paths
    if "://" in t:
        return False
    # anchors / fragments alone
    if t.startswith("#"):
        return False
    low = t.lower()
    if any(low.endswith(ext) for ext in _PATH_EXTS):
        return True
    # absolute without extension still accepted if absolute (rare packet refs)
    if t.startswith("/") and "/" in t[1:]:
        return True
    return False


def extract_path_tokens(text: str) -> list[str]:
    """Extract ordered unique path-like tokens from freeform quality-packet MD.

    Relative tokens that are suffixes of an already-found absolute token are
    dropped (avoids hyphen-split false positives inside absolute paths, e.g.
    ``…/Book-Layouting-Typst/…/p1.png`` also matching ``Layouting-Typst/…``).
    """
    found: list[str] = []
    seen: set[str] = set()

    def _add(raw: str) -> None:
        token = raw.strip().strip("\"'")
        # strip optional title from markdown link targets: path "title"
        if " " in token and not token.startswith("/"):
            # keep only first space-free segment if it looks like a path
            first = token.split()[0]
            if _looks_like_path(first):
                token = first
        if not _looks_like_path(token):
            return
        # Ellipsis / wildcard path prose is not resolvable as written
        if "…" in token or "..." in token or "*" in token:
            return
        if token in seen:
            return
        seen.add(token)
        found.append(token)

    for m in _BACKTICK.finditer(text):
        _add(m.group(1))
    for m in _MD_LINK.finditer(text):
        _add(m.group(1))
    for m in _ABS_PATH.finditer(text):
        _add(m.group(1))
    for m in _REL_PATH.finditer(text):
        _add(m.group(1))

    # Drop relative tokens that are path-suffixes of any absolute token.
    absolutes = [t for t in found if t.startswith("/")]
    if absolutes:
        pruned: list[str] = []
        for t in found:
            if not t.startswith("/") and any(
                a.endswith(t) or a.endswith("/" + t) for a in absolutes
            ):
                continue
            pruned.append(t)
        found = pruned

    return found


def resolve_path_token(
    token: str,
    *,
    packet_parent: Path,
    root: Path | None,
) -> Path | None:
    """Resolve a path token against packet parent, then optional root.

    Returns the first existing Path, or the preferred candidate (for reporting)
    when none exist — callers use ``.is_file()`` / ``.exists()``.
    """
    p = Path(token)
    candidates: list[Path] = []
    if p.is_absolute():
        candidates.append(p)
    else:
        candidates.append((packet_parent / p).resolve())
        if root is not None:
            candidates.append((Path(root) / p).resolve())

    for c in candidates:
        if c.exists():
            return c
    return candidates[0] if candidates else None


def check_quality_packet(
    path: Path | str | None,
    *,
    root: Path | str | None = None,
) -> QualityPacketResult:
    """
    Soft presence check for a Quality Packet markdown file.

    - Packet file must exist.
    - Path-like tokens extracted from the packet are resolved relative to the
      packet's parent directory, then optional ``root``.
    - Missing referenced paths → ``ok=False`` + ``quality-packet:`` messages.
    - Empty resolvable set (packet exists but no path tokens) → WARN-style
      ``ok=False`` with a "no resolvable paths" message.

    Never claims Design CLEAN, Visual CLEAN, or Media Accept certification.
    """
    if path is None:
        return QualityPacketResult(
            ok=False,
            messages=[
                "quality-packet: FAIL — no packet path provided "
                "(presence check only; does not certify Design CLEAN, "
                "Visual CLEAN, or Media Accept)"
            ],
        )

    packet = Path(path)
    root_path = Path(root).resolve() if root is not None else None

    if not packet.is_file():
        return QualityPacketResult(
            ok=False,
            messages=[
                f"quality-packet: packet file not found: {packet}",
                "quality-packet: presence only — does not certify Design CLEAN, "
                "Visual CLEAN, or Media Accept",
            ],
        )

    text = packet.read_text(encoding="utf-8")
    tokens = extract_path_tokens(text)
    parent = packet.parent.resolve()

    missing: list[str] = []
    checked: list[str] = []
    messages: list[str] = []

    if not tokens:
        return QualityPacketResult(
            ok=False,
            messages=[
                f"quality-packet: no resolvable paths in packet ({packet.name})",
                "quality-packet: presence only — does not certify Design CLEAN, "
                "Visual CLEAN, or Media Accept",
            ],
            paths_checked=[],
            missing=[],
        )

    for token in tokens:
        resolved = resolve_path_token(token, packet_parent=parent, root=root_path)
        checked.append(token)
        if resolved is None or not resolved.exists():
            missing.append(token)
            messages.append(f"quality-packet: missing path: {token}")

    if missing:
        messages.append(
            "quality-packet: presence only — does not certify Design CLEAN, "
            "Visual CLEAN, or Media Accept"
        )
        return QualityPacketResult(
            ok=False,
            messages=messages,
            paths_checked=checked,
            missing=missing,
        )

    return QualityPacketResult(
        ok=True,
        messages=[
            f"quality-packet: all {len(checked)} referenced path(s) exist "
            f"({packet.name})",
            "quality-packet: presence only — does not certify Design CLEAN, "
            "Visual CLEAN, or Media Accept",
        ],
        paths_checked=checked,
        missing=[],
    )
