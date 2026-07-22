# Feasibility note

- **chapter_id:**
- **brief_path:**
- **catalog_version:** (preferred library pin from `toolset/form-catalog/VERSION` — advisory)
- **bookkit_version:**
- **creative_first:** true
- **author:** tech role
- **date:**

> Realize the Media **ideal**. Prefer stable catalog forms only when they are the best presentation.  
> Use `custom` / spike / full toolkit when the ideal needs it. Fallback only if ideal fails.  
> Policy: `toolset/compose/CREATIVE-COMPOSE.md`

## Sections

| brief_section_id | status (mapped\|custom\|approx\|gap\|experiment) | graphic_mode (code\|asset\|hybrid\|ab-test\|none) | form_id / pattern / asset / gap_name | notes (ideal → realization) |
|---|---|---|---|---|
| | | | | |

**Status guide**

| status | Meaning |
|---|---|
| `mapped` | Stable catalog form **is** the best shape for the ideal |
| `custom` | Ideal realized with diagram/custom layout/@preview/local helper (document pattern) |
| `approx` | Compromise vs. ideal — state what differs and why |
| `gap` | Reusable form still missing; implement custom now and/or file catalog gap |
| `experiment` | Spike first |

**Graphic mode** (visual units only — load `medical-graphics` when not `none`):

| graphic_mode | Meaning |
|---|---|
| `code` | Typst/bookkit/@preview only (default when it meets the ideal) |
| `asset` | Image file is main carrier (SVG preferred) |
| `hybrid` | Asset form + Typst labels/claims |
| `ab-test` | Code + asset/hybrid spikes; Media Accept picks winner |
| `none` | No graphic object (text/forms only) |

## Graphics (optional)

- **vision_path:** (Phase A free vision brief, e.g. `…/<slug>.vision.md`)
- **graphics_decision_path:** (e.g. `domains/medical/briefs/<slug>.graphics.md`)
- **realize_path:** recreate | refine | accept-asset | n/a
- [ ] no visual units beyond catalog forms
- [ ] free vision recommended / done for ambitious units (no structure-template attach)
- [ ] Graphics role invoked — Decision Note linked above

## Catalog gaps to file

- …

## Tools planned for compose

- [ ] bookkit / bookkit-didactics only
- [ ] CeTZ / Fletcher / other `@preview` (pin versions)
- [ ] Custom module / local `#let`
- [ ] Page-design / spreads
- [ ] Image assets / hybrid embed (`plate` / `wrap-figure` / figure + alt)

## Spike recommended?

- [ ] no
- [ ] yes — goal:
- [ ] ab-pair (code vs asset/hybrid) — unit(s):

## Fallback log (only if ideal cannot be achieved)

| section | ideal | fallback | why ideal failed |
|---|---|---|---|
| | | | |

## Ready for Media Accept?

- [ ] yes
- [ ] no — blockers:
