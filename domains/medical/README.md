# Domain: medical (Produkt B — transitional home)

Medizinpädagogik / Mediendesign / Kursbuch-nahe Konventionen.

## Geplante Struktur (Tracks media-design + form-catalog)

```text
domains/medical/
  README.md                 ← this file
  recipes/                  ← genre recipes + *.minima.yaml — NOT in catalog core
    notfall-karte.md        ← full recipe (Wave 1 / E2)
    notfall-karte.minima.yaml ← machine minima for compose validator
    lerntext.md             ← stub
    fallbasiert.md          ← stub
  briefs/                   ← gold media briefs + accept + optional *.graphics.md
  templates/                ← media-brief, accept-record, graphic-decision templates
  assets/                   ← domain graphic files (SVG first; per-slug folders)
  skill/media-brief/        ← media-brief skill SoT (Produkt B; discovery via symlinks)
  skill/medical-graphics/   ← Graphics role: code vs asset vs A/B
  catalog-overlay.yaml      ← optional extra forms/planned for this domain
  OWNERSHIP.md              ← when split: target remote notes
```

## Skill `media-brief` (SoT)

| | |
|---|---|
| **Body** | [`skill/media-brief/SKILL.md`](skill/media-brief/SKILL.md) |
| **B-core (lean)** | [`skill/media-brief/references/design-reasoning.md`](skill/media-brief/references/design-reasoning.md) — unit→hypothesis, scan rules, Accept rubric |
| **Discovery** | `.github/skills/media-brief`, `.grok/skills/media-brief`, `toolset/skill-pack/media-brief` → this directory |
| **Provision** | `toolset/skill-pack/provision.sh` (resolves domain SoT first) |
| **Templates** | `templates/media-brief.template.md`, `templates/accept-record.template.md` |
| **Library (archived)** | `devtracks/_archive/medical-knowledge-design-competencies/` (COMPENDIUM) |

Edit the skill **only** under `domains/medical/skill/media-brief/`. Do not duplicate under `.grok/`.

## Skill `medical-graphics` (SoT)

| | |
|---|---|
| **Body** | [`skill/medical-graphics/SKILL.md`](skill/medical-graphics/SKILL.md) |
| **Role** | Graphics — after Brief: code first, asset/hybrid considered, A/B when unsure |
| **Template** | [`templates/graphic-decision.template.md`](templates/graphic-decision.template.md) |
| **Assets** | [`assets/`](assets/) |
| **Discovery** | `.github/skills/medical-graphics`, `.grok/skills/medical-graphics`, `toolset/skill-pack/medical-graphics` |
| **Track** | `devtracks/medical-graphics/` |

Edit only under `domains/medical/skill/medical-graphics/`.

## Genre recipes & validator minima

| Genre | Recipe | Machine minima |
|---|---|---|
| `notfall-karte` | [`recipes/notfall-karte.md`](recipes/notfall-karte.md) | [`recipes/notfall-karte.minima.yaml`](recipes/notfall-karte.minima.yaml) |
| `lerntext` | [`recipes/lerntext.md`](recipes/lerntext.md) (stub) | — |
| `fallbasiert` | [`recipes/fallbasiert.md`](recipes/fallbasiert.md) (stub) | — |

Recipes are **functional checklists** for Media (not exclusive form lists).  
Minima YAML is loaded by the compose validator (Produkt A); schema is documented in the full recipe.

## Media briefs & accept (Wave 2)

Templates: [`templates/media-brief.template.md`](templates/media-brief.template.md), [`templates/accept-record.template.md`](templates/accept-record.template.md).

| Artifact | Path | Notes |
|---|---|---|
| **Gold Brief III-5** (Cauda Notfallkarte) | [`briefs/iii5-cauda-notfallkarte.brief.md`](briefs/iii5-cauda-notfallkarte.brief.md) | Free ideal + wishlist; content path external (Produkt C) |
| Gold Brief III-2 (BLS/AED) | [`briefs/iii2-bls-aed.brief.md`](briefs/iii2-bls-aed.brief.md) | Shorter companion notfall-karte |
| Accept example III-5 | [`briefs/iii5-cauda-notfallkarte.accept.md`](briefs/iii5-cauda-notfallkarte.accept.md) | Shape demo; fictive feasibility until Wave 3/4 |
| **Graphics free-first III-2** | [`briefs/iii2-bls-aed.vision.md`](briefs/iii2-bls-aed.vision.md) + [`…graphics.md`](briefs/iii2-bls-aed.graphics.md) | Free Nano Banana preferred vision; structure-ref = anti-pattern for creativity tests |
| Vision template | [`templates/graphic-vision.template.md`](templates/graphic-vision.template.md) | Phase A free vision input |

**Flow:** Media Brief (ideal first) → Tech Feasibility ◄──► Graphics (visual units) → Spike (code/asset/A/B) → Media Accept → Compose (Produkt A, **creative-first**).  
Content MD stays **external** (Kursbuch); briefs reference paths only.  
Policy: `toolset/compose/CREATIVE-COMPOSE.md` — full toolkit + graphic modes; catalog is preferred library, not a cage.

## Abhängigkeit

- Platform: `packages/bookkit`, `toolset/form-catalog/core`, `toolset/compose`
- Content: **extern** (Kursbuch) — hier keine Kapitel-SoT

## Split

Wenn Trigger aus `devtracks/platform-boundaries/plan.md` greifen: diesen Baum in eigenes Repo heben.
