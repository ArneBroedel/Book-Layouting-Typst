"""Soft body similarity — warn only by default (no hard-fail)."""

from __future__ import annotations

import re
from dataclasses import dataclass, field

from .claims import normalize_text


@dataclass
class BodyResult:
    ok: bool  # True unless hard_fail requested and ratio extreme
    warn: bool = False
    messages: list[str] = field(default_factory=list)
    ratio: float | None = None


def _body_chars(text: str) -> int:
    # rough content size after normalization
    return len(normalize_text(text))


def _strip_typ_chrome(typ_source: str) -> str:
    """Drop import/set/show lines for a crude body estimate."""
    lines = []
    for line in typ_source.splitlines():
        s = line.strip()
        if s.startswith("#import") or s.startswith("#set ") or s.startswith("#show"):
            continue
        lines.append(line)
    return "\n".join(lines)


def check_body(
    content: str | None,
    typ_source: str,
    *,
    low_ratio: float = 0.15,
    high_ratio: float = 8.0,
    hard_fail: bool = False,
) -> BodyResult:
    """
    Compare content vs .typ body length ratio.

    Extreme ratio → warn (default) or fail if hard_fail=True.
    """
    if content is None:
        return BodyResult(ok=True, messages=["body soft: skipped (no content)"])

    c_len = _body_chars(content)
    t_len = _body_chars(_strip_typ_chrome(typ_source))
    if c_len == 0:
        return BodyResult(ok=True, messages=["body soft: empty content — skip"], ratio=None)

    ratio = t_len / c_len if c_len else None
    messages = [f"body soft: typ/content char ratio ≈ {ratio:.2f} (typ={t_len}, content={c_len})"]

    extreme = ratio is not None and (ratio < low_ratio or ratio > high_ratio)
    if extreme:
        msg = (
            f"body soft: extreme ratio {ratio:.2f} "
            f"(expected roughly {low_ratio}–{high_ratio})"
        )
        if hard_fail:
            return BodyResult(ok=False, warn=False, messages=[msg], ratio=ratio)
        return BodyResult(ok=True, warn=True, messages=messages + [msg + " — WARN only"], ratio=ratio)

    return BodyResult(ok=True, warn=False, messages=messages, ratio=ratio)
