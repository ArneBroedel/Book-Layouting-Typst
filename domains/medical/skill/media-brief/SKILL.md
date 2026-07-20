---
name: media-brief
description: "ALWAYS use when drafting or revising a Media Brief, didactic media design intent, gold brief, accept record, freies Mediendesign, presentation intent for notfall-karte / lerntext / fallbasiert, or Media Accept after Tech feasibility/spike. Covers ideal-first Media role (Produkt B): highest creativity and medical-pedagogical best form first — catalog never cages ideation. Do NOT use for writing production .typ, compose-chapter as the only thinking step, claim rewrite, or form-id shopping."
---

# media-brief (Domain medical — Produkt B)

Executable procedure for the **Media** role: free didactic–media ideal → Media Brief artifact → Accept after Tech feasibility/spike.

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
| Choosing form ids as the *first* design step | Stay here — free ideal first; Tech maps later |
| Rewriting clinical claims or body content | Author / Content workspace (Produkt C) |
| Feasibility matrix, spikes, catalog gaps as implementer | Tech / `compose-pipeline` |
| Monologue design talk with no Brief/Accept file | Stop — produce an artifact |

## Role: Media (ideal first — catalog is not a cage)

```text
Autor (C) ──► Media Brief (this skill) ──► Tech Feasibility / Spike / full toolkit
                     ▲                            │
                     └──── Accept / Revise ◄──────┘
                                │ accept
                                ▼
                          Compose + Validate (Tech — creative-first)
```

Media designs the **best medical-pedagogical presentation** (flows, lanes, spreads, hierarchy) **without** asking first what is catalog-stable.  
Tech **realizes** that ideal with the full toolkit (prefer known-good only when it *is* best). Media **accepts** proximity to the ideal — not “only stable forms”.

**MUST:** unit→hypothesis; free ideal; surface ambitious presentation (flowcharts, triage lanes, custom diagrams); evaluate Tech proposals against the ideal; ask Author only targeted questions.  
**MUST NOT:** change Critical Claims; build the Brief as a form-id shopping list; pre-shrink the ideal to “what we know compiles”; accept monotony just because validate is green.

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

## Process (Brief)

1. **Design reasoning (compact)** — load [`references/design-reasoning.md`](references/design-reasoning.md). For each content unit (heading/role only): **unit type → learner job → load risk → presentation hypothesis → recipe function** (if any). No claim paraphrase; **no form ids** (hypotheses are pattern names: urgency-lane, branching flowchart, protocol sequence, case frame, …).
2. **ALWAYS free ideal next** — overall presentation goal for the learner/actor (not clinical restatement; not bookkit APIs). Ask: *what is the hypothetically best didactic presentation?* Including ambitious visuals (true flowcharts, triage lanes, dual-channel diagrams).
3. **Section plan in prose** — for each section: content anchor, ideal presentation, priority / page intent. Optional **hypothesis** column. Genre recipe = **function checklist**, not form cage.
4. **Wishlist / ambitious patterns** — explicit `wishlist_outside_catalog[]` (or “beyond preferred library”) with why + severity. Visible ambition is success. Tech is expected to **try** these, not silently drop them.
5. **Author questions** — only targeted Human questions; do **not** rewrite claims or invent clinical content.
6. **Explicit non-goals** — what this Brief is not trying to do (include “no clinical simplification in layout”).
7. **NEVER production Typst** — no `.typ`, no bookkit call sketches as the Brief body.
8. **Write the artifact** — Markdown using the template (below). Chat without a file update is incomplete.

Keep reasoning **short** (table or few lines). Do not paste the full reference into the Brief.

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

When Tech returns a feasibility note and optional spike PDF/PNG:

1. Read Brief + Feasibility (+ spike visuals if any).
2. Per overall + strittige Abschnitte: **`accept` | `revise` | `reject`** + 1–3 sentence note.
3. Run the **Accept rubric** in [`references/design-reasoning.md`](references/design-reasoning.md) §5 (gatekeeper findable, action louder than sources, order visible, urgency not flattened, **flows look like flows**, **not box monotony**, no claim rewrite).
4. If Tech fell back from wishlist/ideal without a documented attempt: **revise** — demand spike or better realization.
5. If **revise**: state what Tech must change before compose (artifact, not chat-only).
6. Check **Production compose authorized?** only on accept path.
7. For **production** Accept: verify freeze pin (`content_status: frozen`, `content_revision` match). Exploration Accept must **not** check production compose yes.
8. Write Accept record from **`domains/medical/templates/accept-record.template.md`**.

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
| Visible wishlist / ambitious patterns | Critical Claim rewrite or new clinical thresholds |
| Accept on proximity to **ideal** (incl. visual quality) | Accept monotony because catalog/minima green |
| Emit Brief or Accept **file** from templates | Design monologue without artifact update |
| Treat recipes as functional checklists | Brief = form-id shopping list only |
| Stop at 2 Media↔Tech rounds → Human | Implement feasibility/spike yourself |
| Point Tech at Brief path; stay out of compose | Load full med-ed library into every Brief |

## Boundary vs Tech / `compose-chapter`

| Media (`media-brief`) | Tech (`compose-chapter` / feasibility) |
|---|---|
| Ideal presentation, section prose, wishlist, author Qs | Realize ideal → `mapped` / `custom` / `approx` / `gap` / `experiment` |
| Accept / revise / reject (visual quality counts) | Full toolkit compose; spike when ambitious; fallback only if ideal fails |
| Domain B (`domains/medical/`) | Platform A (`toolset/compose/`, preferred form library, bookkit) |
| Does not write production `.typ` | Catalog inventory advisory by default (`creative` mode) |

If both roles appear in one session: **finish Brief (or Accept) as a file first**; switch skills explicitly for Tech work.

## Related paths

| Artifact | Path |
|---|---|
| Design reasoning (B-core) | `domains/medical/skill/media-brief/references/design-reasoning.md` |
| Brief template | `domains/medical/templates/media-brief.template.md` |
| Accept template | `domains/medical/templates/accept-record.template.md` |
| Recipes | `domains/medical/recipes/` |
| Briefs / gold | `domains/medical/briefs/` |
| Ownership | `domains/medical/OWNERSHIP.md` |
| Knowledge library (archived, compressed) | `devtracks/_archive/medical-knowledge-design-competencies/` |
| Governance | `devtracks/CONSENSUS-v0.md` (ADR 10–17), `devtracks/media-design/spec.md`, `devtracks/PRODUCT-BOUNDARIES.md` |

## Product note

Produkt **B** transitional home: `domains/medical/`. Split-ready; do not fold medical genre logic into `packages/bookkit` foundation.
