#!/usr/bin/env python3
"""Assert Form Lab skill establishment (lab-learning), not craft PDFs.

Drives real shipped paths under toolset/skill-pack, studio, orchestration templates,
wave-c harvest, and governance files. Exit 0 only if acceptance criteria hold.

Usage (from repo root):
  python3 scripts/form-lab/verify-form-lab-skill-establishment.py
"""
from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]


def fail(msg: str) -> None:
    print(f"FAIL: {msg}", file=sys.stderr)
    raise SystemExit(1)


def ok(msg: str) -> None:
    print(f"OK: {msg}")


def read(p: Path) -> str:
    if not p.is_file():
        fail(f"missing file {p.relative_to(ROOT)}")
    return p.read_text(encoding="utf-8")


def must_match(path: Path, pattern: str, flags: int = re.I) -> None:
    text = read(path)
    if not re.search(pattern, text, flags):
        fail(f"{path.relative_to(ROOT)} missing /{pattern}/")


def main() -> None:
    # --- 1) Skill SoT + progressive disclosure ---
    skill_sot = ROOT / "toolset/skill-pack/form-lab-orchestrator"
    skill_md = skill_sot / "SKILL.md"
    text = read(skill_md)
    if "lab-learning" not in text.lower() and "lab-learning" not in text:
        # casefold for safety
        if "lab-learning" not in text.casefold():
            fail("SKILL.md must state lab-learning")
    if not re.search(r"not.*default production|not production default", text, re.I):
        fail("SKILL.md must disclaim production default")
    if not re.search(r"autodrive-to-complete|L2 autodrive", text, re.I):
        fail("SKILL.md must default to L2 autodrive-to-complete")
    if not re.search(r"best-of|fusion", text, re.I):
        fail("SKILL.md must require Pass S best-of fusion")
    if not re.search(r"do not stop after L0|not stop after L0", text, re.I):
        fail("SKILL.md must forbid default stop after L0 handoff")
    for ref in ("boundaries", "phases", "roles", "craft", "harvest", "resume", "autonomy"):
        rp = skill_sot / "references" / f"{ref}.md"
        if not rp.is_file():
            fail(f"missing reference {rp.relative_to(ROOT)}")
    ok("skill SoT + references")

    # Discovery: .github and .grok resolve to skill-pack (symlink preferred)
    for link in (
        ROOT / ".github/skills/form-lab-orchestrator",
        ROOT / ".grok/skills/form-lab-orchestrator",
    ):
        if not link.exists():
            fail(f"missing discovery path {link.relative_to(ROOT)}")
        resolved = link.resolve()
        if resolved != skill_sot.resolve():
            # allow nested SKILL.md if copy pattern, but body must exist
            if not (link / "SKILL.md").is_file() and not (resolved / "SKILL.md").is_file():
                fail(f"{link} does not resolve to skill body")
        ok(f"discovery {link.relative_to(ROOT)} -> {resolved.relative_to(ROOT)}")

    prov = read(ROOT / "toolset/skill-pack/provision.sh")
    if "form-lab-orchestrator" not in prov:
        fail("provision.sh must list form-lab-orchestrator")
    ok("provision.sh lists form-lab-orchestrator")

    # --- 2) Studio situation 9 ---
    situations = read(ROOT / "toolset/skill-pack/studio/references/situations.md")
    if "## 9 — Form Lab" not in situations and "situation 9" not in situations.casefold():
        if not re.search(r"## 9\s+.*Form Lab", situations):
            fail("studio situations.md missing Form Lab situation 9")
    if "form-lab-orchestrator" not in situations:
        fail("situations.md must route to form-lab-orchestrator")
    if not re.search(r"do \*\*not\*\* run|must not|handoff only|never runs T", situations, re.I):
        # also accept Studio must not craft language
        if "Execute the full medium-stack craft" not in situations:
            fail("situations.md must forbid studio medium-stack craft")
    routes = read(ROOT / "toolset/skill-pack/studio/references/routes.md")
    if "form-lab-orchestrator" not in routes:
        fail("routes.md missing form-lab-orchestrator")
    studio = read(ROOT / "toolset/skill-pack/studio/SKILL.md")
    if "form-lab-orchestrator" not in studio:
        fail("studio SKILL.md missing form-lab-orchestrator")
    if not re.search(r"situation \*\*9\*\*|situation 9", studio):
        fail("studio SKILL.md missing situation 9")
    ok("studio situation 9 + handoff (no craft)")

    # --- 3) Harvest templates + gate docs ---
    templates = ROOT / "toolset/orchestration/form-lab/_templates"
    for name in (
        "form-vocabulary.md",
        "production-bridge.md",
        "human-s-rank.md",
        "sr-log.md",
        "board.md",
        "kickoff.md",
    ):
        if not (templates / name).is_file():
            fail(f"missing template {name}")
    board_t = read(templates / "board.md")
    if not re.search(r"required for COMPLETE|harvest", board_t, re.I):
        fail("board template must require harvest for COMPLETE")
    readme = read(ROOT / "toolset/orchestration/form-lab/README.md")
    if not re.search(r"PDF/PNG alone|required for COMPLETE|lab-learning", readme, re.I):
        fail("form-lab README must state harvest gate / lab-learning")
    for path in (
        ROOT / "devtracks/chapter-form-lab/spec.md",
        ROOT / "devtracks/chapter-form-lab/plan.md",
    ):
        t = read(path)
        if "form-lab-orchestrator" not in t:
            fail(f"{path.name} missing skill pointer")
        if not re.search(r"harvest", t, re.I):
            fail(f"{path.name} missing harvest gate")
    ok("harvest templates + gate docs")

    # --- 4) Wave-c harvest content (not empty headers) ---
    harvest = ROOT / "toolset/orchestration/form-lab/portfolio-2026-08-c/harvest"
    fv = read(harvest / "form-vocabulary.md")
    pb = read(harvest / "production-bridge.md")
    for label, body in (("form-vocabulary", fv), ("production-bridge", pb)):
        if len(body) < 800:
            fail(f"{label} too short ({len(body)} chars) — empty boilerplate?")
        if not re.search(r"gicht|schlaganfall|melanom|anaphylaxie", body, re.I):
            fail(f"{label} must cite concrete labs")
    if not re.search(r"Job class|Default carrier", fv + pb, re.I):
        fail("harvest must include job→carrier / job class tables")
    if not re.search(r"Anti-pattern|do-not|omit", pb, re.I):
        fail("production-bridge must include anti-patterns")
    if "SR FAIL" not in pb and "Semantic Read" not in pb:
        fail("production-bridge should mention SR / FAIL demotions")
    pboard = read(ROOT / "toolset/orchestration/form-lab/portfolio-2026-08-c/board.md")
    if not re.search(r"harvest.*done|harvest:\s*\*\*done\*\*", pboard, re.I):
        fail("portfolio board must note harvest done")
    if not re.search(r"waived|human_s_rank", pboard, re.I):
        fail("portfolio board must note Human S-rank waived or signed")
    ok("wave-c portfolio harvest content")

    # --- 5) Governance ---
    for path in (
        ROOT / "AGENTS.md",
        ROOT / "CLAUDE.md",
        ROOT / "docs/KNOWLEDGE-MAP.md",
    ):
        t = read(path)
        if "form-lab-orchestrator" not in t:
            fail(f"{path.relative_to(ROOT)} missing form-lab-orchestrator")
        if not re.search(r"not.*default|lab-learning|not production default", t, re.I):
            fail(f"{path.relative_to(ROOT)} must say not production default / lab-learning")
    ok("governance pointers")

    print("PASS: form-lab skill establishment (lab-learning, harvest gate, studio 9, wave-c harvest)")


if __name__ == "__main__":
    main()
