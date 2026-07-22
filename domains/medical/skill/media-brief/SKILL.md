---
name: media-brief
description: "ALWAYS use when drafting or revising a Media Brief, Form Spec for ambitious visual units, didactic media design intent, gold brief, accept record, freies Mediendesign, presentation intent for notfall-karte / lerntext / fallbasiert, or Media Accept after Tech feasibility/spike/graphics. Covers ideal-first Media role (Produkt B): highest creativity and medical-pedagogical best form first (detailed Form Spec) — catalog never cages ideation. Do NOT use for writing production .typ, free-vision PNG generation, compose-chapter, claim rewrite, or form-id shopping."
---

# media-brief (Domain medical — Produkt B)

Executable procedure for the **Media** role: free didactic–media ideal → **Form Spec** (ambitious units) → Media Brief → Accept after Tech/Graphics.

**Why (presentation forms):** `Guides/Medical-Presentation-Forms.md`

**SoT of this skill:** `domains/medical/skill/media-brief/` (Produkt B).  
**Not** platform foundation; not a substitute for `compose-chapter` / Tech.  
**Policy (Tech side):** `toolset/compose/CREATIVE-COMPOSE.md` — creative-first realization is the default after Accept.

## When to use

- Authoring or revising a **Media Brief** for a chapter/section
- **Gold brief** examples under `domains/medical/briefs/`
- **Accept / revise / reject** after Tech feasibility note or spike
- Genre presentation intent (`notfall-karte`, `lerntext`, `fallbasiert`, …)
- Freies Mediendesign before any catalog mapping

## When NOT to use

| Situation | Use instead |
|---|---|
| Writing production `.typ` / bookkit calls | `compose-chapter` + `bookkit` + `typst-writer` (Wave 3 / Tech) |
| Code vs asset vs hybrid / A/B graphic production | `medical-graphics` (after Brief; during Feasibility) |
| Choosing form ids as the *first* design step | Stay here — free ideal first; Tech maps later |
| Rewriting clinical claims or body content | Author / Content workspace (Produkt C) |
| Feasibility matrix, spikes, catalog gaps as implementer | Tech / `compose-pipeline` (+ Graphics for visual units) |
| Monologue design talk with no Brief/Accept file | Stop — produce an artifact |

## Role: Media (ideal first — catalog is not a cage)

```text
Autor (C) ──► Media Brief (this skill) ──► Tech Feasibility ◄──► Graphics (visual units)
                     ▲                            │                      │
                     └──── Accept / Revise ◄──────┴── spikes (code/asset/A/B)
                                │ accept
                                ▼
                          Compose + Validate (Tech — creative-first)
```

Media designs the **best medical-pedagogical presentation** (flows, lanes, spreads, hierarchy) **without** asking first what is catalog-stable. For **ambitious visual units**, Media writes a **Form Spec** (Must-see, zones, claim pins, genre chrome, success criterion) so Graphics can free-vision and recreate without inventing pedagogy.  
Tech **realizes** accepted winners. **Graphics** runs free vision → claim audit → recreate/hybrid/refine. Media **accepts** proximity to Form Spec / ideal — not “only stable forms”.

**MUST:** unit→hypothesis; free ideal; **Form Spec for free-vision-required units**; surface ambitious presentation; evaluate proposals against Form Spec Must-see; ask Author only targeted questions.  
**MUST NOT:** change Critical Claims; build the Brief as a form-id shopping list; pre-shrink the ideal to “what we know compiles”; accept monotony just because validate is green; leave Graphics to invent the pedagogical form.

## Inputs

| Input | Required | Notes |
|---|---|---|
| Content path (Produkt **C**) | yes | Read-only; never copy as SoT into this repo |
| Genre recipe path | optional | Functional checklist, not exclusive form list — e.g. `domains/medical/recipes/notfall-karte.md` |
| Existing Brief / Feasibility / Spike | when accepting | Paths for Accept record |
| Freeze record + `content_revision` | **production** briefs | From content-maturity C3; see `domains/content-maturity/` |

Optional: `catalog_version_seen` for awareness only — **do not** limit ideation to it.  
The preferred form library is a **hint**, never a design ceiling.

### Production vs exploration (`brief_class`)

