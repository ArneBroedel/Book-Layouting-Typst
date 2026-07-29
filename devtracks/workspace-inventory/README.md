# Workspace Inventory (2026-07-29)

Snapshot for the **workspace-split / consolidation** effort.

> **Stale vs post-hygiene tree:** TSV/`CATALOG` were captured **before** Phase‑1 asset purge + brief archive (`b437aad`). They still list intermediate Gemini PNGs, root `scratch_test.*`, etc. that are gone from HEAD. Re-run the script after large moves; do not treat counts as current disk truth.

| File | Description |
|---|---|
| [`file-index.tsv`](file-index.tsv) | **Every file**: path, bytes, ext, bucket, role, purpose |
| [`CATALOG.md`](CATALOG.md) | Grouped human catalog (~179 directory groups) |
| [`bucket-summary.tsv`](bucket-summary.tsv) | Aggregates by product-ish bucket |
| [`noise-candidates.tsv`](noise-candidates.tsv) | Build/scratch/eval noise for Phase-1 hygiene |
| [`all-files.txt`](all-files.txt) | Flat path list |

**Plan:** [`../workspace-split/plan.md`](../workspace-split/plan.md) · **Spec:** [`../workspace-split/spec.md`](../workspace-split/spec.md)  
**Joint rec / decisions:** [`../workspace-split/joint-recommendation.md`](../workspace-split/joint-recommendation.md) · [`../workspace-split/decisions.md`](../workspace-split/decisions.md)  
**Phase-1 log:** [`../workspace-split/phase1-hygiene-log.md`](../workspace-split/phase1-hygiene-log.md)  
**Implementer handoff:** [`../workspace-split/HANDOFF.md`](../workspace-split/HANDOFF.md)

Regenerate with:

```bash
python3 scripts/workspace-inventory.py
```
