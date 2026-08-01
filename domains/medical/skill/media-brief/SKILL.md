---
name: media-brief
description: "ALWAYS use when drafting or revising a Media Brief, Form Spec for ambitious visual units, didactic media design intent, gold brief, accept record, freies Mediendesign, presentation intent for notfall-karte / lerntext / fallbasiert / Krankheitslehre illness-script monographs (Teil V/VI), or Media Accept after Tech feasibility/spike/graphics. Use for KL form-space, TIME/SCOPE ontology, discrimination/mimic presentation intent. Covers ideal-first Media role (Produkt B): highest creativity and medical-pedagogical best form first (detailed Form Spec) — catalog never cages ideation. Do NOT use for writing production .typ, free-vision PNG generation, compose-chapter, claim rewrite, content template authorship, or form-id shopping."
---

# media-brief (Domain medical — Produkt B)

Executable procedure for the **Media** role: free didactic–media ideal → **Form Spec** + **Design Contract** → adversarial Design Critic until **Design CLEAN** → (Graphics realize + Visual CLEAN) → **Accept** only on CLEAN packets.

**Why (presentation forms):** `Guides/Medical-Presentation-Forms.md`  
**KL illness-script guide:** `Guides/KL-Form-Language.md`  
**Design-quality system:** `devtracks/design-quality-system/` (atom justification · dual critique · pre-Human clean)

**SoT of this skill:** `domains/medical/skill/media-brief/` (Produkt B).  
**Not** platform foundation; not a substitute for `compose-chapter` / Tech.  
**Policy (Tech side):** `toolset/compose/CREATIVE-COMPOSE.md` — creative-first realization is the default after Accept.

## When to use

- Authoring or revising a **Media Brief** for a chapter/section
- **Gold brief** examples under `domains/medical/briefs/`
- **Accept / revise / reject** after Tech feasibility note or spike
- Genre presentation intent (`notfall-karte`, `lerntext`, `fallbasiert`, …)
- Freies Mediendesign before any catalog mapping
- **Krankheitslehre / Illness Script** monographs: form-space, Form Specs, Accept for urgency/discrimination/mimic/spatial units

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

**MUST:** unit→hypothesis; free ideal; **Form Spec + Design Contract** for non-prose visual units; **Design Critic** until Design CLEAN (builder ≠ critic); simple-alternative doctrine; **space budget / density** (graphics only when gain is clear/essential *and* compact enough for book scale); atom-level justification (color/arrow/chrome); Accept only with Design CLEAN + Visual CLEAN; ask Author only targeted questions.  
**MUST NOT:** change Critical Claims; build the Brief as a form-id shopping list; pre-shrink the ideal to “what we know compiles”; accept monotony or dirty craft because validate is green; **ship sparse full-page graphics for thin content**; leave Graphics to invent the pedagogical form; **self-Accept** units you sole-built; ship exploration PDFs without Visual CLEAN; skip Design Critic.

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

## Krankheitslehre / Illness Script (load before Brief)

When the content is a **KL monograph** (Script 1–6, kl-kurz/kl-voll):

1. Load [`references/kl-illness-script-ontology.md`](references/kl-illness-script-ontology.md) — TIME/SCOPE, units, invariants, **no form-meta in figures**.  
2. Load [`references/kl-form-space-process.md`](references/kl-form-space-process.md) — grammar first, then ambition; R→C→M→G→Accept.  
3. Map units via Graphics library (for transfer, not as cage): `medical-graphics/references/kl-form-library.md`.  
4. Prefer pattern transfer of existing Form Specs (`kl-u-urgency-scope`, `kl-u-mimic`, `kl-u-discrimination`, spatial CES/MSCC) with **new claim pins** from C.  
5. Content claims/templates stay in Content workspace — Media only pins + presentation.

Exploration provenance: `domains/medical/briefs/_explorations/README.md` (not normative default).

## Process (Brief + Form Spec)

1. **Design reasoning (compact)** — load [`references/design-reasoning.md`](references/design-reasoning.md). For each content unit (heading/role only): **unit type → learner job → load risk → presentation hypothesis → recipe function** (if any). No claim paraphrase; **no form ids** (hypotheses are pattern names: urgency-lane, branching flowchart, protocol sequence, case frame, …). For KL: also check ontology unit ids (U-urgency, U-mimic, …).
2. **ALWAYS free ideal next** — overall presentation goal for the learner/actor (not clinical restatement; not bookkit APIs). Ask: *what is the hypothetically best didactic presentation?* Including ambitious visuals (true flowcharts, triage lanes, dual-channel diagrams). **At least one ambition slot** per KL chapter exploration when pedagogically justified (spatial, peel, free vision) — do not stop at box monotony.
3. **Section plan in prose** — for each section: content anchor, ideal presentation, priority / page intent. Optional **hypothesis** column. Genre recipe = **function checklist**, not form cage.
4. **Form Spec (ambitious / non-prose visual units)**  
   - Template: `domains/medical/templates/form-spec.template.md`  
   - Path: `domains/medical/briefs/<slug>.form-spec.md`  
   - Fill: learner context, job, **simple alternative**, load risks, **zones**, **Must-see**, **claim pins** (copy-through C), genre chrome, invariants, success criterion, ambition flag  
   - When free vision will **draw** criteria (ABCDE, scales, spatial signs): fill **Icon meaning** table  
   - Guide: `Guides/Medical-Presentation-Forms.md` · KL: `Guides/KL-Form-Language.md`  
   - Skip Form Spec only for pure prose (`ambition: skip`) documented in Brief.
