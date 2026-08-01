# Design Contract — `kl-crps-2026-07-31` / U-urgency + U-scope

> **Phase D (Media Designer).** Justifies every non-trivial visual decision before free vision / Typst.

- **chapter_id / slug:** V-3-crps-sudeck / `kl-crps-2026-07-31`
- **unit_id:** U-urgency + U-scope
- **form_spec_path:** `domains/medical/briefs/kl-crps-2026-07-31-urgency.form-spec.md`
- **brief_path:** `domains/medical/briefs/kl-crps-2026-07-31.brief.md`
- **content_source:** Kursbuch5 `…/chapter-v-3-crps-sudeck.md` §5 (read-only)
- **author_role:** media-designer (MD)
- **date:** 2026-07-31
- **status:** **design-clean**

## Learner job (one primary)

**choose** (+ stop on T1; constrain on SCOPE)

**Primary job in one sentence:** Assign the correct TIME tier for a post-trauma extremity picture adjacent to CRPS and keep medical SCOPE outside the urgency ladder.

## Form intensity (required)

| L | Name |
|---|---|
| L0–L6 | see form-intensity-ladder |

- **Chosen level:** **L4** (schematic structure: stacked tiers + orthogonal SCOPE frame)
- **Why not L−1 (L3 panels):** four tiers with multi-trigger T1 + distinct T3 CRPS path need **relational geometry** (order + weight + SCOPE outside). Separate callout panels alone re-linearize into “another box stack” where T1≈T3 under 15 s scan.
- **Why not L+1 (L5 complex diagram):** no branching flowchart in C; a multi-node flow would add chrome without new relations. L4 stack is the gold grammar transfer.

**Middle path note:** L3 was considered for T4 alone; joint TIME+SCOPE unit needs L4.

## Simple alternative (required)

- [x] 2-column / 3-column table as in C manuscript  
- [ ] numbered list  
- [ ] plain prose  
- [ ] existing library module pin-swap without new chrome  
- [ ] other:

**Why not only that floor:** C table is complete for study reading but fails **scan hierarchy** (T1 vs T3) and makes SCOPE look like row 5 of the same ladder. Contracted stack fixes hierarchy without inventing claims.

## Space budget (required — book density)

- **Teaching gain vs next-lower intensity:** **essential** (tier confusion is a safety error class)
- **Max vertical budget (A4 body, approx):** ☑ ~⅓ page preferred · ☑ ~½ page **once** if multi-trigger T1 overflows · hard cap ≤½  
- **Why this budget is earned:** four filled tiers + multi-trigger T1 + SCOPE — cannot honest-fit in ⅛ without pin loss  
- **Compression rule (F3):** T1 triggers as **tight multi-line bullets** inside one card; body size ≤ surrounding chapter body; no display type for long clinical strings; abbreviate only via content-map condensation (no clinical drop of a trigger class). If still overflow → allow **one** step to ~½ page, never full page.  
- **If gain ≤ weak → step down:** N/A — gain essential  

**Hard rules:** no sparse full-page; dense type; no decorative empty T1 wall.

## Form choice

- **Pattern name:** full four-tier urgency stack + orthogonal medical SCOPE frame
- **Intensity level:** L4
- **Media-design reason:** Segmenting one block per tier; signaling weight by size/fill/left bar **and** label; contiguity of trigger+action; figure–ground for SCOPE as non-tier geometry. Multi-trigger T1 nested list avoids false ladder rungs.
- **Medical-pedagogy reason:** CRPS Master uniquely fills **T3** as the real CRPS path; emergencies live in T1/T2. PT error class is either over-calling 112 for plain CRPS-Verdacht **or** under-calling 112 when vascular/compartment/infection signs hide under “Sudeck”. Stack makes T1≠T3 self-evident. SCOPE keeps Budapest/Systemtherapie medical.

## Reading order (scan path under time pressure)

1. T1 112 card (stop?)  
2. T2 same-day  
3. T3 zeitnah Facharzt (CRPS-Verdacht)  
4. T4 treat+net constraints  
5. SCOPE frame (competence brake)

