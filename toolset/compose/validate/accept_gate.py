"""Accept-gate: require Media accept authorization OR EXCEPTION_NO_BRIEF."""

from __future__ import annotations

import re
from dataclasses import dataclass, field
from pathlib import Path


@dataclass
class AcceptResult:
    ok: bool
    skipped: bool = False
    authorized: bool = False
    messages: list[str] = field(default_factory=list)


# Explicit prose form
_AUTHORIZED_PROSE = re.compile(
    r"Production\s+compose\s+authorized\s*:\s*yes\b",
    re.IGNORECASE,
)
# Checkbox under "Production compose authorized?" section
_CHECKBOX_YES = re.compile(
    r"-\s*\[\s*[xX✓]\s*\]\s*\*{0,2}\s*yes\b",
    re.IGNORECASE,
)
# Decision table: overall | accept
_OVERALL_ACCEPT = re.compile(
    r"\|\s*overall\s*\|\s*accept\b",
    re.IGNORECASE,
)
# Explicit no
_AUTHORIZED_NO = re.compile(
    r"Production\s+compose\s+authorized\s*:\s*no\b",
    re.IGNORECASE,
)
_CHECKBOX_NO_ONLY = re.compile(
    r"Production\s+compose\s+authorized\??\s*\n(?:.*\n)*?-\s*\[\s*[xX✓]\s*\]\s*\*{0,2}\s*no\b",
    re.IGNORECASE,
)


def is_authorized(text: str) -> bool:
    """Return True if accept record authorizes production compose."""
    if _AUTHORIZED_NO.search(text):
        # explicit no wins unless also explicit yes (malformed)
        if not _AUTHORIZED_PROSE.search(text) and not _CHECKBOX_YES.search(text):
            return False
    if _AUTHORIZED_PROSE.search(text):
        return True
    if _CHECKBOX_YES.search(text):
        return True
    if _OVERALL_ACCEPT.search(text):
        return True
    return False


def check_accept(
    accept_path: Path | str | None,
    *,
    exception_no_brief: bool = False,
) -> AcceptResult:
    """
    Gate: accept file must authorize compose, OR --exception-no-brief (smoke only).
    """
    if exception_no_brief:
        return AcceptResult(
            ok=True,
            skipped=False,
            authorized=True,
            messages=[
                "accept-gate: EXCEPTION_NO_BRIEF — authorized for smoke only "
                "(not a didactic quality bar)"
            ],
        )

    if accept_path is None:
        return AcceptResult(
            ok=False,
            messages=[
                "accept-gate: FAIL — no accept path and no --exception-no-brief"
            ],
        )

    p = Path(accept_path)
    if not p.is_file():
        return AcceptResult(
            ok=False,
            messages=[f"accept-gate: FAIL — accept file not found: {p}"],
        )

    text = p.read_text(encoding="utf-8")
    if is_authorized(text):
        return AcceptResult(
            ok=True,
            authorized=True,
            messages=[f"accept-gate: production compose authorized ({p.name})"],
        )

    return AcceptResult(
        ok=False,
        authorized=False,
        messages=[
            f"accept-gate: FAIL — accept record does not authorize compose ({p})",
            "  need checked yes under 'Production compose authorized?' "
            "or 'Production compose authorized: yes'",
        ],
    )
