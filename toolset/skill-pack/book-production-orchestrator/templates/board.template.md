# Book production board

```yaml
book_id: ""
last_updated: ""
phase_book: P0   # P0–P11
autonomy: L0
scope: full-book   # full-book | single-chapter | explore-portfolio
brief_class_default: exploration
print_target: screen
channel_scope_default: print   # print | web | both (Accept must match; ADR 53)
playbook_pin: ""           # optional: date or skill rev (advisory)
production_bridge: "—"     # path | — (advisory; never Accept/CLEAN waive)
blocked: false
block_reason: ""
```

> **Board = resume index only.** Cells hold enums + paths. Critique text, Design Contracts, Visual Critic notes, MANIFEST bodies, and PNG evidence stay in artifact trees (`domains/medical/…`, pilots, dist).  
> **`validate` OK ≠ Visual CLEAN ≠ Accept.** Do not mark chapter idle on validate alone.  
> **Release packages** live beside the board: `release/<chapter_id>.yaml` (from `contracts/templates/chapter-release.template.yaml`). Validate with `./scripts/bookkit boundaries check-release PATH`.

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

| chapter_id | priority | content | brief | form_specs | graphics | design_clean | visual_clean | macro_vc | quality_packet | open_assets | accept | channel_scope | release_package_path | compose | pdf | next | notes |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| | 1 | | | | | | | | | | | print | — | | | | |

### Cell vocabulary (chapter rollup)

- **content:** `missing` \| `draft` \| `review` \| `frozen` \| `blocked`
- **brief:** `missing` \| `draft` \| `done`
- **form_specs:** `none-needed` \| `missing` \| `partial` \| `done`
- **graphics:** `none-needed` \| `todo` \| `in_progress` \| `units-done`
- **design_clean:** `n/a` \| `missing` \| `partial` \| `clean` \| `blocked`  
  *(resume index of Design Critic outcome — evidence in Form Spec / Design Contract artifacts)*
- **visual_clean:** `n/a` \| `missing` \| `partial` \| `clean` \| `blocked`  
  *(unit Visual CLEAN rollup — evidence is real PNG paths + critic notes, not this cell alone)*
- **macro_vc:** `todo` \| `clean` \| `blocked` \| `n/a`  
  *(chapter-level Visual Critic on full-page PNGs for multi-unit quality chapters; `n/a` if single-unit / no graphics)*
- **quality_packet:** `missing` \| `<path>` \| `ready`  
  *(path to B quality-packet index, or `ready` once Accept-linked and complete)*
- **open_assets:** `n/a` \| `needed` \| `partial` \| `done` \| `blocked`  
  *(chapter rollup of unit open-assets; Media SoT flag is `open_asset_scan: required|optional|skip`)*
- **accept:** `missing` \| `revise` \| `accepted`
- **channel_scope:** `print` \| `web` \| `both`  
  *(from Accept; must match release package `channel_scope`)*
- **release_package_path:** `n/a` \| `—` \| `release/<chapter_id>.yaml` (relative to this board dir) \| absolute path  
  *(`n/a` and `—` are synonyms for explore / non-ship; real path required when shipping. Schema: `contracts/schemas/chapter-release.schema.json`)*
- **compose:** `missing` \| `draft` \| `done`
- **pdf:** path or `missing`
- **next:** short action label

### Chapter done (board-gated)

```text
design_clean   = clean | n/a
visual_clean   = clean where graphics units exist (else n/a)
macro_vc       = clean | n/a
quality_packet = ready
accept         = accepted
channel_scope  = print | web | both (set)
release_package_path = path when shipping; n/a or — for pure explore / non-ship
compose        = done
pdf            = path present (print path) when channel_scope includes print
validate OK    → necessary but NOT sufficient alone
```

Do **not** mark chapter / portfolio **idle** until this checklist is met (L2 hard rule).

## Visual units (detail)

| chapter_id | unit_id | form_spec | design_clean | vision | claim_audit | needs_open_assets | open_assets | manifest_path | realize | visual_clean | winner | spikes |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| | | path/missing | missing/partial/clean/blocked/n/a | path/missing | PASS/DRIFT/FAIL/— | yes/no | n/a/needed/scanning/manifest_ok/blocked | path/— | recreate/… | missing/partial/clean/blocked/n/a | code/asset/hybrid/— | |

### Unit cell vocabulary

- **design_clean:** `missing` \| `partial` \| `clean` \| `blocked` \| `n/a`
- **visual_clean:** `missing` \| `partial` \| `clean` \| `blocked` \| `n/a`
- **needs_open_assets:** `yes` \| `no`  
  *(derived from Media `open_asset_scan`: required → yes; skip → no; optional → yes if scan pursued)*
- **open_assets:** `n/a` \| `needed` \| `scanning` \| `manifest_ok` \| `blocked`
- **manifest_path:** path \| `—`

## Open Human gates

| gate | chapter/book | waiting_on | since |
|---|---|---|---|
| | | | |

## Rollback watchlist

| issue | suggested_return_phase | chapter/unit |
|---|---|---|
| | | |
