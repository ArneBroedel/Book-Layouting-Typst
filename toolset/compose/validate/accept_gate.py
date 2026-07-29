"""Accept-gate: require Media accept authorization OR EXCEPTION_NO_BRIEF.

Distinguishes *exploration* compose authorization from *production* compose
authorization so validate messages never claim production when only overall
accept / exploration pilot is present.
"""

from __future__ import annotations

import re
from dataclasses import dataclass, field
from pathlib import Path


@dataclass
class AcceptResult:
    ok: bool
    skipped: bool = False
    authorized: bool = False
    """True when any compose path is authorized (exploration or production)."""
    production_authorized: bool = False
    exploration_authorized: bool = False
    messages: list[str] = field(default_factory=list)


# ── Prose (line-level, unambiguous) ────────────────────────────

_PRODUCTION_YES_PROSE = re.compile(
    r"^Production\s+compose\s+authorized\s*:\s*yes\b",
    re.IGNORECASE | re.MULTILINE,
)
_PRODUCTION_NO_PROSE = re.compile(
    r"^Production\s+compose\s+authorized\s*:\s*no\b",
    re.IGNORECASE | re.MULTILINE,
)
_EXPLORATION_YES_PROSE = re.compile(
    r"^Exploration\s+compose\s+authorized\s*:\s*yes\b",
    re.IGNORECASE | re.MULTILINE,
)
_EXPLORATION_NO_PROSE = re.compile(
    r"^Exploration\s+compose\s+authorized\s*:\s*no\b",
    re.IGNORECASE | re.MULTILINE,
)

# ── Overall decision + brief class ─────────────────────────────

# Allow optional markdown bold around accept: | overall | accept | or | **accept** |
_OVERALL_ACCEPT = re.compile(
    r"\|\s*overall\s*\|\s*\*{0,2}\s*accept\b",
    re.IGNORECASE,
)
_BRIEF_CLASS_EXPLORATION = re.compile(
    r"brief_class:\s*\*{0,2}\s*exploration\b",
    re.IGNORECASE,
)


def _section_body(text: str, heading: str) -> str | None:
    """Return body of `## <heading>?` until the next `##` or EOF."""
    pat = re.compile(
        rf"^##\s*{re.escape(heading)}\??\s*\n(.*?)(?=^##\s|\Z)",
        re.IGNORECASE | re.MULTILINE | re.DOTALL,
    )
    m = pat.search(text)
    return m.group(1) if m else None


def _section_checked(text: str, heading: str, value: str) -> bool:
    """True if section has a checked checkbox for yes/no (first-level list)."""
    body = _section_body(text, heading)
    if body is None:
        return False
    # Double braces so f-string does not eat the quantifier {0,2}.
    cb = re.compile(
        rf"^-\s*\[\s*[xX✓]\s*\]\s*\**\s*{re.escape(value)}\b",
        re.IGNORECASE | re.MULTILINE,
    )
    return bool(cb.search(body))


def _production_yes(text: str) -> bool:
    return bool(
        _PRODUCTION_YES_PROSE.search(text)
        or _section_checked(text, "Production compose authorized", "yes")
    )


def _production_no(text: str) -> bool:
    return bool(
        _PRODUCTION_NO_PROSE.search(text)
        or _section_checked(text, "Production compose authorized", "no")
    )


def _exploration_yes(text: str) -> bool:
    return bool(
        _EXPLORATION_YES_PROSE.search(text)
        or _section_checked(text, "Exploration compose authorized", "yes")
    )


def _exploration_no(text: str) -> bool:
    return bool(
        _EXPLORATION_NO_PROSE.search(text)
        or _section_checked(text, "Exploration compose authorized", "no")
    )


def classify_authorization(text: str) -> tuple[bool, bool]:
    """
    Return (production_authorized, exploration_authorized).

    Rules:
    - Production yes (prose or Production-section checkbox) → production_authorized.
    - Production no without production yes → not production.
    - Exploration yes (prose or Exploration-section checkbox) → exploration
      (unless exploration no).
    - Legacy: overall | accept without production yes → exploration_authorized
      (pilot compose), never production_authorized.
    - brief_class: exploration reinforces exploration path with overall accept.
    """
    prod_yes = _production_yes(text)
    prod_no = _production_no(text)
    exp_yes = _exploration_yes(text)
    exp_no = _exploration_no(text)
    overall = bool(_OVERALL_ACCEPT.search(text))
    brief_expl = bool(_BRIEF_CLASS_EXPLORATION.search(text))

    production_authorized = bool(prod_yes)
    if prod_no and not prod_yes:
        production_authorized = False

    exploration_authorized = False
    if exp_no and not exp_yes:
        exploration_authorized = False
    elif exp_yes:
        exploration_authorized = True
    elif overall and not production_authorized:
        # overall accept authorizes exploration/pilot compose only
        if brief_expl or not prod_yes:
            exploration_authorized = True

    return production_authorized, exploration_authorized


def is_authorized(text: str) -> bool:
    """True if exploration or production compose is authorized."""
    prod, expl = classify_authorization(text)
    return prod or expl


def is_production_authorized(text: str) -> bool:
    prod, _ = classify_authorization(text)
    return prod


def check_accept(
    accept_path: Path | str | None,
    *,
    exception_no_brief: bool = False,
) -> AcceptResult:
    """
    Gate: accept file must authorize compose, OR --exception-no-brief (smoke only).

    Messages distinguish exploration vs production so audits are not misled.
    """
    if exception_no_brief:
        return AcceptResult(
            ok=True,
            skipped=False,
            authorized=True,
            production_authorized=False,
            exploration_authorized=False,
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
    prod, expl = classify_authorization(text)

    if prod:
        return AcceptResult(
            ok=True,
            authorized=True,
            production_authorized=True,
            exploration_authorized=expl,
            messages=[
                f"accept-gate: production compose authorized ({p.name})"
            ],
        )

    if expl:
        return AcceptResult(
            ok=True,
            authorized=True,
            production_authorized=False,
            exploration_authorized=True,
            messages=[
                f"accept-gate: exploration compose authorized ({p.name}) "
                "— not production (no freeze / production Accept)"
            ],
        )

    return AcceptResult(
        ok=False,
        authorized=False,
        production_authorized=False,
        exploration_authorized=False,
        messages=[
            f"accept-gate: FAIL — accept record does not authorize compose ({p})",
            "  need: 'Production compose authorized: yes' (or Production section [x] yes),",
            "  or 'Exploration compose authorized: yes' / overall accept for exploration pilots",
        ],
    )