5. **Design Contract (Phase D1) — REQUIRED for every non-prose visual unit**  
   - Template: `domains/medical/templates/design-contract.template.md`  
   - Path: `domains/medical/briefs/<slug>.design-contract.md` (or per-unit headed sections)  
   - **Atom table:** every color, arrow, border, hub, peel, chain, badge — with media-design + medical-pedagogy reason  
   - **Form intensity ladder (L0–L6):** lowest level that earns gain — see [`references/form-intensity-ladder.md`](references/form-intensity-ladder.md). **L2–L3 (formatted / panel text) is first-class middle path** before L4–L6 diagrams/raster.  
   - **Simple alternative** doctrine: if higher L is not clearly better under scan stress, **step down**  
   - **Space budget (required):** teaching gain vs next-lower L (`none|weak|clear|essential`) + max vertical budget (~⅛ / ¼ / ⅓ / ½ / ≤1 page). If gain ≤ weak → step down. Ambition must fit density — **sparse sprawl is not Design CLEAN**.  
   - Anti-theater list: rejected chrome
6. **Design Critic (Phase D2) — mandatory, separate role**  
   - Template: `domains/medical/templates/design-critique.template.md`  
   - Role **DC** attacks Contract + Form Spec; severity `block` | `should` | `nit`  
   - Attack **over-intensity**, **sparse-sprawl**, missing space budget as hard as unjustified chrome  
   - MD revises (D3) until status **clean** (budget: 4 rounds → H-Design / Human)  
   - **Forbidden:** free vision or realize with open design `block`  
   - Builder of Contract must **not** mark Design CLEAN alone
7. **Wishlist / ambitious patterns** — explicit wishlist with why + severity.
8. **Author questions** — targeted only; no claim rewrite.
9. **Explicit non-goals** — include “no clinical simplification in layout”; for KL: “no form-meta inside figures”.
10. **NEVER production Typst** — no `.typ` / bookkit sketches as Brief body.
11. **Write artifacts** — Brief + Form Spec + Design Contract + Design Critique. Chat without files is incomplete.

Keep reasoning **short** in the Brief table; put detail in Form Spec + Design Contract.

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

When Graphics/Tech return candidates — **only after Design CLEAN + Visual CLEAN**:

0. **Quality packet gate (hard):**  
   - Design Critic status **clean** for every non-prose unit  
   - Visual Critic status **clean** on **latest PNG set** for every graphic unit  
   - Quality packet (`*.quality-packet.md`) or equivalent table  
   - If missing → **revise** / stop — do **not** Accept. Exploration does **not** waive Visual CLEAN for didactic PDFs.  
   - Accepting Media (**AX**) must **not** be the sole builder of the implement under review.
1. Read Brief + **Form Spec** + **Design Contract** + Feasibility (+ spikes; + `*.graphics.md` + visual-critique).
2. Per overall + strittige Abschnitte: **`accept` | `revise` | `reject`** + 1–3 sentence note.
3. Run the **Accept rubric** in [`references/design-reasoning.md`](references/design-reasoning.md) §5 (minimum scan checks — **not** a substitute for Design/Visual CLEAN).
4. **Form Spec / Contract proximity:** winner meets Must-see + atom table; no uncontracted chrome.
5. Graphic winners: ideal proximity + learner job + success criterion; carrier `code`|`hybrid`|`asset`. Raster only if claim audit PASS + gates (playbook 06).
6. **Free-vision proximity (ambition):** pin-monotone → **revise**.
7. Confirm **embed path** for Tech.
8. Fallback from wishlist without attempt → **revise**.
9. If **revise**: required changes as artifact.
10. **Production compose authorized?** only on accept path + freeze.
11. Exploration may authorize exploration compose **only** with Visual CLEAN; never production.
12. Write Accept from **`domains/medical/templates/accept-record.template.md`** (CLEAN checkboxes + quality_packet_path).

Suggested path: `domains/medical/briefs/<slug>.accept.md`.

