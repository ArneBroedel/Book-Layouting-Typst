# Book production board

```yaml
book_id: d-risc-batch-2026-08
last_updated: 2026-08-01T17:50
phase_book: P6_complete  # portfolio idle; P7 assembly deferred
autonomy: L2
brief_class_default: exploration
print_target: screen
blocked: false
block_reason: ""
studio_route: toolset/orchestration/studio-routes/d-risc-batch-2026-08.md
content_root: /home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-08-d-risc-batch
```

## Banner

**Exploration batch complete (N=4)** — not production. Agent-only Visual CLEAN (D4).  
New slugs `*-batch-2026-08`; prior `*-2026-08-01` pilots are **reference only**.

**Post-hoc quality review (2026-08-01):** agent + Gemini → `evaluation/04-combined-visual-quality-review.md` · verdict **ship with should-fixes**.

**Revise wave applied (2026-08-01):** 8/8 should-fixes → `evaluation/05-revise-wave-2026-08-01.md` · recompiled pilots.

**Section rhythm harvest:** `section-rhythm.typ` + skill wiring → `evaluation/06-section-rhythm-system.md` · all 4 pilots.

## Book-level phases

| phase | status | notes |
|---|---|---|
| P0 Kickoff | **done** | 2026-08-01 via `/studio` |
| P1 Design SoT | **done** | monorepo bookkit/fonts |
| P2 Content gates | **n/a** | exploration; draft-s2 |
| P3–P6 per chapter | **done** | all 4 accepted + composed |
| P7 Assembly | **deferred** | screen pilots only |
| P8 Validate | per pilot | compile green (re-smoke 2026-08-01) |
| P9 Visual QA | **done** | Visual CLEAN agent + host sample |
| P10 Prepress | **n/a** | |
| P11 Proof/Imprimatur | **n/a** | |

## Chapters

| chapter_id | priority | content | brief | form_specs | graphics | accept | compose | pdf | next | notes |
|---|---|---|---|---|---|---|---|---|---|---|
| ii1-drisc-batch-2026-08 | 1 | draft | done | done | units-done | accepted | done | `dist/pilots/ii1-drisc-batch-2026-08/chapter.pdf` | — | Pure D-RISC **R→I→S→C** · 3 pp |
| iv2-ruecken-batch-2026-08 | 2 | draft | done | done | units-done | accepted | done | `dist/pilots/iv2-ruecken-batch-2026-08/chapter.pdf` | — | Dual CES+Infekt R4 · 2 pp |
| kl-gicht-batch-2026-08 | 3 | draft | done | done | units-done | accepted | done | `dist/pilots/kl-gicht-batch-2026-08/chapter.pdf` | — | septic doubt · 3 pp |
| kl-kompartment-batch-2026-08 | 4 | draft | done | done | units-done | accepted | done | `dist/pilots/kl-kompartment-batch-2026-08/chapter.pdf` | — | pulse ≠ rule-out · 3 pp |

### Cell vocabulary

- **content:** `missing` \| `draft` \| `review` \| `frozen` \| `blocked`
- **brief:** `missing` \| `draft` \| `done`
- **form_specs:** `none-needed` \| `missing` \| `partial` \| `done`
- **graphics:** `none-needed` \| `todo` \| `in-progress` \| `units-done`
- **accept:** `missing` \| `revise` \| `accepted`
- **compose:** `missing` \| `draft` \| `done`
- **pdf:** path or `missing`

## Visual units (detail)

| chapter_id | unit_id | form_spec | vision | claim_audit | realize | winner | spikes |
|---|---|---|---|---|---|---|---|
| ii1-drisc-batch-2026-08 | U-pflicht | done | n/a (code) | n/a | code R→I→S→C | code | `d-risc-batch-2026-08/pflichtsequenz.typ` |
| iv2-ruecken-batch-2026-08 | U-flow | done | n/a | n/a | code dual flow | code | `d-risc-batch-2026-08/entscheidungs-flow.typ` |
| kl-gicht-batch-2026-08 | U-urgency / U-mimic | done | n/a | n/a | code stack + mimic | code | `d-risc-batch-2026-08/gicht.typ` |
| kl-kompartment-batch-2026-08 | U-urgency / U-criteria | done | n/a | n/a | code + quiet 2×2 | code | `d-risc-batch-2026-08/kompartment.typ` |

## Open Human gates

| gate | chapter/book | waiting_on | since |
|---|---|---|---|
| optional H-Explore sample | portfolio | Human may open PNGs | 2026-08-01 |

## Rollback watchlist

| issue | suggested_return_phase | chapter/unit |
|---|---|---|
| free FAIL / pretty FAIL | demote simple alt; no blob | any ambition unit |
| squish layout | re-space; page count not KPI | compose |
| invent claims | re-pin from C notes only | any |
