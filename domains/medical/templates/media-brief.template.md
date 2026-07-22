# Media Brief

- **chapter_id / slug:**
- **genre:** (e.g. notfall-karte)
- **content_source:** (path in Content repo C — not copied as SoT)
- **content_status:** draft | review | frozen | …
- **content_revision:** (required for production: `git:<short>` or `sha256:<hex>`)
- **brief_class:** production | exploration
- **freeze_path:** (required when brief_class=production)
- **author_media:**
- **date:**
- **catalog_version_seen:** (optional; do not limit ideation to it)

> **Production** briefs require `content_status: frozen` + valid `content_revision` + freeze record.  
> **Exploration** briefs may run on draft/review — never authorize production compose from them alone.

## Design reasoning (compact)

Unit → hypothesis only. No claim paraphrase. No form ids. See `media-brief/references/design-reasoning.md`.

| unit / anchor | type | learner job | load risk | presentation hypothesis | recipe fn |
|---|---|---|---|---|---|
| | danger / recognition / decision / procedure / comparison / mechanism / reference | | | | e.g. F1 |

## Overall presentation goal

What should the *layout/media* achieve for the learner/actor? (not restating clinical facts)

## Section plan (free language — no bookkit requirement)

| id | content anchor (heading/role) | ideal presentation (prose) | priority / page intent |
|---|---|---|---|
| | | | |

## Wishlist outside current catalog

| wish | why | severity |
|---|---|---|
| | | |

## Form Spec handoff (ambitious visual units)

For each free-vision-required unit write  
`domains/medical/briefs/<slug>.form-spec.md`  
(template: `form-spec.template.md`). List paths:

| unit_id | form_spec_path | ambition |
|---|---|---|
| | | required / optional / skip |

## Author questions (Human)

1. …

## Explicit non-goals for this brief

- …
