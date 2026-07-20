---
name: compose-chapter
description: "ALWAYS use for Tech compose: feasibility after Media Brief, spike when ideal needs new patterns, realize best didactic presentation with full Typst/bookkit/@preview (creative-first), fallback only if ideal fails, validate (claims/compile; catalog advisory). Covers Produkt A compose-pipeline. Do NOT use for free didactic ideal authorship, gold brief prose, Media Accept wording, or media-brief drafting — those stay media-brief (Produkt B)."
---

# compose-chapter (Platform Tech — Produkt A)

Executable procedure for the **Tech** role: Feasibility → optional Spike → Compose (post-Accept) → Validate.

**SoT:** `toolset/skill-pack/compose-chapter/` (Produkt A). Not Media design; not a substitute for `media-brief`.  
**Policy:** [`toolset/compose/CREATIVE-COMPOSE.md`](../../compose/CREATIVE-COMPOSE.md) — **creative-first** is the default.  
Governing: `devtracks/CONSENSUS-v0.md`, `devtracks/PRODUCT-BOUNDARIES.md`.

## When to use

- **Feasibility note** from Media Brief (how to realize the ideal)
- **Spike** for new visual patterns (flowcharts, urgency lanes, custom diagrams)
- **Compose** `chapter.typ` after Media Accept — **full creative toolkit**
- **Validate** (claims, compile, accept; catalog inventory advisory by default)
- **Catalog-gap** filing when a custom pattern should become a reusable form
- Smoke/platform tests under documented `EXCEPTION_NO_BRIEF` only

## When NOT to use

| Situation | Use instead |
|---|---|
| Free didactic ideal, gold brief, Media Accept prose | `media-brief` (Produkt B) |
| bookkit API / setup / design-brief details | `bookkit` |
| General Typst syntax / layout debug | `typst-writer` |
| `@preview` package choice / typst.toml | `typst-extension` |
| Rewriting Critical Claims or clinical body | Author / Content (Produkt C) |
| Content-Review / freeze recommendation | `content-review` (Produkt C process) |
| Inventing layout without Accept (real production) | Stop — need Brief + Feasibility + Accept (+ Freeze for production) |

## Role: Tech (realize ideal — do not shrink first)

```text
Media Brief (ideal, free) ──► Feasibility (realization ladder) ──► Spike?
         │                              │ accept
         │                       Compose chapter.typ  (full toolkit)
         │                              │
         └──── Accept proximity ◄── Validate (claims + compile hard;
                                      catalog inventory soft by default)
```

Tech **realizes** the Media ideal with the best technical means available.  
Media **accepts** proximity to that ideal — not “compile green + only stable forms”.

**MUST:** start from the Brief ideal; prefer known-good forms **only when they are the best presentation**; try diagrams/custom/spike before falling back; honest fallback notes; claims copy-through; fail-fast on compile (no auto-heal).  
**MUST NOT:** default to “what fits `stable`?”; squeeze ideal into table/callout monotony; claim paraphrase; skip Accept for real production.

## Creative-first (default)

```text
1. Ideal presentation (from Brief)     — what should the learner *see*?
2. Best technical realization          — bookkit · didactics · CeTZ/Fletcher ·
                                         custom #let · page helpers · @preview
3. Prefer stable catalog forms         — ONLY if they match the ideal
4. Fallback simpler pattern            — ONLY if ideal truly fails
                                         (document why in feasibility)
```

See full policy: `toolset/compose/CREATIVE-COMPOSE.md`.

### Realization ladder (per section)

| Step | Status label | Meaning |
|---|---|---|
| Ideal = stable form | `mapped` | Record `form_id` |
| Ideal via composed/custom layout | `custom` | Describe pattern (e.g. Fletcher flowchart, dual-column algorithm) |
| Close but compromised | `approx` | form or pattern + what differs from ideal |
| Needs new reusable API | `gap` | `gap_name` + implement custom now **and/or** file catalog gap |
| Uncertain | `experiment` | Spike first |