| `brief_class` | When | May authorize production compose? |
|---|---|---|
| `exploration` | draft/review content; visual exploration | **No** |
| `production` | after Human freeze; pin `content_revision` | Yes, after Accept + freeze checks |

Exploration is allowed **in parallel** with content-review. It never replaces freeze.

## Process (Brief + Form Spec)

1. **Design reasoning (compact)** — load [`references/design-reasoning.md`](references/design-reasoning.md). For each content unit (heading/role only): **unit type → learner job → load risk → presentation hypothesis → recipe function** (if any). No claim paraphrase; **no form ids** (hypotheses are pattern names: urgency-lane, branching flowchart, protocol sequence, case frame, …).
2. **ALWAYS free ideal next** — overall presentation goal for the learner/actor (not clinical restatement; not bookkit APIs). Ask: *what is the hypothetically best didactic presentation?* Including ambitious visuals (true flowcharts, triage lanes, dual-channel diagrams).
3. **Section plan in prose** — for each section: content anchor, ideal presentation, priority / page intent. Optional **hypothesis** column. Genre recipe = **function checklist**, not form cage.
4. **Form Spec (ambitious visual units) — REQUIRED when free-vision ambition is high**  
   - Template: `domains/medical/templates/form-spec.template.md`  
   - Path: `domains/medical/briefs/<slug>.form-spec.md` (one file per unit or multi-unit sections clearly headed)  
   - Fill: learner context, job, load risks, **zones**, **Must-see**, **claim pins** (copy-through C), genre chrome, invariants, success criterion, ambition flag  
   - Guide: `Guides/Medical-Presentation-Forms.md`  
   - Gold: `iv2-rueckenschmerz-neuro.form-spec.md`, `iii5-cauda-notfallkarte.form-spec.md`  
   - Skip Form Spec only for trivial units (`ambition: skip`) documented in Brief.
5. **Wishlist / ambitious patterns** — explicit wishlist with why + severity. Visible ambition is success.
6. **Author questions** — targeted only; no claim rewrite.
7. **Explicit non-goals** — include “no clinical simplification in layout”.
8. **NEVER production Typst** — no `.typ` / bookkit sketches as Brief body.
9. **Write artifacts** — Brief + Form Spec files. Chat without files is incomplete.

Keep reasoning **short** in the Brief table; put detail in Form Spec.

## Output: Media Brief

**Template:** `domains/medical/templates/media-brief.template.md`

Fill all sections:

- Meta: `chapter_id`, `genre`, `content_source` (C path), `content_status`, `content_revision`, `brief_class`, `freeze_path` (if production), `author_media`, `date`, optional `catalog_version_seen`
- **Design reasoning** (compact table — see template; unit → hypothesis)
- **Overall presentation goal**
- **Section plan** table (prose ideal — no required form ids)
- **Wishlist outside current catalog**
- **Author questions**
- **Explicit non-goals**

**Suggested write path:** `domains/medical/briefs/<chapter-or-slug>.brief.md` (pilot/gold) or the path agreed with the orchestrator.  
**Gold examples:** when present, study files under `domains/medical/briefs/` (e.g. Notfallkarte pilot) before inventing structure.

### Genre recipes as checklist (not cage)

- Recipe says *what functions* the reader needs (e.g. F1 gatekeeper), not “only form X”.
- Typical form ids in recipes are **hints for Tech**, not Media’s ideation vocabulary.
- Anti-pattern: Brief that is only a list of catalog ids with no prose ideal / no wishlist (violates explore-then-constrain).

## Accept-record procedure (after Feasibility / Spike)

When Tech returns a feasibility note and optional spike PDF/PNG (and optional Graphics Decision Note / A/B candidates):

