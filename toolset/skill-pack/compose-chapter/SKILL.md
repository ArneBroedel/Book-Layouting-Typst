---
name: compose-chapter
description: "ALWAYS use for Tech compose: feasibility note, map Media Brief to form-catalog, spike after experiment status, write production chapter.typ from accepted brief, catalog-whitelist compose, validate chapter, run compose validator. Covers Produkt A compose-pipeline (toolset/compose). Do NOT use for free didactic ideal, gold brief authoring, Media Accept wording, or media-brief drafting — those stay media-brief (Produkt B)."
---

# compose-chapter (Platform Tech — Produkt A)

Executable procedure for the **Tech** role: Feasibility → optional Spike → Compose (post-Accept) → Validate.

**SoT:** `toolset/skill-pack/compose-chapter/` (Produkt A). Not Media design; not a substitute for `media-brief`.  
Governing: `devtracks/CONSENSUS-v0.md`, `devtracks/compose-pipeline/spec.md`, `devtracks/PRODUCT-BOUNDARIES.md`.

## When to use

- **Feasibility note** from Media Brief + form-catalog
- **Spike** for `experiment` / unclear `approx`
- **Compose** production `chapter.typ` after Media Accept
- **Validate** composed chapter (whitelist, claims, compile)
- **Catalog-gap** filing from a named gap
- Smoke/platform tests under documented `EXCEPTION_NO_BRIEF` only

## When NOT to use

| Situation | Use instead |
|---|---|
| Free didactic ideal, gold brief, Media Accept prose | `media-brief` (Produkt B) |
| bookkit API / setup / design-brief details | `bookkit` |
| General Typst syntax / layout debug | `typst-writer` |
| `@preview` package choice / typst.toml | `typst-extension` |
| Rewriting Critical Claims or clinical body | Author / Content (Produkt C) |
| Inventing layout without Accept (real production) | Stop — need Brief + Feasibility + Accept |

## Role: Tech (constrain after explore)

```text
Media Brief (B) ──► Feasibility (this) ──► Spike? ──► Media Accept
                         │                              │ accept
                  catalog-gap?                   Compose chapter.typ
                                                        │
                                                 Validate (fail-fast) → PDF
```

Tech **maps** Brief → catalog. Media **accepts** proximity to the ideal.  
Compose is **setter after redaction close**, not sole designer.

**MUST:** honest gaps; bind compose to Accept + mapping; budget spikes; fail-fast on unknown forms.  
**MUST NOT:** shrink Media wishes to “just a table” without gap; free production layout outside catalog; claim paraphrase; auto-heal compile loops.

## Normal path (production quality bar)

```text
Brief + Feasibility + Accept(yes) + Content (C, read-only)
  → chapter.typ (stable catalog forms + BASIS only)
  → validate → PDF
```

| Input | Owner | Notes |
|---|---|---|
| Content MD + Critical Claims | C | Read-only; copy-through claims |
| Media Brief path | B | Section intent in prose |
| Feasibility note | Tech | Status per section; pin `catalog_version` |
| Accept record = accept | Media | Or documented pilot exception |

Without Accept (or exception flag): **do not** emit production `.typ` as “done”.

## EXCEPTION_NO_BRIEF

Allowed **only** for smoke tests, platform fixtures, legacy comparison — **not** the didactic quality bar.

```text
// EXCEPTION_NO_BRIEF: <reason> — not a production quality claim
```

A chapter that only had C1+E without Media path is **not** didactically accepted.

## Feasibility procedure

**Template:** `toolset/compose/templates/feasibility-note.template.md`

1. Read Media Brief + catalog; pin **`toolset/form-catalog/VERSION`** (mirrors `version:` in `core/forms.yaml`). Forms: `core/forms.yaml` (`stable` only for production map). Basis: `core/BASIS.md`.
2. For **each** brief section, exactly one status:

| status | Meaning | Action |
|---|---|---|
| `mapped` | 1:1 stable catalog form | Record `form_id` |
| `approx` | Close; compromise explicit | `form_id` + notes (what differs) |
| `gap` | Missing | `gap_name` + file under Catalog gaps |
| `experiment` | Uncertain / new | Recommend spike; do not silent-compose |

3. Meta: `chapter_id`, `brief_path`, **`catalog_version`**, `bookkit_version`, author, date.
4. Spike recommended? yes/no + one-sentence goal. Ready for Media Accept? yes / blockers.
5. **Write the feasibility file** — chat without artifact is incomplete.

Suggested path: `…/<slug>.feasibility.md`. Never turn feasibility into a second free Brief — status enum + short notes only.

## Spike (optional, budgeted)

See `toolset/compose/spikes/README.md`.

- One goal (one form/pattern). Minimal bookkit `.typ` → PDF/PNG under `dist/spikes/` or pilot folder.
- Default pilot budget: **≤1 spike per chapter** (or per wave if pilot says so).
- Spike is **not** production SoT; Media Accept decides promote vs. discard.
- One build, evaluate — no auto-heal loop.

```bash
./scripts/bookkit build --root . --entry path/to/spike.typ
```

## Compose rules (C1)

Only after **Accept = yes** (or documented exception).