**Legacy labels `mapped|approx|gap|experiment` still valid;** add `custom` when using non-catalog realization of the ideal.

## Normal path (quality bar)

```text
Brief + Feasibility + Accept(yes) + Content (C, read-only)
  → chapter.typ (best presentation; full toolkit)
  → validate (creative mode default) → PDF
```

| Input | Owner | Notes |
|---|---|---|
| Content MD + Critical Claims | C | Read-only; copy-through claims |
| Media Brief path | B | Free ideal / section plan |
| Feasibility note | Tech | Realization plan per section; pin tools used |
| Accept record = accept | Media | Proximity to ideal — not whitelist green |

Without Accept (or exception flag): **do not** emit production `.typ` as “done”.

## EXCEPTION_NO_BRIEF

Allowed **only** for smoke tests, platform fixtures, legacy comparison — **not** the didactic quality bar.

```text
// EXCEPTION_NO_BRIEF: <reason> — not a production quality claim
```

## Feasibility procedure

**Template:** `toolset/compose/templates/feasibility-note.template.md`

1. Read Media Brief **as design authority** — do not open forms.yaml first.
2. For each section: state how the **ideal** will be realized (ladder above). Prefer `mapped` only when stable form = best shape.
3. Pin optional `catalog_version` for preferred library awareness — **not** a cage.
4. Spike recommended? yes/no + goal (especially for flowcharts, triage lanes, custom diagrams).
5. Ready for Media Accept? yes / blockers.
6. **Write the feasibility file.**

Suggested path: `…/<slug>.feasibility.md`.

## Spike (encouraged for ambitious ideals)

See `toolset/compose/spikes/README.md`.

- One visual goal (e.g. branching decision flowchart, urgency-lane table).
- Minimal `.typ` → PDF/PNG under `dist/spikes/` or pilot folder.
- Full creative surface allowed (CeTZ, Fletcher, custom modules).
- Spike is **not** production SoT until Media Accept + compose promote.
- One build, evaluate — no auto-heal loop.

```bash
./scripts/bookkit build --root . --entry path/to/spike.typ
# or:
typst compile --root . --ignore-system-fonts --font-path fonts path/to/spike.typ dist/spikes/out.pdf
```

## Compose rules (C1)

Only after **Accept = yes** (or documented exception).

1. **Realize the accepted ideal** — full toolkit:
   - stable bookkit / bookkit-didactics forms when they *are* the best shape
   - planned patterns implemented ad-hoc (flowchart, decision-table chrome, timeline)
   - CeTZ / Fletcher / other `@preview` packages (pin versions; load `typst-extension`)
   - local `#let` helpers, `#grid`/`#stack`/`#place` when the design needs them
   - page-design / spread helpers from packages when appropriate
2. **Prefer known-good** only as *quality preference*, never as *exclusive whitelist*.
3. **Fallback** to simpler forms only after attempt; record in header/feasibility.
4. **Claims copy-through** verbatim (normalized whitespace ok). **NEVER** paraphrase claims.
5. **Pin paths** in file header:

```typst
// compose-chapter
// creative-first: true
// catalog_version: 0.1.0   // preferred library pin (advisory)
// brief: <path>
// feasibility: <path>
// accept: <path>
// content: <path>
// content_revision: git:<short> | sha256:<hex>   // production: must match freeze
// freeze: <path>                                 // production
// tools: bookkit, bookkit-didactics, cetz?, fletcher?, custom-module?
```

**Production quality:** content must be **Human-frozen** (`domains/content-maturity/`).  
Validate with `--profile production --freeze path/to/freeze.md`.  
Smoke/platform: `--profile smoke` (default) may omit freeze.

**Checkpoints:** freeze fail → **H1**. Media Accept → **H2**.

