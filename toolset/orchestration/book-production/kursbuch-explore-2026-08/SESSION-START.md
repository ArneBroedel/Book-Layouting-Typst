# Session start — `kursbuch-explore-2026-08`

**Purpose:** Guarantee the **regular production workflow** (orchestrator → specialist skills) in any new agent session — **not** a special one-off path invented in a prior chat.

---

## How to start (Human — new chat / new Grok / Claude / Copilot window)

Paste **exactly** (or via `/studio` → resume):

```text
Resume book-production board kursbuch-explore-2026-08 autonomy L2.

Rules (mandatory):
1. You are book-production-orchestrator for this board only.
2. Read in order: kickoff.md → board.md → route.md → run-log.md (tail) → this SESSION-START.md.
3. Load and FOLLOW the specialist skill SKILL.md for each step (do not improvise a private pipeline):
   - media-brief: domains/medical/skill/media-brief/SKILL.md (or .grok/skills/media-brief)
   - medical-graphics: domains/medical/skill/medical-graphics/SKILL.md + playbook/
   - compose-chapter: toolset/skill-pack/compose-chapter/SKILL.md
4. Per chapter use the track pipeline in:
   devtracks/_archive/multi-chapter-explore-layout/phase2-wave-execution.md
5. After every unit/chapter step: update board.md + append run-log.md + refresh route.md.
6. Quality floors (non-negotiable): Design CLEAN → Visual CLEAN before Accept;
   free vision focused + default no labels in raster; no blob demotion; anti-squish;
   exploration accept only; no production freeze claim.
7. Do NOT use prior chat memory or special “CRPS session hacks” as process.
   Board + skills are SoT. CRPS pilot is baseline link only (not content SoT for other chapters).
8. Agent-only H-Explore (D4): enforce Visual CLEAN yourself; stop only on H-Design, H-Gfx, caps, or hard error.
9. Next chapter is whatever board/route says.
10. Continue L2 until **portfolio idle** (all locked rows done) or hard stop — **never** pause after one chapter “for the Human chat” when rows remain todo.
11. Visual CLEAN includes **macro page scan-path** on full chapter PNGs (structure, indent consistency, calm flow) — not only unit spikes / validate green.
```

Optional status first:

```bash
./scripts/book-production-status.sh kursbuch-explore-2026-08
```

---

## What “regular workflow” means (no special intervention)

```text
board.route next_skill
    → load that skill’s SKILL.md procedure
    → produce the skill’s artifacts
    → log + advance board
    → re-read route for next skill
```

| Step | Skill file must be read | Typical artifacts |
|---|---|---|
| Content map + Brief + Form Spec + Contract | `media-brief` SKILL + templates | `domains/medical/briefs/<slug>.*` |
| Design Critic | media-brief design-critique template | `*.design-critique.md` CLEAN |
| Free vision / realize / Visual Critic | `medical-graphics` SKILL + playbook 00–11 | vision, audit, module, `*.visual-critique.md` |
| Accept | media-brief Accept template | `*.accept.md` exploration authorized |
| Compose + validate | `compose-chapter` + `./scripts/bookkit validate` | `toolset/compose/pilots/<slug>/`, `dist/pilots/<slug>/` |

**Forbidden shortcuts:**

- Skipping Design CLEAN / Visual CLEAN  
- Writing production `.typ` inside media-brief role  
- Inventing a “faster multi-chapter batch mode” that skips Form Spec for ambition units  
- Treating this SESSION-START as optional fluff  

---

## Skill discovery (Grok vs others)

| Agent | How skills load |
|---|---|
| **Grok** | Project skills via `.grok/skills/` symlinks → SoT bodies |
| **Claude / Copilot** | `.github/skills/` or skill-pack / domain paths in AGENTS.md / CLAUDE.md |
| **Any** | If skill not auto-loaded: **read the SKILL.md path above explicitly** before acting |

Orchestrator does **not** replace specialists — it only routes and logs.

---

## Proof that production path was used

After a session, Human can check:

1. `run-log.md` names **skill:** per step  
2. Artifacts match skill templates (brief, form-spec, design-contract, design-critique, graphics, visual-critique, accept)  
3. `./scripts/bookkit validate …` used for compose gate  
4. No lone `chapter.typ` without Accept packet  

---

## Resume phrases

```text
Resume book-production board kursbuch-explore-2026-08 autonomy L2
```

```text
/studio resume kursbuch-explore-2026-08
```

```text
book-production-orchestrator: status for kursbuch-explore-2026-08
```
