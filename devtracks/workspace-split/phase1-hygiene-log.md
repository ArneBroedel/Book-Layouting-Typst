# Phase 1 hygiene log — 2026-07-29

## Done

| Action | Detail |
|---|---|
| Root litter | Removed `scratch_test.*`, `v-*-compile.typ` |
| `dist/` wipe | Local build tree cleared (~105 MB free) |
| Untrack/delete PDFs | Showcase, test, spike, skill-eval PDFs |
| `.gitignore` | PDFs next to sources, eval outputs, scratch, tmp |
| Asset tag | `archive/assets-pre-purge-2026-07-29` |
| Asset purge | 7 compartment intermediate Gemini PNGs; 2 iii2 nanobanana intermediates; melanom refined-02 |
| Assets size | ~65 MB → **~25 MB** |
| Briefs archive | 41 files → `domains/medical/briefs/_archive/` |
| Policy docs | `assets/CANONICAL.md`, `briefs/INDEX.md`, `decisions.md` |

## Not done (next)

- Wire `bookkit graphics vision|refine|spike-init` (wrap existing scripts)
- Wire `bookkit validate` / `prepress` under same CLI
- Spike lib harvest → package
- Showcase move (D3: later)
- Commit (await human if desired)

## Restore assets

```bash
git show archive/assets-pre-purge-2026-07-29:domains/medical/assets/kl-compartment-spatial/vision-free-gemini-01.png > /tmp/x.png
```