6. Load **`bookkit`**, **`typst-writer`**, and **`typst-extension`** when using packages:

```typst
#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *
// optional for ideal flows:
// #import "@preview/cetz:0.3.4"
// #import "@preview/fletcher:0.5.7"
```

7. **One-shot compose** toward validate — no self-healing re-prompt loop on compile fail.

## Validate (E)

Engine: `toolset/compose/` · Policy: `CREATIVE-COMPOSE.md`.

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
# default whitelist-mode=creative (catalog advisory)
# legacy hard catalog: --whitelist-mode strict
# production freeze: --profile production --freeze path/to/freeze.md
# smoke without accept: --exception-no-brief --profile smoke
```

**Hard checks:** compile; critical-claims strict; accept (or exception); freeze on production profile.  
**Soft (default):** catalog inventory — planned/custom form-like calls **warn**, do not fail.  
**Optional hard:** `--whitelist-mode strict` for legacy audits only.  
Genre minima remain available when a path is passed (didactic floor, not form cage).

On hard fail: **report and stop**. No auto-retry compose loops.

## Iteration caps

| Loop | Max (v0.1) | Then |
|---|---|---|
| Media ↔ Tech (feasibility / spike / accept) | **2** full rounds | **Human** decision |
| Compose → validate fail | **no** auto-heal | one shot; report fail |
| Media ↔ Author | N/A here | Human / media-brief |

## Catalog gap filing

When ideal needs a **reusable** pattern:

1. Implement for the chapter if needed (`custom` / spike).
2. Record under feasibility “Catalog gaps to file”.
3. Follow `toolset/form-catalog/core/GAP-PROCESS.md` so the preferred library grows.
4. Do **not** wait for `stable` before shipping a good layout — file the gap so the next chapter reuses it cleanly.

## ALWAYS / NEVER

| ALWAYS | NEVER |
|---|---|
| Start from Media ideal, not from forms.yaml | Open catalog first and squeeze content into it |
| Prefer stable forms only when they match the ideal | Treat stable∪BASIS as exclusive production surface |
| Try diagram/custom/spike before silent table fallback | Quiet monotony (“just callout + styled-table”) |
| Document fallbacks honestly | Claim paraphrase / content rewrite |
| Compose post-Accept (or documented exception) | Auto-heal compile/validate retry loops |
| Claims copy-through | Skip Accept under time pressure for real production |
| Validate with creative mode (default) | Fail a good design solely for using Fletcher/custom |

## Boundary vs `media-brief`

| Tech (`compose-chapter`) | Media (`media-brief`) |
|---|---|
| Realize ideal; spikes; compose; validate | Free ideal, section prose, wishlist, Accept |
| Full toolkit + preferred catalog library | Genre recipes as function checklists (B) |
| Platform A: `toolset/compose/`, skill-pack | Domain B: `domains/medical/` |
| Does not invent didactic ideal when Brief exists | Does not write production `.typ` |

If both roles appear in one session: finish Brief (or Accept) as a file first; switch skills explicitly for Tech work.

## Related paths

| Artifact | Path |
|---|---|
| **Creative-first policy** | `toolset/compose/CREATIVE-COMPOSE.md` |
| Feasibility template | `toolset/compose/templates/feasibility-note.template.md` |
| Compose engine / validate | `toolset/compose/` · CLI `scripts/run_validate.py` |
| Spikes | `toolset/compose/spikes/README.md` |
| Preferred library | `toolset/form-catalog/VERSION`, `core/forms.yaml`, `core/BASIS.md` |
| bookkit API skill | `toolset/skill-pack/bookkit/SKILL.md` |
| Media skill (B) | `domains/medical/skill/media-brief/` |
| Governance | `devtracks/CONSENSUS-v0.md`, `PRODUCT-BOUNDARIES.md` |

Produkt **A** engine is domain-agnostic. Content paths from **C**. Domain briefs/recipes from **B**.
