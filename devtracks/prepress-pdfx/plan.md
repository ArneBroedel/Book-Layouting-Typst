# Plan: Druckvorstufe & PDF/X (Prepress)

Siehe [spec.md](spec.md). Status: **geplant / nicht begonnen.**
Lifecycle: bei Fertigstellung harvesten (Prepress-Regeln → `typst-extension`; „warum" → Lessons-Ledger)
und nach `_archive/` verschieben (siehe `docs/KNOWLEDGE-MAP.md`).

## Phasen

- [ ] **Phase 0 — Recherche & Entscheidung.** Was kann Typst 0.15 nativ (Bleed, `cmyk()`, ICC,
  PDF/X-Flag)? Was braucht einen Ghostscript/`verapdf`-Postschritt? Ergebnis: Architektur-Entscheidung
  (nativ vs. Post-Processing) + Wahl PDF/X-4 vs. -1a.
- [ ] **Phase 1 — Bleed & Marken.** `set page(bleed: 3mm)` einführen; Cover/Part-Pages in den Beschnitt
  ziehen; Schnitt-/Passmarken (eigene Komponente oder Post-Processing). Visuell prüfen.
- [ ] **Phase 2 — Farbraum & PDF/X-Pipeline.** RGB→CMYK-Strategie + ICC-Profil festlegen; PDF/X-4
  erzeugen (Typst-Flag oder `gs`-Postschritt). Preflight mit `verapdf`/`gs`.
- [ ] **Phase 3 — Auflösungs-Preflight.** Skript/Checkliste für ≥ 300 dpi eingebetteter Raster (Regel
  für künftige Fotos; aktuelle SVGs sind vektoriell). In CI/Build einhängen.
- [ ] **Phase 4 — Build-Modus & Doku.** `print`-Modus (PowerShell-Wrapper + direkte `typst`-Variante)
  → `dist/book-print.pdf`; CLAUDE.md-Build-Sektion ergänzen; Spot-Farben-Empfehlung dokumentieren.

## Abnahme
- Reproduzierbarer `dist/book-print.pdf` mit Bleed + Marken + bestätigter PDF/X-Konformität (Report im Track).
