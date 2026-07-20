# Phase 1 — Foundation-Package + Showcase-Dogfood

Status: **offen** · hängt ab von Phase 0

## Ziel

Runtime-Schicht A als importierbares Package; Showcase beweist, dass nichts kaputt ist.

## Tasks

- [ ] Package-Skeleton: `typst.toml`, `lib.typ` (öffentliche Exports), interne Module.
- [ ] Theme/Typography/Page in Package verschieben oder re-exportieren; Token-Override-Mechanismus
  für Consumer (`theme-override` / `with(theme: …)`-Pattern entscheiden und dokumentieren).
- [ ] Generische Komponenten migrieren (gemäß Phase-0-Schnitt); relative Imports und
  `image()`-Pfade (`/src/assets/…` vs. Package-Assets) klären.
- [ ] Showcase auf Package-Imports umstellen; `src/components/*` werden dünne Re-Exports oder entfallen.
- [ ] Build grün: `./scripts/build.sh fast` und ideal `ua`.
- [ ] Minimale API-Skizze (Markdown im Package oder `toolset/docs/api-foundation.md`): Setup-Reihenfolge
  Cover → `setup-pages`, wichtige Funktionen, was **nicht** exportiert wird.
- [ ] Smoke-Consumer im Repo: `pilots/_smoke-foundation/` oder `toolset/examples/minimal/` — 1–2 Seiten,
  nur Foundation, **ohne** Showcase-Kapitel.

## Exit criteria

- Showcase-PDF baut reproduzierbar über das Package.
- Minimal-Example baut ohne `src/chapters`.
- Öffentliche API-Liste ist reviewed (nicht „alles exportieren“).

## Risiken / Checks

- `set page` / show-rule Closure-Pattern (`#show: setup-…()`) nicht brechen.
- PDF/UA: globale `figure`/`image` alt-Fallbacks bleiben erreichbar.
- Keine neuen unpinneden `@preview`-Imports.
