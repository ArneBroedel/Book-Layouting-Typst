"""Strict claim check: content MD critical claims must appear in .typ (normalized)."""

from __future__ import annotations

import re
import unicodedata
from dataclasses import dataclass, field
from pathlib import Path

# Section headers that introduce critical claims (optional suffix, e.g. "(Audit)")
_CLAIMS_HEADER = re.compile(
    r"^#{1,3}\s+(Critical Claims|Kritische Claims|Claims|Kritische Behauptungen)"
    r"(?:\s|\(|$)",
    re.IGNORECASE | re.MULTILINE,
)
_NEXT_HEADER = re.compile(r"^#{1,3}\s+\S", re.MULTILINE)
_BULLET = re.compile(r"^\s*[-*+]\s+(.+)$")
_NUMBERED = re.compile(r"^\s*\d+[.)]\s+(.+)$")
# Markdown table data row: | # | Claim text | ... |
_TABLE_ROW = re.compile(r"^\s*\|(.+)\|\s*$")


@dataclass
class ClaimsResult:
    ok: bool
    skipped: bool = False
    claims: list[str] = field(default_factory=list)
    missing: list[str] = field(default_factory=list)
    messages: list[str] = field(default_factory=list)


def normalize_text(s: str) -> str:
    """Normalize for strict-but-practical claim matching."""
    s = unicodedata.normalize("NFKC", s)
    s = s.replace("\u00a0", " ")
    # Typst/markdown markup noise often around claims (*emph*, #calls, …)
    s = re.sub(r"[#*_`\\\[\]\{\}]", " ", s)
    s = s.lower()
    s = re.sub(r"\s+", " ", s).strip()
    # Collapse spaces created around markup before punctuation (e.g. "sofort ,")
    s = re.sub(r"\s+([,.;:!?])", r"\1", s)
    # strip trailing punctuation
    s = re.sub(r"[\s\.\,\;\:\!\?]+$", "", s)
    return s


def extract_claims_from_content(content: str) -> list[str]:
    """Extract bullet/numbered claims under a Critical Claims section."""
    m = _CLAIMS_HEADER.search(content)
    if not m:
        return []
    start = m.end()
    rest = content[start:]
    m_next = _NEXT_HEADER.search(rest)
    section = rest[: m_next.start()] if m_next else rest

    claims: list[str] = []
    for line in section.splitlines():
        b = _BULLET.match(line) or _NUMBERED.match(line)
        if b:
            claim = b.group(1).strip()
            # strip markdown bold/italic wrappers
            claim = re.sub(r"^\*\*(.+)\*\*$", r"\1", claim)
            claim = re.sub(r"^\*(.+)\*$", r"\1", claim)
            if claim:
                claims.append(claim)
            continue
        # Table rows: take claim column (2nd cell when first is numeric index)
        tm = _TABLE_ROW.match(line)
        if tm:
            cells = [c.strip() for c in tm.group(1).split("|")]
            if not cells:
                continue
            # skip separator |---|---| and header rows
            if all(re.fullmatch(r":?-+:?", c.replace(" ", "")) for c in cells if c):
                continue
            if cells[0].lower() in {"#", "nr", "n", "id"}:
                continue
            claim_cell = None
            if len(cells) >= 2 and re.fullmatch(r"\d+", cells[0]):
                claim_cell = cells[1]
            elif len(cells) >= 1 and cells[0] and not re.fullmatch(r"\d+", cells[0]):
                # single claim column table
                claim_cell = cells[0]
            if claim_cell:
                claim_cell = re.sub(r"\*\*(.+?)\*\*", r"\1", claim_cell)
                claim_cell = re.sub(r"\*(.+?)\*", r"\1", claim_cell)
                if claim_cell and claim_cell.lower() not in {"claim", "claim (prüfbar)", "behauptung"}:
                    claims.append(claim_cell)
    return claims


def check_claims(content: str | None, typ_source: str) -> ClaimsResult:
    """
    Strict: each claim (normalized) must appear as substring in normalized .typ.

    If content has no claims section → soft-pass (skip) with note.
    """
    if content is None:
        return ClaimsResult(
            ok=True,
            skipped=True,
            messages=["claims: skipped (no content path)"],
        )

    claims = extract_claims_from_content(content)
    if not claims:
        return ClaimsResult(
            ok=True,
            skipped=True,
            claims=[],
            messages=["claims: no Critical Claims section — soft-pass"],
        )

    hay = normalize_text(typ_source)
    missing: list[str] = []
    for c in claims:
        needle = normalize_text(c)
        if not needle:
            continue
        if needle not in hay:
            # try a condensed key-phrase: drop leading labels like "Claim:"
            alt = re.sub(r"^(claim|behauptung)\s*[:\-–]\s*", "", needle, flags=re.I)
            if alt and alt in hay:
                continue
            missing.append(c)

    if missing:
        return ClaimsResult(
            ok=False,
            skipped=False,
            claims=claims,
            missing=missing,
            messages=[
                f"claims strict: {len(missing)}/{len(claims)} missing in .typ",
                *[f"  missing: {m}" for m in missing],
            ],
        )

    return ClaimsResult(
        ok=True,
        skipped=False,
        claims=claims,
        missing=[],
        messages=[f"claims strict: all {len(claims)} claim(s) present in .typ"],
    )


def load_content(path: Path | str | None) -> str | None:
    if path is None:
        return None
    p = Path(path)
    if not p.is_file():
        raise FileNotFoundError(f"content not found: {p}")
    return p.read_text(encoding="utf-8")