**Compose may run only after Media accept** (or documented smoke exception).  
**Production compose** also requires content freeze.

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
| **Form Spec + Design Contract** for non-prose visual units | Leave pedagogical form to Graphics alone |
| **Design Critic** until Design CLEAN (separate role) | Self-CLEAN design you sole-authored |
| Atom justification for color/arrow/chrome | Unjustified orange/red/variety chrome |
| Intensity ladder L0–L6; lowest that earns gain | Binary “text vs graphic” only; jump to L5/L6 by default |
| Middle path L2–L3 (color/weight/panels) first-class | Skip straight to complex diagram or bare walls |
| Simple alternative / step-down doctrine | Higher L when lower L teaches as well |
| **Space budget + density** (gain vs next-lower L; often ~⅛–⅓ page) | Sparse hero chrome / full-page for few claims |
| **Two-sided density:** anti-sprawl *and* anti-squish; page count ≠ quality | Crush margins/type to “fit N pages” |
| Accept solid simple alternative after ambition FAIL | Decorative placeholder geometry as demotion “fix” |
| Claim pins = copy-through from C | Invent thresholds in Form Spec |
| Visible wishlist / ambitious patterns | Critical Claim rewrite |
| Document free-vision **skip** / grammar-only opt-in when no ambition unit | Silent chapter-wide grammar-only without note |
| Scores (Wells/YEARS/ABCD²/MHS/…) as SCOPE/Sensibilisierung | Score as TIME tier or rule-out green step |
| T3 collapse when C silent (no invent) | Empty T3 slot / fake zeitnah tier |
| Accept only with Design CLEAN + Visual CLEAN | Accept on validate green / compile only |
| Accept on proximity to **Form Spec / Contract** | Accept monotony because catalog green |
| Free-vision proximity on ambition track | Accept ambition unit that ignores free-vision harvest |
| Emit Brief / Form Spec / Contract / Critique / Accept **files** | Design monologue without artifact |
| Treat recipes as functional checklists | Brief = form-id shopping list only |
| Stop at 2 Media↔Tech rounds → Human | Implement feasibility/spike yourself |
| Point Graphics at Design-CLEAN packet | Generate free-vision PNGs in this skill |
| KL: load ontology; TIME≠SCOPE; no form-meta in figures | KL: invent T3/tiers; Scope as ladder step; 2×2 for §3/§4 |

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
| **Form intensity ladder L0–L6** | [`references/form-intensity-ladder.md`](references/form-intensity-ladder.md) |
| **KL ontology v1.1** | [`references/kl-illness-script-ontology.md`](references/kl-illness-script-ontology.md) |
| **KL form-space process** | [`references/kl-form-space-process.md`](references/kl-form-space-process.md) |
| KL form library (Graphics) | `domains/medical/skill/medical-graphics/references/kl-form-library.md` |
| Presentation forms guide | `Guides/Medical-Presentation-Forms.md` |
| Form Spec template | `domains/medical/templates/form-spec.template.md` |
| **Design Contract** | `domains/medical/templates/design-contract.template.md` |
| **Design Critique** | `domains/medical/templates/design-critique.template.md` |
| **Visual Critique** | `domains/medical/templates/visual-critique.template.md` |
| **Quality Packet** | `domains/medical/templates/quality-packet.template.md` |
| Brief template | `domains/medical/templates/media-brief.template.md` |
| Accept template | `domains/medical/templates/accept-record.template.md` |
| Graphics Decision template | `domains/medical/templates/graphic-decision.template.md` |
| Graphic Harvest template | `domains/medical/templates/graphic-harvest.template.md` |
| Design-quality track | `devtracks/design-quality-system/` |
| Graphics skill / playbook | `domains/medical/skill/medical-graphics/` |
| Recipes | `domains/medical/recipes/` |
| Briefs / gold INDEX | `domains/medical/briefs/INDEX.md` |
| KL exploration index | `domains/medical/briefs/_explorations/README.md` |
| KL form language (archived) | `devtracks/_archive/kl-form-language/` · ops pipeline `medical-graphics/playbook/10-kl-chapter-pipeline.md` |
| Ownership | `domains/medical/OWNERSHIP.md` |
| Knowledge library (archived, compressed) | `devtracks/_archive/medical-knowledge-design-competencies/` |
| Governance | `devtracks/CONSENSUS-v0.md` (ADR 10–17), `devtracks/media-design/spec.md`, `devtracks/PRODUCT-BOUNDARIES.md` |

## Product note

Produkt **B** transitional home: `domains/medical/`. Split-ready; do not fold medical genre logic into `packages/bookkit` foundation.

**Background:** `Guides/Medical-Presentation-Forms.md` · KL harvest `briefs/_explorations/kl-harvest-and-reuse-plan.md`
