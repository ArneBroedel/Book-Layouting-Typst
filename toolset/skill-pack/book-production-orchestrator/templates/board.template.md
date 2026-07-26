# Book production board

```yaml
book_id: ""
last_updated: ""
phase_book: P0   # P0–P11
autonomy: L0
brief_class_default: exploration
print_target: screen
blocked: false
block_reason: ""
```

## Book-level phases

| phase | status | notes |
|---|---|---|
| P0 Kickoff | | |
| P1 Design SoT | | |
| P2 Content gates | | |
| P7 Assembly | | |
| P8 Validate | | |
| P9 Visual QA | | |
| P10 Prepress | | |
| P11 Proof/Imprimatur | | |

status: `todo` \| `in_progress` \| `done` \| `blocked` \| `n/a`

## Chapters

| chapter_id | priority | content | brief | form_specs | graphics | accept | compose | pdf | next | notes |
|---|---|---|---|---|---|---|---|---|---|---|
| | 1 | | | | | | | | | |

### Cell vocabulary

- **content:** `missing` \| `draft` \| `review` \| `frozen` \| `blocked`
- **brief:** `missing` \| `draft` \| `done`
- **form_specs:** `none-needed` \| `missing` \| `partial` \| `done`
- **graphics:** `none-needed` \| `todo` \| `in_progress` \| `units-done`
- **accept:** `missing` \| `revise` \| `accepted`
- **compose:** `missing` \| `draft` \| `done`
- **pdf:** path or `missing`
- **next:** short action label

## Visual units (detail)

| chapter_id | unit_id | form_spec | vision | claim_audit | realize | winner | spikes |
|---|---|---|---|---|---|---|---|
| | | path/missing | path/missing | PASS/DRIFT/FAIL/— | recreate/… | code/asset/hybrid/— | |

## Open Human gates

| gate | chapter/book | waiting_on | since |
|---|---|---|---|
| | | | |

## Rollback watchlist

| issue | suggested_return_phase | chapter/unit |
|---|---|---|
| | | |
