# Design reasoning (Media B-core)

**Load when:** drafting/revising a Media Brief or Accept.  
**Do not load for:** content rewrite, compose, form-id mapping.  
**Source:** lean harvest from medical-ed competencies (Foundation, B/C, D, E). Deeper theory (compressed): `devtracks/_archive/medical-knowledge-design-competencies/COMPENDIUM.md` — **not** runtime hot path.

Goal: **better-justified** presentation hypotheses, not longer briefs.

---

## 1. Before the section plan (mandatory, short)

For each content **unit** (heading/role — no claim paraphrase):

| Field | Question |
|-------|----------|
| **unit type** | danger \| recognition \| decision \| procedure \| comparison \| mechanism \| reference |
| **learner job** | stop / recognize / choose / execute / distinguish / understand / look up |
| **load risk** | miss under stress · wall of text · equal visual weight · redundant dual channel · jargon first |
| **hypothesis** | presentation *pattern* (prose name below) — **not** a catalog form id |
| **recipe fn** | genre function id if recipe has one (e.g. F1…F7) |

Then write **Overall presentation goal** + **Section plan**. Skip empty theory prose in the Brief.

### Form Spec (ambitious visual units)

When the hypothesis needs a **true graphic** (flowchart, hard-stop protocol, OS sequence, triage path, …), also write:

`domains/medical/briefs/<slug>.form-spec.md`  
Template: `domains/medical/templates/form-spec.template.md`  
Guide: `Guides/Medical-Presentation-Forms.md`

Minimum fields: zones, **Must-see**, **claim pins**, genre chrome, success criterion, ambition flag.  
This is the Graphics handoff contract — denser than the Brief table, still no form ids.

Gold: `iv2-rueckenschmerz-neuro.form-spec.md`, `iii5-cauda-notfallkarte.form-spec.md`.

---

## 2. Unit type → presentation hypothesis

| Type | Prefer | Avoid |
|------|--------|--------|
| **danger** | One loud gatekeeper; first screenful; single stop message | Cave-spam; buried under intro/sources |
| **recognition** | Scannable cue clusters; high-contrast labels | Prose walls; equal weight on all bullets |
| **decision** | Weighted branches / urgency lanes; default-to-danger visible | Flat table where 112 ≡ optional |
| **procedure** | Numbered sequence with step weight | Narrative paragraph; unordered bullets for order-critical acts |
| **comparison** | Short 2-column / matrix after action path | Essay DDx before action |
| **mechanism** | Segmented schema + complementary text (dual coding) | Decorative art; legend far from figure |
| **reference** | Trailing, quiet, after action/learning core | Opener; competing with gatekeeper |

**Cognitive load (only what layout can fix):** cut *extraneous* noise (decoration, parallel channels saying the same thing, links before action). Do **not** invent clinical simplification — that is Content (C).

**Multimedia (only if Brief proposes motion/interactive):** segment steps; keep labels near referents; avoid narrating the full on-screen text (Mayer: coherence, contiguity, segmenting, redundancy).

---

## 3. Visual hierarchy (five rules)

1. **One primary job per zone** (spread/screen) — secondary content quieter.  
2. **Loudness = urgency**, not section order in the source file.  
3. **Color never alone** for meaning (shape/label/position too).  
4. **Warnings:** one primary stop > many medium callouts.  
5. **Sources/links:** after the job; never first.

---

## 4. Anti-patterns (Brief quality)

- Form-id shopping list without prose ideal  
- Equal visual mass for action vs. bibliography  
- Exam-chrome / seminar opener on a stress card  
- Wishlist empty when the ideal clearly needs a missing pattern  
- Hiding Critical Claims inside decorative layout language  

---

## 4b. Design Contract & atoms (Phase D — before free vision)

Load full procedure: `devtracks/_archive/design-quality-system/` · templates `design-contract.template.md` · `design-critique.template.md`.

**Doctrine:** every non-default visual decision (color, arrow, border, hub, peel, chain, badge, type weight) must help the learner **process content**.

**Form intensity ladder (not binary simple vs graphic):**  
L0 plain prose → L1 structured text → **L2 formatted text (color/weight)** → **L3 panel text (bg/bars/icons)** → L4 schematic structure → L5 complex diagram → L6 free vision/raster.  
Full table: [`form-intensity-ladder.md`](form-intensity-ladder.md).  
Pick the **lowest** L with clear/essential gain. **L2–L3 is the default middle path** for many units — first-class, not a failed compromise. Climb only for a named cognitive win; step down when Human/DC sees no Mehrwert.

**Space / density doctrine (book scale):** Every level must earn its **vertical page cost**. Sparse full-page units for few claims explode page count. Contract sets gain vs **next-lower L** and max budget (often ~⅛–⅓ page). If gain ≤ weak → **step down**. Ambition never excuses sprawl.

