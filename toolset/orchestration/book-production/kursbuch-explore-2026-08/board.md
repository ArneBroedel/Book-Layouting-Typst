# Book production board

```yaml
book_id: kursbuch-explore-2026-08
last_updated: 2026-08-01T14:30
phase_book: P6_complete  # portfolio idle; P7 assembly deferred   # P0 done; P1 design SoT = monorepo bookkit n/a rework; content exploration
autonomy: L2
brief_class_default: exploration
print_target: screen
blocked: false
block_reason: ""
devtrack: devtracks/multi-chapter-explore-layout/
portfolio: devtracks/multi-chapter-explore-layout/portfolio.md
```

## Banner

**Exploration portfolio** — not production. Agent-only Visual CLEAN (D4). Assembly deferred.

## Book-level phases

| phase | status | notes |
|---|---|---|
| P0 Kickoff | **done** | 2026-08-01 |
| P1 Design SoT | **done** | use monorepo bookkit/fonts — no new theme |
| P2 Content gates | **n/a** | exploration; no H1 freeze required |
| P3–P6 per chapter | **done** | N=10 exploration pilots complete (agent-only H-Explore D4) |
| P7 Assembly | **deferred** | D8 |
| P8 Validate | per pilot | bookkit validate exploration |
| P9 Visual QA | per pilot | Visual CLEAN before Accept |
| P10 Prepress | **n/a** | |
| P11 Proof/Imprimatur | **n/a** | |

## Chapters

| chapter_id | priority | content | brief | form_specs | graphics | accept | compose | pdf | next | notes |
|---|---|---|---|---|---|---|---|---|---|---|
| kl-crps-2026-07-31 | 1 | review | done | done | units-done | accepted | done | `dist/pilots/kl-crps-2026-07-31/chapter.pdf` | — | Baseline **link only** |
| kl-gicht-2026-08-01 | 2 | review | done | done | units-done | accepted | done | `dist/pilots/kl-gicht-2026-08-01/chapter.pdf` | — | W0; **revise: code hot-joint** (hybrid demoted) |
| kl-kompartment-2026-08-01 | 3 | review | done | done | units-done | accepted | done | `dist/pilots/kl-kompartment-2026-08-01/chapter.pdf` | — | **revise: 2×2 criteria**; quieter |
| kl-le-2026-08-01 | 4 | review | done | done | units-done | accepted | done | `dist/pilots/kl-le-2026-08-01/chapter.pdf` | — | multi-T1; Wells=SCOPE |
| kl-stroke-2026-08-01 | 5 | review | done | done | units-done | accepted | done | `dist/pilots/kl-stroke-2026-08-01/chapter.pdf` | — | FAST densified code |
| kl-mi-2026-08-01 | 6 | review | done | done | units-done | accepted | done | `dist/pilots/kl-mi-2026-08-01/chapter.pdf` | — | nested multi-T1 |
| kl-osteo-2026-08-01 | 7 | review | done | done | units-done | accepted | done | `dist/pilots/kl-osteo-2026-08-01/chapter.pdf` | — | quieter L2–L4 |
| iii2-bls-aed-2026-08-01 | 8 | review | done | done | units-done | accepted | done | `dist/pilots/iii2-bls-aed-2026-08-01/chapter.pdf` | — | notfall-karte chrome |
| iv2-ruecken-2026-08-01 | 9 | review | done | done | units-done | accepted | done | `dist/pilots/iv2-ruecken-2026-08-01/chapter.pdf` | — | **revise: bands + flow page**; 3pp |
| ii1-drisc-2026-08-01 | 10 | review | done | done | units-done | accepted | done | `dist/pilots/ii1-drisc-2026-08-01/chapter.pdf` | — | **revise: A/B/C cards + Pflichtsequenz** |

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
| kl-crps-2026-07-31 | multi | see briefs `kl-crps-2026-07-31*` | demoted free | FAIL→code | code | code | pilots/kl-crps-2026-07-31 |
| kl-gicht-2026-08-01 | U-urgency | `…-urgency.form-spec.md` | n/a | n/a | code stack | code | pilots/kl-gicht-2026-08-01 |
| kl-gicht-2026-08-01 | U-mimic | `…-mimic.form-spec.md` | n/a | n/a | code map | code | same |
| kl-gicht-2026-08-01 | U-hot-joint | `…-hot-joint.form-spec.md` | free-01 | PASS (+posture DRIFT) | hybrid | hybrid | assets + pilot |
| kl-kompartment-2026-08-01 | U-urgency | `…-urgency.form-spec.md` | n/a | n/a | code stack | code | pilots/kl-kompartment-2026-08-01 |
| kl-kompartment-2026-08-01 | U-mimic | `…-mimic.form-spec.md` | n/a | n/a | code map | code | same |
| kl-kompartment-2026-08-01 | U-criteria | `…-criteria.form-spec.md` | skip free | n/a | code panel | code | same |
| kl-osteo-2026-08-01 | U-urgency | `…-urgency.form-spec.md` | n/a | n/a | code stack quieter | code | pilots/kl-osteo-2026-08-01 |
| kl-osteo-2026-08-01 | U-mimic | `…-mimic.form-spec.md` | n/a | n/a | code 3-row | code | same |
| kl-osteo-2026-08-01 | U-criteria | `…-criteria.form-spec.md` | n/a | n/a | quiet code panel | code | same |
| iii2-bls-aed-2026-08-01 | U-protocol-bls | `…-protocol.form-spec.md` | n/a | n/a | code protocol | code | pilots/iii2-bls-aed-2026-08-01 |
| iv2-ruecken-2026-08-01 | U-flow | `…-flow.form-spec.md` | n/a | n/a | code vertical flow | code | pilots/iv2-ruecken-2026-08-01 |
| ii1-drisc-2026-08-01 | U-pflichtsequenz | `…-pflicht.form-spec.md` | n/a | n/a | code teal OS | code | pilots/ii1-drisc-2026-08-01 |

## Open Human gates

| gate | chapter/book | waiting_on | since |
|---|---|---|---|
| — | — | none (agent-only H-Explore D4) | |

## Rollback watchlist

| issue | suggested_return_phase | chapter/unit |
|---|---|---|
| free FAIL / pretty FAIL | demote simple alt; no blob | any ambition unit |
| squish layout | re-space; page count not KPI | compose |
