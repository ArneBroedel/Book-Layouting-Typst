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

## 5. Accept rubric (use on Accept; 30-second pass)

| Check | Fail → |
|-------|--------|
| Gatekeeper / main job findable in first screenful (genre-dependent) | `revise` |
| Action/decision path louder than links/sources | `revise` |
| Order-critical steps look ordered | `revise` |
| **Flows look like flows** — branching/sequence is visual, not only a tinted bullet box (unless Brief explicitly accepted that approx) | `revise` |
| **Not box monotony** — page rhythm varies; not the same callout+table stack for every section without design reason | `revise` |
| Spike/approx does not equalize urgency levels that Brief weighted | `revise` |
| Wishlist abandoned without documented attempt / spike | `revise` |
| No claim rewrite / no new clinical thresholds in layout | `reject` or Author loop |

Freeze pin rules unchanged (`brief_class`, H1/H2).

**Creative-first:** Accept is about proximity to the **ideal**, not about staying inside stable form-catalog. Tech may use full Typst/bookkit/@preview/custom; see `toolset/compose/CREATIVE-COMPOSE.md`.

---

## 6. Explicit non-scope (this reference)

| Topic | Where |
|-------|--------|
| Quellen, Leitlinien, Claim-Text | Content / `content-review` |
| Ethik/Recht-Gutachten | Content + Human |
| Review rounds, freeze, floor | `content-maturity` |
| form-catalog map / `.typ` | `compose-chapter` |
| AR/VR/LMS theory essays | Wishlist one-liners only |
