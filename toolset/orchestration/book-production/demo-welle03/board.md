# Book production board

```yaml
book_id: demo-welle03
last_updated: 2026-07-23
phase_book: P6
autonomy: L1
brief_class_default: exploration
print_target: screen
blocked: false
block_reason: ""
```

## Book-level phases

| phase | status | notes |
|---|---|---|
| P0 Kickoff | done | demo board |
| P1 Design SoT | done | bookkit |
| P2 Content gates | partial | exploration pilots |
| P7 Assembly | todo | full book optional |
| P8 Validate | todo | |
| P9 Visual QA | todo | |
| P10 Prepress | n/a | screen target |
| P11 Proof/Imprimatur | todo | |

## Chapters

| chapter_id | priority | content | brief | form_specs | graphics | accept | compose | pdf | next | notes |
|---|---|---|---|---|---|---|---|---|---|---|
| iii2 | 1 | frozen-pilot | done | none-needed* | units-done | accepted | done | dist/spikes/…/iii2 | assembly? | Primär-Algorithmus gold |
| iv2 | 1 | frozen-pilot | done | done | units-done | accepted | done | pilots iv2 | visual-qa | Form Spec gold |
| iii5 | 2 | frozen-pilot | done | done | units-done | accepted | done | pilots iii5 | visual-qa | hard-stop |
| ii1 | 2 | frozen-pilot | done | missing | units-done | accepted | done | pilots ii1 | form-spec-retro | landscape mode |
| iv4 | 2 | frozen-pilot | done | missing | units-done | accepted | done | pilots iv4 | form-spec-retro | B2 refined |
| i4 | 3 | frozen-pilot | done | missing | todo | accepted* | draft | | form-spec? | *chapter accept may predate graphics |
| vi1 | 3 | frozen-pilot | done | missing | todo | accepted* | draft | | media-graphics | |
| vii1 | 3 | frozen-pilot | done | missing | todo | accepted* | draft | | media-graphics | |

\* legacy chapter accepts without Form Spec era — orchestrator may retrofit.

## Visual units (detail)

| chapter_id | unit_id | form_spec | vision | claim_audit | realize | winner | spikes |
|---|---|---|---|---|---|---|---|
| iv2 | S4 | briefs/iv2-….form-spec.md | vision.md | PASS-ish | recreate+refine | code | graphics/iv2-… |
| iii5 | S4 | briefs/iii5-….form-spec.md | vision.md | DRIFT free EN | recreate | code | graphics/iii5-… |
| iii2 | S4 | — | vision | — | hybrid+code | hybrid/code | graphics/iii2-… |
| ii1 | S8 | missing | vision | PASS free | recreate+landscape | code | graphics/ii1-… |
| iv4 | S6 | missing | vision+refined | FAIL free→B2 | recreate | code | graphics/iv4-… |

## Open Human gates

| gate | chapter/book | waiting_on | since |
|---|---|---|---|
| — | | | |

## Rollback watchlist

| issue | suggested_return_phase | chapter/unit |
|---|---|---|
| Missing form-specs on ii1/iv4 | P3 retro | ii1, iv4 |
