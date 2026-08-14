# Typst Showcase — Medizinische Didaktik

A publication-grade showcase of Typst layout capabilities. German content with a
medical/didactic theme, A4 format. The book **dogfoods** `packages/bookkit` and
`packages/bookkit-didactics` via thin re-exports in `src/styles/` and foundation
`src/components/`.

## Quick start

Always from the **repo root**, with repro flags:

```sh
typst compile --root . --ignore-system-fonts --font-path fonts src/main.typ dist/book.pdf
# or:
./scripts/bookkit build --root . --entry src/main.typ --out dist/book.pdf
```

PNG export (same flags):

```sh
typst compile --root . --ignore-system-fonts --font-path fonts \
  --format png --ppi 200 --pages 1 \
  src/main.typ dist/preview/p1.png
```

## Book map

| Teil | Title | Chapters |
|---|---|---|
| Cover | Full-bleed cover | `00` |
| **I** | Grundlagen | `01` intro · `02` typography · `03` structure |
| **II** | Komponenten & Layouts | `04` components · `05` layout · `06` advanced |
| **III** | Erweiterbarkeit | `08` packages · `09` data-driven · `10` tooling |
| **IV** | Community-Pakete | `11` academic · `12` beyond-flow · `13` wasm-meta · `14` templates · `18` pinit |
| **V** | Template-Muster und Architektur | `15` book-patterns · `16` margin-patterns · `17` visual-hierarchy |
| **VI** | Medizinische Fachbuch-Fähigkeiten | `19` Didaktik · `20` Datenvisualisierung · `21` Diagramme · `22` Bildintegration |
| **VII** | Seitengestaltung, Hintergrund & Kunststücke | `23` Seitengestaltung · `24` Kunststücke |
| **VIII** | Berufs- und Rechtskunde | `25` Rechtskunde |
| Back matter | Glossary, index, bibliography | `07` |

Chapters **01–06** have zero `@preview` dependencies. **08+** deliberately demonstrate
ecosystem packages (CeTZ, Fletcher, Codly, Showybox, Tablem, pinit, …).

Assembly lives in `src/main.typ`: cover (zero margins) → `setup-pages()` →
`part-page(...)` + `#include` per chapter. `07` is included last.

## Architecture

```
src/
├── main.typ
├── SHOWCASE-README.md     ← this file
├── styles/                ← re-exports of packages/bookkit
│   ├── theme.typ
│   ├── typography.typ
│   ├── page.typ
│   └── print.typ
├── components/            ← foundation = package re-export; rest = showcase-only
│   ├── blocks.typ, inline.typ, tables.typ, grids.typ, layouts.typ, spreads.typ
│   ├── didactics.typ, exam.typ          ← bookkit-didactics
│   ├── charts.typ, diagrams.typ, pedigree.typ, figures.typ
│   ├── page-design.typ, art.typ, legal.typ
├── chapters/              ← 00–25 (see table)
├── data/                  ← glossary.yml, *.bib, sample-patients.json, sample-study.csv
└── assets/                ← e.g. anatomy/*.svg (root-absolute paths from figures.typ)
```

Component inventory and token rules: [`../CLAUDE.md`](../CLAUDE.md) → Architecture.

## Design system

- **Fonts** (under `--ignore-system-fonts`): Libertinus Serif (body + headings),
  DejaVu Sans Mono (code), Font Awesome 6 from `fonts/`. No bundled sans.
- **Colors:** teal primary `#0d7377`, amber accent `#d4a039`.
- **Tokens:** change `packages/bookkit/theme.typ` (re-exported as `src/styles/theme.typ`),
  not hardcoded colors in chapters.

## Related

- Platform / consumer: [`../docs/CONSUMER.md`](../docs/CONSUMER.md)
- Agent rules: [`../AGENTS.md`](../AGENTS.md) · [`../CLAUDE.md`](../CLAUDE.md)