## Atom table (every non-default visual decision)

| atom_id | element | encodes for learner | media-design principle | medical-pedagogy reason | if removed, what breaks? | reject if… |
|---|---|---|---|---|---|---|
| A1 | Vertical stack order T1→T4 | urgency order | segmenting + reading order | matches C table order / TIME ontology | tier order becomes arbitrary | random reordering for “design” |
| A2 | Solid danger fill on T1 only | stop-now vs framework | signaling; color=meaning | only T1 is 112 | T2/T3 look equally emergent | solid red on whole unit |
| A3 | Amber/warning weight on T2 | same-day medical | signaling intermediate | T2 ≠ T1 and ≠ T3 | T2 collapses into T1 | T2 same fill as T1 |
| A4 | Cool/info weight on T3 | delayed prioritized MD path | signaling lower than T2 | **true CRPS path** without red-flags | CRPS-Verdacht reads as emergency or as free treat | T3 louder than T1 |
| A5 | Teal/primary weight on T4 | treat with net | genre framework chrome | permission is constrained | treat looks unrestricted | T4 solid green “all clear” |
| A6 | Bold tier labels (112 / NA / Zeitnah / Behandeln+Netz) | linguistic category | dual coding label+weight | color alone fails accessibility and claim clarity | color-only tiers | English labels |
| A7 | Nested bullet list of 3 T1 trigger groups **inside** one T1 card | multi-trigger one action | contiguity; anti-false-ladder | C has three 112 situations, one action class | three fake urgency rungs | separate T1a/T1b/T1c as ladder steps |
| A8 | Trigger list adjacent to Handlung inside each tier | action belongs to tier | contiguity | ACTION not third axis | orphan actions | third column “axis” of action types |
| A9 | Left accent bar proportional to urgency | weight without relying on fill alone | redundant signaling | scan with B&W/print | only color distinguishes | decorative bars on all equal |
| A10 | SCOPE as square/rounded **frame** below or beside stack, not a fifth tier row | competence boundary | figure–ground; different geometry | SCOPE ≠ TIME | SCOPE reads as T5 | T-chip on SCOPE; traffic light |
| A11 | SCOPE title = content phrase `Grenze der eigenen Zuständigkeit` | content anchor | no form-meta | C language | abstract “Scope” chrome | ontology caption inside figure |
| A12 | Dense type / tight leading | book density | space budget | monograph scale | sparse sprawl | large display type for few pins |
| A13 | No peel/hub/chain geometry | N/A — rejected | anti-theater | relations are priority stack not causal cycle | — | adding hub “CRPS center” |

## Must-see (from Form Spec)

1. T1 ≠ T2 ≠ T3  
2. Three T1 trigger groups in one card  
3. T3 CRPS path without red flags  
4. T4 constraints + no forced painful mobilization  
5. SCOPE medical boundary  
6. Teal Master chrome; solid danger only T1  

## Anti-theater (rejected chrome)

| rejected idea | why rejected |
|---|---|
| Solid-red full-page Master wall | wrong genre; hides T3 path |
| Traffic-light T1–T4 with green “go treat” | claim-risk clearance |
| Empty loud 112 icon when content is T3 case | trains wrong action |
| Radar/meter free vision as default | optional only; code denser for pin edit |
| Fifth “T5 Scope” rung | ontology violation |
| English stage titles (TIME/SCOPE as print words) | form-meta |

## Success criterion (observable)

Critic can point to: (a) T1 card with three emergency groups; (b) T3 labeled zeitnah Facharzt for CRPS-Verdacht; (c) SCOPE frame not styled as tier; (d) no form-meta; (e) fits ≤½ page dense.

## Risk of wrong form

Learner calls 112 for every CRPS-Verdacht **or** treats under Fieber/Eiter as CRPS **or** “diagnoses” CRPS in SCOPE-green zone.

## Design Critic link

- **critique_path:** `domains/medical/briefs/kl-crps-2026-07-31.design-critique.md`
- **design_clean:** no
