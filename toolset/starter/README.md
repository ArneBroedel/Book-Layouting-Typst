# bookkit starter

Minimal consumer for the Typst toolset foundation.

## Human — 5 minutes

1. Copy or run `bookkit init my-book` from the studio repo.
2. Ensure `packages/bookkit` and `fonts/` are linked/copied (init does this).
3. Edit `design-brief.yaml` (title, genre, language, author).
4. Edit `main.typ`.
5. Build:

```bash
bookkit doctor --root .
bookkit build --root . --entry main.typ --out dist/book.pdf
```

## Agent gate

Before writing Typst:

1. Load `typst-writer` (generic layout rules).
2. Load `bookkit` package skill (API, assembly order, anti-patterns).
3. If `@preview` packages: load `typst-extension`.
4. Read `design-brief.yaml`; fail soft if required fields missing.

## Layout

```
main.typ
design-brief.yaml
README.md
AGENTS.md
packages/   → bookkit (+ optional facets)
fonts/
dist/
```
