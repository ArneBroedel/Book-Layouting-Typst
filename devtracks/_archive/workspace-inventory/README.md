# Workspace Inventory (archived)

**Last regenerated:** 2026-07-29 (post Phase‑1 hygiene + after related track harvests)  
**Status:** **Archived** 2026-07-29 with companion [`../workspace-split/`](../workspace-split/)  
**Regenerate anytime (live tool):** `python3 scripts/workspace-inventory.py` (script still at repo root; may rewrite this archive folder if cwd/output path points here — prefer re-pointing output or a new snapshot path if re-running)

Machine snapshot of the monorepo for **workspace-split / consolidation** provenance. Prefer live re-run of the script for current counts; this folder is a frozen companion snapshot.

| File | Description |
|---|---|
| [`file-index.tsv`](file-index.tsv) | **Every file**: path, bytes, ext, bucket, role, purpose |
| [`CATALOG.md`](CATALOG.md) | Grouped human catalog (regenerated with the script) |
| [`bucket-summary.tsv`](bucket-summary.tsv) | Aggregates by product-ish bucket |
| [`noise-candidates.tsv`](noise-candidates.tsv) | Residual build/scratch/eval noise |
| [`all-files.txt`](all-files.txt) | Flat path list |
| [`all-files-with-size.tsv`](all-files-with-size.tsv) | Flat path + bytes |

### Snapshot highlights (current)

| Metric | Value |
|---|---|
| Files indexed | **~851** (excl. `.git`, `__pycache__`, `.playwright-mcp`) |
| Tree size (index) | **~36 MB** |
| Largest buckets | medical assets ~26 MB · research ~5 MB · fonts/support ~1.8 MB |
| Phase‑1 effect | Assets were ~65 MB → ~26 MB; root litter gone; briefs gold+archive; `dist/` nearly empty |

Historical pre-purge numbers live only as narrative in `workspace-split/plan.md` §0 (baseline). **Do not** mix those with this folder’s live tables.

**Plan:** [`../workspace-split/plan.md`](../workspace-split/plan.md) · **Spec:** [`../workspace-split/spec.md`](../workspace-split/spec.md)  
**Joint rec / decisions:** [`../workspace-split/joint-recommendation.md`](../workspace-split/joint-recommendation.md) · [`../workspace-split/decisions.md`](../workspace-split/decisions.md)  
**Phase-1 log:** [`../workspace-split/phase1-hygiene-log.md`](../workspace-split/phase1-hygiene-log.md)  
**Implementer handoff:** [`../workspace-split/HANDOFF.md`](../workspace-split/HANDOFF.md)

Regenerate after large moves / purges:

```bash
python3 scripts/workspace-inventory.py
```

The script rewrites **all** artifacts in this directory (including `CATALOG.md`).