1. Read Brief + **Form Spec** + Feasibility (+ spikes; + `*.graphics.md` if present).
2. Per overall + strittige Abschnitte: **`accept` | `revise` | `reject`** + 1–3 sentence note.
3. Run the **Accept rubric** in [`references/design-reasoning.md`](references/design-reasoning.md) §5 (gatekeeper findable, action louder than sources, order visible, urgency not flattened, **flows look like flows**, **not box monotony**, no claim rewrite).
4. **Form Spec proximity:** Does the winner meet **Must-see** and genre chrome? If free-vision unit has no Form Spec → revise Media first or document exception.
5. If graphic candidates / A/B: pick **winner** by ideal proximity + learner job + Form Spec success criterion (not “prettiest PNG”); note carrier (`code`|`hybrid`|`asset`). Raster winner only if claim audit PASS + gates (see medical-graphics playbook 06).
6. If Tech/Graphics fell back from wishlist/ideal without documented attempt: **revise**.
7. If **revise**: state required changes (artifact, not chat-only).
8. Check **Production compose authorized?** only on accept path.
9. For **production** Accept: verify freeze pin. Exploration must not authorize production compose.
10. Write Accept record from **`domains/medical/templates/accept-record.template.md`** (include `form_spec_path`, graphic winners).

Suggested path: `domains/medical/briefs/<slug>.accept.md` (or next to feasibility).

**Compose may run only after Media accept** (or a documented pilot exception — not the quality bar).  
**Production compose** also requires content freeze (validate `--profile production`).

### Checkpoints (Human)

See `domains/content-maturity/checkpoints.md`:

- **H1** Content Freeze before production brief quality  
- **H2** This Accept (production) before compose

## Iteration caps

| Loop | Max (v0.1 default) | Then |
|---|---|---|
| Media ↔ Tech (feasibility / spike / accept) | **2** full rounds | **Human** decision |
| Media ↔ Author | as needed, **Human** | no agent endless chat |
| Compose → validate fail | N/A here | Tech; no Media auto-heal |

Do not open a third Media↔Tech round without Human.

## ALWAYS / NEVER

| ALWAYS | NEVER |
|---|---|
| Unit→hypothesis **before** any form-id thought | Production `.typ` / bookkit layout in this skill |
| Free ideal = hypothetically **best** presentation | Pre-shrink ideal to “what maps to stable” |
| **Form Spec** for free-vision-required units | Leave pedagogical form to Graphics alone |
| Claim pins = copy-through from C | Invent thresholds in Form Spec |
| Visible wishlist / ambitious patterns | Critical Claim rewrite |
| Accept on proximity to **Form Spec / ideal** | Accept monotony because catalog green |
| Emit Brief / Form Spec / Accept **files** | Design monologue without artifact |
| Treat recipes as functional checklists | Brief = form-id shopping list only |
| Stop at 2 Media↔Tech rounds → Human | Implement feasibility/spike yourself |
| Point Graphics at Form Spec path | Generate free-vision PNGs in this skill |

## Boundary vs Tech / Graphics

| Media (`media-brief`) | Tech (`compose-chapter`) | Graphics (`medical-graphics`) |
|---|---|---|
| Ideal + **Form Spec** + wishlist + author Qs | Compose + validate; embed winners | Free vision → audit → recreate/hybrid/refine |
| Accept / revise / reject (Form Spec proximity) | Full toolkit | Does not invent Form Spec or own Accept |
| Domain B | Platform A | Domain B |
| Does not write production `.typ` | Does not invent didactic ideal | Does not rewrite claims |

If multiple roles appear in one session: **finish Brief (or Accept) as a file first**; switch skills explicitly for Tech/Graphics work.

## Related paths

| Artifact | Path |
|---|---|
| Design reasoning (B-core) | `domains/medical/skill/media-brief/references/design-reasoning.md` |
| Presentation forms guide | `Guides/Medical-Presentation-Forms.md` |
| Form Spec template | `domains/medical/templates/form-spec.template.md` |
| Brief template | `domains/medical/templates/media-brief.template.md` |
| Accept template | `domains/medical/templates/accept-record.template.md` |
| Graphics Decision template | `domains/medical/templates/graphic-decision.template.md` |
| Graphics skill / playbook | `domains/medical/skill/medical-graphics/` |
| Recipes | `domains/medical/recipes/` |
| Briefs / gold | `domains/medical/briefs/` |
| Ownership | `domains/medical/OWNERSHIP.md` |
| Knowledge library (archived, compressed) | `devtracks/_archive/medical-knowledge-design-competencies/` |
| Governance | `devtracks/CONSENSUS-v0.md` (ADR 10–17), `devtracks/media-design/spec.md`, `devtracks/PRODUCT-BOUNDARIES.md` |

## Product note

Produkt **B** transitional home: `domains/medical/`. Split-ready; do not fold medical genre logic into `packages/bookkit` foundation.
