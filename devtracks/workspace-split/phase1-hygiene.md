# Phase 1 — Monorepo hygiene

**Status:** ✅ **DONE** (2026-07-29)  
**Risk:** low  
**Log:** [`phase1-hygiene-log.md`](phase1-hygiene-log.md)

## Goal

Remove cognitive and disk noise so the layout core is visible; establish gold/archive and asset canonical policy **without** repo split.

## Checklist (completed)

- [x] Delete root litter: `scratch_test.*`, `v-*-compile.typ`
- [x] Wipe local `dist/` (gitignored)
- [x] Untrack/delete compile PDFs next to sources (src, test, spikes, skill-eval outputs)
- [x] Harden `.gitignore` (PDFs, eval outputs, scratch, tmp)
- [x] Tag `archive/assets-pre-purge-2026-07-29` before purge
- [x] Purge intermediate compartment Gemini PNGs (keep free-01/02, refined, sweetspot)
- [x] Purge iii2 intermediate nanobanana free/unrefined rasters
- [x] Purge `kl-melanom-abcde/vision-refined-02.png`
- [x] Write `domains/medical/assets/CANONICAL.md` + update compartment MANIFEST + assets README
- [x] Create `domains/medical/briefs/INDEX.md` + move non-gold → `briefs/_archive/`
- [x] Ship inventory tooling `scripts/workspace-inventory.py` + `devtracks/workspace-inventory/`
- [x] Record decisions D1–D5

## Residual (not blocking 1b)

- [ ] Mission-first README/AGENTS rewrite → **phase4**
- [ ] Remove empty `tools/`, ensure `tmp/` ignored → optional cleanup in phase2
- [ ] Skill workspace HTML/benchmark bulk policy beyond gitignore → phase2/4
- [ ] Re-run inventory after large moves to refresh TSV snapshots

## Exit criteria (met)

- Assets on disk ~25 MB class (was ~65 MB)
- Gold briefs discoverable via INDEX
- Purged assets recoverable from tag
- No root scratch files
