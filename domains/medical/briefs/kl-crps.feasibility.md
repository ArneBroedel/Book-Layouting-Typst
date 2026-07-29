# Feasibility note — kl-crps

- **chapter_id:** V-3-crps-sudeck / `kl-crps`
- **brief_path:** `domains/medical/briefs/kl-crps.brief.md`
- **catalog_version:** 0.1.0 (advisory)
- **bookkit_version:** monorepo packages
- **creative_first:** true
- **author:** tech role (studio L2)
- **date:** 2026-07-30
- **accept_path:** `domains/medical/briefs/kl-crps.accept.md`
- **graphics_decision_path:** `domains/medical/briefs/kl-crps.graphics.md`

## Sections

| brief_section_id | status | graphic_mode | form_id / pattern | notes |
|---|---|---|---|---|
| S0 danger | mapped | none | callout danger | two failure modes in lead |
| S1 Big Picture | mapped | none | prose + key-concept | HP job boundary |
| S2 §1–2 enabling/mech | mapped | none | bullets + prose | no anatomy art |
| S3 U-cues | custom | **code** | `cues-crps` | free vision DRIFT → code board |
| S4 FA / Verdacht | mapped | none | lists | for/against/NM |
| S4 U-mimic | custom | **code** | `mimic-crps` | free vision provenance |
| S5 U-urgency+scope | custom | **code** | `us-crps` | multi-T1 stack |
| S6 Fall | mapped | none | clinical-case | open Qs |
| DDx | custom | **code** | `ddx-crps` | discrimination table |
| Quellen | mapped | none | numbered list | C copy-through |

## Graphics

- **realize_path:** recreate (code) for ambitious units
- [x] free vision done for mimic + cues
- [x] Graphics Decision Note linked
- [x] code winners preferred over DRIFT free PNGs

## Catalog gaps to file

- Optional later: reusable `kl-regional-cue-board` form id (not blocking)

## Tools planned for compose

- [x] bookkit / bookkit-didactics
- [ ] CeTZ / Fletcher
- [x] Custom module `kl-wave6/crps.typ`
- [ ] Image assets as claim carriers
- [x] Spike already green: `dist/spikes/graphics/kl-crps/recreate.pdf`

## Ready for Media Accept?

**yes** — Accept written exploration 2026-07-30.

## Compose output

- `toolset/compose/pilots/kl-crps/chapter.typ`
- PDF: `dist/pilots/kl-crps/chapter.pdf`

## Polish (Sofortmaßnahmen 2026-07-30)

| id | change |
|---|---|
| E1 | No manual numbers in headings; L1 counter aligned to decorative 3 |
| E2 | No process meta banner; „Überblick“ instead of Big Picture |
| E3 | Gefahr once (opener); NM chips only in mimic; DDx title once |
| E4 | pagebreak before urgency + DDx; non-breakable tier stack / DDx table |
| P4 | accept-gate: exploration vs production messages; Accept + template updated |
