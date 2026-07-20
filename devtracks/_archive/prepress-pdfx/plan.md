# Plan: Druckvorstufe & PDF/X (Prepress)

Siehe [spec.md](spec.md) und [decisions.md](decisions.md).  
**Related:** unabhängig von [`typst-toolset`](../typst-toolset/); optionaler späterer CLI-Hook
`print` im Toolset Phase 3+.

## Phasen

- [x] **Phase 0 — Recherche & Entscheidung.**  
  Typst 0.15: bleed/TrimBox + `cmyk()`/`color.spot` nativ; **kein** PDF/X-Flag.  
  Architektur: native bleed/marks + Ghostscript PDF/X-3. → [decisions.md](decisions.md)

- [x] **Phase 1 — Bleed & Marken.**  
  `packages/bookkit/print.typ` (`--input print=true`); wired in `page.typ`, cover,
  `full-bleed`, `art-page`. Visuell: MediaBox-Render zeigt Schnitt-/Passmarken.

- [x] **Phase 2 — Farbraum & PDF/X-Pipeline.**  
  `scripts/print-pdfx.sh` / `.ps1` + `prepress/PDFX_def.ps` + bundled ICC.  
  Annotations stripped (`-dPreserveAnnots=false`). Preflight-Report abgelegt.

- [x] **Phase 3 — Auflösungs-Preflight.**  
  `scripts/check-image-dpi.py` (≥ 300 dpi rule); current assets SVG → all OK.

- [x] **Phase 4 — Build-Modus & Doku.**  
  `print` / `print-rgb` in `build.sh` + `build.ps1`; CLAUDE.md/AGENTS.md;
  `prepress/README.md`; Spot-Farben-Empfehlung dokumentiert.

## Abnahme

- [x] Reproduzierbarer `dist/book-print.pdf` mit Bleed + Marken + PDF/X-3-Markern  
- [x] Report unter `prepress/reports/`  
- [x] CLAUDE.md Build-Sektion um `print` ergänzt  

## Harvested into

- `packages/bookkit/print.typ` + page/spreads wiring (executable prepress helpers)
- `prepress/` pipeline (PDFX_def, ICC, README)
- `scripts/{build,print-pdfx,check-image-dpi,preflight-print}.*`
- `.github/skills/typst-extension/SKILL.md` — § Prepress / PDF/X
- `Guides/Working_With_Typst-Theory_To_Practice.md` — prepress section
- `CLAUDE.md` / `AGENTS.md` — `print` build mode
