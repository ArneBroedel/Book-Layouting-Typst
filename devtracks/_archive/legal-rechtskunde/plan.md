# Plan: Berufs- und Rechtskunde

Status: **Implementierung abgeschlossen, verifiziert und geharvestet.**

## Phasen

### Phase 1 — Recherche ✅
- Typst-Pakete/Templates/Grundsätze für juristische Darstellung erhoben (rich-counters, theorion,
  great-theorems, glossarium/abbr, citrus, clean-hwr; native CSL via `bibliography(style:)`). Ergebnis:
  fast alles nativ machbar; Pakete nur für Auto-Nummerierung/Bibliografie zwingend.
- Repo-Bausteine kartiert (didactic-box-Muster, `_label-chip`, inline badges, tables, theme-Token).

### Phase 2 — Theme-Token ✅
- `legal`-Dict (norm/case/definition/scheme/practice) in `src/styles/theme.typ`.

### Phase 3 — Komponenten-Modul ✅
- `src/components/legal.typ`: generischer `_legal-box(kind, header, body)` + Wrapper; Inline-`norm`/
  `paragraf`; Norm-Gliederung `absatz`/`nummer`/`buchstabe`; `rechtsprechung`, `legaldefinition`,
  `pruefungsschema`/`gutachten`, `tatbestand-rechtsfolge`, `normenhierarchie`, `randnummer`,
  `abkuerzungen`.

### Phase 4 — Showcase-Kapitel ✅
- `src/chapters/25-rechtskunde.typ`: Normzitat, Gesetzeskasten (§203 StGB, Art. 12 GG, §630a BGB),
  Tatbestand→Rechtsfolge, Legaldefinition, Rechtsprechung (BGH), Randnummern-Kommentar,
  Gutachten + Prüfungsschema, Normenhierarchie, IfSG-Meldepflichten-Tabelle, Abkürzungsverzeichnis.
  Mit `index[…]`-Markern.

### Phase 5 — Einbindung & Verifikation ✅
- `main.typ`: Teil VIII + `#include`. `CLAUDE.md`: Komponenten-/Kapitel-Liste (`00`–`25`, Index 19–25).
- `dist/book.pdf` (EXIT 0) und `dist/book-ua.pdf` (`--pdf-standard ua-1`, EXIT 0); alle Seiten im echten
  A4/`setup-pages()`-Kontext gesichtet (hängende Einzüge, Pyramide geschlossen, Randnummern im Steg).

### Phase 6 — Harvest-Gate ✅
- **`typst-writer` §21** ergänzt (Inline-Zitat ohne Umbruch via `box`+`nobreak`, `p: "630e"`-String-Gotcha,
  hängende Norm-Gliederung per Grid, Randnummern via `counter`+Gutter statt marginalia, Mehrteil-Figuren
  `breakable: false`, Box-Spine wiederverwenden + Token retheme).
- **`Guides/Working_With_Typst-Theory_To_Practice.md`** → neuer Abschnitt „Legal / professional-law
  content (devtrack: legal-rechtskunde)".

## Harvested into
- `.github/skills/typst-writer/SKILL.md` → **§21 — Harvested Gotchas: Legal / Statute Text**.
- `Guides/Working_With_Typst-Theory_To_Practice.md` → **Lessons harvested from devtracks (2026) → Legal /
  professional-law content**.
