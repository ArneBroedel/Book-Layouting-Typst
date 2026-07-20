# Domain: medical (Produkt B — transitional home)

Medizinpädagogik / Mediendesign / Kursbuch-nahe Konventionen.

## Geplante Struktur (Tracks media-design + form-catalog)

```text
domains/medical/
  README.md                 ← this file
  recipes/                  ← genre recipes (notfall-karte, …) — NOT in catalog core
  briefs/                   ← gold media briefs + accept examples
  templates/                ← media-brief.md, accept-record.md
  skill/                    ← media-brief skill SoT (or symlink to toolset/skill-pack)
  catalog-overlay.yaml      ← optional extra forms/planned for this domain
  OWNERSHIP.md              ← when split: target remote notes
```

## Abhängigkeit

- Platform: `packages/bookkit`, `toolset/form-catalog/core`, `toolset/compose`
- Content: **extern** (Kursbuch) — hier keine Kapitel-SoT

## Split

Wenn Trigger aus `devtracks/platform-boundaries/plan.md` greifen: diesen Baum in eigenes Repo heben.
