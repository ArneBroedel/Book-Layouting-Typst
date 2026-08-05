# Book production board — dogfood-sit2-2026-08-03

```yaml
book_id: dogfood-sit2-2026-08-03
last_updated: 2026-08-03
phase_book: P8
autonomy: L1
scope: single-chapter
brief_class_default: exploration
print_target: screen
playbook_pin: "Contract post-trilogy · dogfood R1"
production_bridge: "—"
blocked: false
block_reason: ""
```

> **Dogfood board** (collab-wire-dogfood). Resume index only — not a production Kursbuch drive.  
> **Board = resume index only.** `validate` OK ≠ Visual CLEAN ≠ Accept.

## Book-level phases

| phase | status | notes |
|---|---|---|
| P0 Kickoff | done | dogfood suite |
| P1 Design SoT | n/a | reuses existing briefs |
| P2 Content gates | n/a | exploration pins |
| P7 Assembly | done | existing pilots |
| P8 Validate | in_progress | scenario F + soft-gate decision |
| P9 Visual QA | partial | macro VC on re-boarded multi-unit |
| P10 Prepress | n/a | |
| P11 Proof/Imprimatur | n/a | |

## Chapters

| chapter_id | priority | content | brief | form_specs | graphics | design_clean | visual_clean | macro_vc | quality_packet | open_assets | accept | compose | pdf | next | notes |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| dogfood-A-skip | 3 | n/a | done | done | none-needed | n/a | n/a | n/a | ready | n/a | accepted | done | toolset/compose/pilots/ii1-drisc-batch-2026-08/ | idle | Scenario A code-only skip |
| dogfood-B-required | 2 | n/a | done | done | units-done | clean | clean | n/a | ready | done | accepted | done | toolset/compose/lab/form-lab-gicht-o/ | idle | Scenario B open-assets required path |
| dogfood-C-multi | 1 | n/a | done | done | units-done | clean | clean | clean | ready | n/a | accepted | done | dist/pilots/kl-gicht-2026-07-31/chapter.pdf | idle | Scenario C multi-unit + macro VC |
| dogfood-E-sample-2 | 4 | n/a | draft | partial | todo | missing | missing | todo | missing | n/a | missing | missing | missing | media-brief | Scenario E second row (stub only) |

### Cell vocabulary (chapter rollup)

- **design_clean / visual_clean:** `n/a` \| `missing` \| `partial` \| `clean` \| `blocked`
- **macro_vc:** `todo` \| `clean` \| `blocked` \| `n/a`
- **quality_packet:** `missing` \| `<path>` \| `ready`
- **open_assets:** `n/a` \| `needed` \| `partial` \| `done` \| `blocked`

### Chapter done (board-gated)

```text
design_clean   = clean | n/a
visual_clean   = clean where graphics units exist (else n/a)
macro_vc       = clean | n/a
quality_packet = ready
accept         = accepted
compose        = done
pdf            = path present
validate OK    → necessary but NOT sufficient alone
```

## Visual units (detail)

| chapter_id | unit_id | form_spec | design_clean | vision | claim_audit | needs_open_assets | open_assets | manifest_path | realize | visual_clean | winner | spikes |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| dogfood-A-skip | U-pflicht | domains/medical/briefs/_archive/campaigns-flat-2026-08/ii1-drisc-batch-2026-08-pflicht.form-spec.md | clean | — | — | no | n/a | — | code | n/a | code | — |
| dogfood-B-required | U-podagra | domains/medical/briefs/_archive/campaigns-flat-2026-08/kl-gicht-2026-07-31-hot-joint.form-spec.md | clean | existing | PASS | yes | manifest_ok | domains/medical/assets/form-lab/gicht-2026-08-o/MANIFEST.md | hybrid | clean | asset | — |
| dogfood-C-multi | U-urgency | domains/medical/briefs/_archive/campaigns-flat-2026-08/kl-gicht-2026-07-31-urgency.form-spec.md | clean | — | — | no | n/a | — | code | clean | code | — |
| dogfood-C-multi | U-mimic | domains/medical/briefs/_archive/campaigns-flat-2026-08/kl-gicht-2026-07-31-mimic.form-spec.md | clean | — | — | no | n/a | — | code | clean | code | — |
| dogfood-C-multi | U-hot-joint | domains/medical/briefs/_archive/campaigns-flat-2026-08/kl-gicht-2026-07-31-hot-joint.form-spec.md | clean | domains/medical/briefs/_archive/campaigns-flat-2026-08/kl-gicht-2026-07-31-hot-joint.vision.md | PASS | no | n/a | — | hybrid | clean | hybrid | — |

## Open Human gates

| gate | chapter/book | waiting_on | since |
|---|---|---|---|
| — | — | none (dogfood) | 2026-08-03 |

## Rollback watchlist

| issue | suggested_return_phase | chapter/unit |
|---|---|---|
| Pre-T3 portfolio boards lack quality cells | retrofit on next touch | kursbuch-explore-2026-08 |
| Accept without resolvable packet PNG paths | soft path gate (R2) | portfolio |