1. **Whitelist:** only `status: stable` form ids + constructs in `BASIS.md`.
2. **NEVER free layout primitives** in production (no ad-hoc page chrome, decorative `#rect`/`#place`, uncatalogued full-bleed, unpinned `@preview` — see BASIS forbidden list).
3. **Claims copy-through** verbatim (normalized whitespace ok). **NEVER** paraphrase claims.
4. **Pin catalog version** in file header:

```typst
// compose-chapter
// catalog_version: 0.1.0-dev
// brief: <path>
// feasibility: <path>
// accept: <path>
// content: <path>
```

5. Map sections per accepted feasibility (`mapped`/`approx` only). Unresolved `gap`/`experiment` → do not pretend mapped; escalate or exception.
6. Load **`bookkit`** for API, **`typst-writer`** for syntax:

```typst
#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *  // if mapping needs didactics
```

7. **One-shot compose** toward validate — no self-healing re-prompt loop on compile/diff fail.

## Validate (E)

Engine: `toolset/compose/` (see `toolset/compose/README.md`). Preferred CLI:

```bash
python3 toolset/compose/scripts/run_validate.py \
  --typ path/to/chapter.typ \
  --content path/to/content.md \
  --catalog toolset/form-catalog/core/forms.yaml \
  --accept path/to/accept.md \
  --genre-minima path/to/genre.minima.yaml \
  --root . \
  --font-path fonts \
  --out-pdf dist/chapter.pdf
# smoke only (no accept auth): add --exception-no-brief
# unit path without typst: add --skip-compile
```

**Fail-fast checks:** forms ⊆ catalog (`stable`); genre minima/gatekeeper (if `--genre-minima`); critical-claims strict (normalized from content); soft body similarity (warn); `typst compile --ignore-system-fonts --font-path fonts`; post-hoc intent from `.typ`; Accept present and authorized **or** `--exception-no-brief`.

On fail: **report and stop**. No auto-retry compose loops. New run only after conscious Human/Tech decision.

## Iteration caps

| Loop | Max (v0.1) | Then |
|---|---|---|
| Media ↔ Tech (feasibility / spike / accept) | **2** full rounds | **Human** decision |
| Compose → validate fail | **no** auto-heal | one shot; report fail |
| Media ↔ Author | N/A here | Human / media-brief |

Do not open a third Media↔Tech round without Human.

## Catalog gap filing

When status is `gap` (or spike shows need):

1. Record in feasibility “Catalog gaps to file”.
2. Follow `toolset/form-catalog/core/GAP-PROCESS.md` — propose `id`, purpose, why not approx, owner.
3. Land as `status: planned` in `core/forms.yaml` (or issue/PR) — **visible debt**, never silent table-only substitute.
4. Production compose uses form only after promotion to **`stable`** (real bookkit export).

Reusable form ids land in **core** (Produkt A); domain may file from Media.

## ALWAYS / NEVER

| ALWAYS | NEVER |
|---|---|
| Pin `catalog_version` in feasibility + chapter header | Free layout primitives outside catalog+BASIS |
| Map every brief section to mapped\|approx\|gap\|experiment | Claim paraphrase / content rewrite |
| Compose only post-Accept (or documented exception) | Auto-heal compile/validate retry loops |
| Fail-fast on unknown forms | Quietly degrade ideal to “just table” without gap |
| Spike only for experiment/unclear; budgeted | Treat spike as production SoT |
| Report validate fail and stop | Skip Accept for real production under time pressure |
| Point Media at feasibility/spike paths | Author gold briefs or free ideal here |

## Boundary vs `media-brief`

| Tech (`compose-chapter`) | Media (`media-brief`) |
|---|---|
| Feasibility, spikes, compose, validate | Free ideal, section prose, wishlist, Accept |
| form-catalog core + BASIS whitelist | Genre recipes as function checklists (B) |
| Platform A: `toolset/compose/`, skill-pack | Domain B: `domains/medical/` |
| Does not invent didactic ideal when Brief exists | Does not write production `.typ` |

If both roles appear in one session: finish Brief or Accept as a file first (`media-brief`); then switch **explicitly** to this skill for Tech work.

## Related paths

| Artifact | Path |
|---|---|
| Feasibility template | `toolset/compose/templates/feasibility-note.template.md` |
| Compose engine / validate | `toolset/compose/` · CLI `scripts/run_validate.py` |
| Spikes | `toolset/compose/spikes/README.md` |
| Catalog VERSION / forms / BASIS / gaps | `toolset/form-catalog/VERSION`, `core/forms.yaml`, `core/BASIS.md`, `core/GAP-PROCESS.md` |
| bookkit API skill | `toolset/skill-pack/bookkit/SKILL.md` |
| Media skill (B) | `domains/medical/skill/media-brief/` |
| Governance | `devtracks/CONSENSUS-v0.md`, `compose-pipeline/spec.md`, `PRODUCT-BOUNDARIES.md` |

Produkt **A** engine is domain-agnostic. Content paths from **C** (never hardcode Kursbuch tree into validate core). Domain briefs/recipes from **B**. For bookkit signatures and assembly order, load **`bookkit`** — this skill owns process gates, not the full API surface.