| Atom needs | Reject if |
|---|---|
| Media-design principle (hierarchy, contiguity, dual coding, signaling, segmenting, **density**) | “Looks nicer” / library clone only / premium air |
| Medical-pedagogy reason (error class, job, time pressure) | Decoration that do not change learner action |
| Mapping: color → meaning | Orange/red “for variety” or unmotivated emphasis |
| “If removed, what breaks?” | Nothing breaks → delete atom |
| Space budget row | Unit spends ~page for thin pins (**sparse-sprawl**) |

**Design Critic (adversarial, separate role):** attack Contract with `block` / `should` / `nit` — include **sparse-sprawl**. CLEAN only with zero open blocks. Builder must not self-CLEAN.

---

## 5. Accept rubric (use on Accept; minimum pass — **not** a substitute for Design/Visual CLEAN)

**Hard gate before this rubric:** Design CLEAN + Visual CLEAN (PNG-inspected) quality packet. Without it → `revise`, never accept.

| Check | Fail → |
|-------|--------|
| Gatekeeper / main job findable in first screenful (genre-dependent) | `revise` |
| Action/decision path louder than links/sources | `revise` |
| Order-critical steps look ordered | `revise` |
| **Flows look like flows** — branching/sequence is visual, not only a tinted bullet box (unless Brief explicitly accepted that approx) | `revise` |
| **Not box monotony** — page rhythm varies; not the same callout+table stack for every section without design reason | `revise` |
| Spike/approx does not equalize urgency levels that Brief weighted | `revise` |
| Wishlist abandoned without documented attempt / spike | `revise` |
| Graphic A/B or asset path skipped when ideal clearly needs non-code form (no Decision Note attempt) | `revise` |
| Ambitious unit missing Form Spec (no Must-see / claim pins) | `revise` (Media) or document exception |
| Winner misses Form Spec **Must-see** or fails claim audit (if asset) | `revise` |
| Criteria-by-picture: icons/scales contradict pin **meaning** (even if labels match) | `revise` (surgical refine or recreate) |
| **Free-vision-ambition** track + winner is **pin-monotone** (ignores harvest hierarchy/chrome) | `revise` (Graphics: port harvest must-cues) |
| Ambition track + free vision ran but **no harvest** documented | `revise` (Graphics: write harvest) |
| Harvest must-cues waived without reason | `revise` |
| Design CLEAN missing / open design `block` | `revise` (Phase D) |
| Visual CLEAN missing / pages not opened / code-leak or overflow | `revise` (Phase R visual critique) |
| Uncontracted color/chrome on page | `revise` |
| Complex form worse than simple alternative on the page | `revise` (simplify or redesign) |
| Sparse sprawl: high vertical cost / empty regions for few claims (space budget blown) | `revise` (densify or simple form) |
| Squish-compress: crushed rhythm/type for page-count vanity | `revise` (restore breathing room; page count ≠ quality) |
| Ambition FAIL replaced by decorative placeholder geometry (colored “anatomy” blobs) | `revise` (step down to simple alternative that teaches) |
| Solid L2–L4 clinical table after free demote, pins honest | may **accept** (success of simple-alternative doctrine) |
| Chapter pages restless / unclear structure / odd indent (macro scan-path) | `revise` compose (not a free-vision issue) — Visual CLEAN incomplete |
| Self-Accept by sole builder | `revise` (separate AX + critiques) |
| Embed path for Tech missing on graphic winner | `revise` (fill Accept compose notes) |
| A/B winner chosen without ideal/learner-job rationale | `revise` |
| No claim rewrite / no new clinical thresholds in layout (incl. inside images) | `reject` or Author loop |

| Track context | Proximity check |
|---|---|
| `free-vision-ambition` | Free-vision proximity **required** (yes or partial with note; **no** → revise) |
| `grammar-only` | Free-vision proximity N/A; code pin-swap OK |
| `none` | No graphic Accept surface |

Freeze pin rules unchanged (`brief_class`, H1/H2). Optional **H-Gfx** when production assets depict anatomy/procedure risk motifs.

**Creative-first:** Accept is about proximity to the **ideal** (and free-vision harvest on ambition track), not about staying inside stable form-catalog. Tech may use full Typst/bookkit/@preview/custom **and** accepted image assets/hybrid; Graphics decides code vs asset vs A/B after harvest. See `toolset/compose/CREATIVE-COMPOSE.md` and `medical-graphics`.

---

## 6. Krankheitslehre (Illness Script)

When designing KL monographs, load:

- [`kl-illness-script-ontology.md`](kl-illness-script-ontology.md) — TIME/SCOPE, units, invariants  
- [`kl-form-space-process.md`](kl-form-space-process.md) — R→Accept + creativity slot  

Do not invent form ids first; map to Graphics [`kl-form-library.md`](../../medical-graphics/references/kl-form-library.md) only after free ideal / Form Spec.

## 7. Explicit non-scope (this reference)

| Topic | Where |
|-------|--------|
| Quellen, Leitlinien, Claim-Text | Content / `content-review` |
| Ethik/Recht-Gutachten | Content + Human |
| Review rounds, freeze, floor | `content-maturity` |
| form-catalog map / `.typ` | `compose-chapter` |
| AR/VR/LMS theory essays | Wishlist one-liners only |
