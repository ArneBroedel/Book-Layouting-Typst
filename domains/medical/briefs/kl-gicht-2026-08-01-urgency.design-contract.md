# Design Contract — `kl-gicht-2026-08-01` / U-urgency + U-scope

> **Phase D (Media Designer).** Justifies every non-trivial visual decision before free vision / Typst.

- **chapter_id / slug:** V-3-gicht / `kl-gicht-2026-08-01`
- **unit_id:** U-urgency + U-scope
- **form_spec_path:** `domains/medical/briefs/kl-gicht-2026-08-01-urgency.form-spec.md`
- **brief_path:** `domains/medical/briefs/kl-gicht-2026-08-01.brief.md`
- **content_source:** Kursbuch5 `…/chapter-v-3-gicht.md` §5 (read-only)
- **author_role:** media-designer (MD)
- **date:** 2026-08-01
- **status:** **design-clean**

## Learner job (one primary)

**choose** (+ stop on T1; constrain on SCOPE)

**Primary job in one sentence:** Assign the correct TIME tier for a hot mono / known-gout picture and keep Punktion/IA/Kristall/Antibiose outside the urgency ladder.

## Form intensity (required)

- **Chosen level:** **L4** (schematic structure: stacked tiers + orthogonal SCOPE frame + KI chip)
- **Why not L−1 (L3 panels):** four tiers with **dense multi-trigger T2** + gated T3 + SCOPE need relational geometry (order + weight + outside-frame). Separate callouts re-linearize into “box stack” where T1≈T2 under 15 s scan.
- **Why not L+1 (L5 complex diagram):** no branching flowchart in C; multi-node flow adds chrome without new relations. L4 stack is the gold grammar transfer.

**Middle path note:** L3 considered for T4 alone; joint TIME+SCOPE unit needs L4.

## Simple alternative (required)

- [x] 2-column / 3-column table as in C manuscript  
- [ ] numbered list  
- [ ] plain prose  
- [ ] existing library module pin-swap without new chrome  
- [ ] other:

**Why not only that floor:** C table is complete for study reading but fails **scan hierarchy** (T1 vs T2) and makes SCOPE look like row 5. Contracted stack fixes hierarchy without inventing claims.

## Space budget (required — book density)

- **Teaching gain vs next-lower intensity:** **essential** (tier confusion is a safety error class)
- **Max vertical budget (A4 body, approx):** ☑ ~⅓ page preferred · ☑ ~½ page **once** if dense T2 overflows · hard cap ≤½  
- **Why this budget is earned:** four filled tiers + multi-trigger T2 + SCOPE + absolute KI  
- **Compression rule:** T2 triggers as **tight multi-line bullets** inside one card; body size ≤ surrounding chapter body; no display type for long clinical strings; condense only via content-map (no clinical drop of a trigger class). If still overflow → allow **one** step to ~½ page, never full page.  
- **If gain ≤ weak → step down:** N/A — gain essential  

**Hard rules:** no sparse full-page; dense type; no decorative empty T1 wall when bulk pins are T2.

## Form choice

- **Pattern name:** full four-tier urgency stack + orthogonal medical SCOPE frame + absolute-KI chip
- **Intensity level:** L4
- **Media-design reason:** Segmenting one block per tier; signaling weight by size/fill/left bar **and** label; contiguity of trigger+action; figure–ground for SCOPE as non-tier geometry. Multi-trigger T2 nested list avoids false ladder rungs. Absolute KI as chip avoids fake T5.
- **Medical-pedagogy reason:** Gicht Master’s safety bulk is **T2** (septic until exclusion, including afebrile non-loading mono and known-gout-with-fever). T1 is Sepsis-Lage / severe multi-joint storm. PT error class is either over-calling 112 for ordinary hot mono **or** under-calling same-day medical care / probing treat. Stack makes T1≠T2 self-evident. SCOPE keeps Punktion/IA medical.

## Reading order (scan path under time pressure)

1. T1 112 card (stop? Sepsis-Lage / severe storm)  
2. T2 same-day dense card (most hot mono safety path)  
3. T3 zeitnah (only framed recurrent pattern)  
4. T4 treat+net constraints  
5. SCOPE frame (competence brake)  
6. Absolute KI chip

## Atom table (every non-default visual decision)

| atom_id | element | encodes for learner | media-design principle | medical-pedagogy reason | if removed, what breaks? | reject if… |
|---|---|---|---|---|---|---|
| A1 | Vertical stack order T1→T4 | urgency order | segmenting + reading order | matches C table order / TIME ontology | tier order arbitrary | random reorder for “design” |
| A2 | Solid danger fill on T1 only | stop-now vs framework | signaling; color=meaning | only T1 is 112 | T2 looks equally emergent | solid red on whole unit |
| A3 | Amber/warning weight on T2 | same-day medical | signaling intermediate | T2 ≠ T1 and ≠ T3; **bulk safety** | T2 collapses into T1 | T2 same fill as T1 |
| A4 | Cool/info weight on T3 | delayed MD path | signaling lower than T2 | gated Gicht-Nachsorge path | T3 reads as emergency or free treat | T3 louder than T1 |
| A5 | Teal/primary weight on T4 | treat with net | genre framework chrome | permission constrained | treat looks unrestricted | T4 solid green “all clear” |
| A6 | Bold tier labels (112 / NA / Zeitnah / Behandeln+Netz) | linguistic category | dual coding label+weight | color alone fails accessibility | color-only tiers | English labels |
| A7 | Nested multi-line T2 trigger list **inside** one T2 card | multi-trigger one action | contiguity; anti-false-ladder | C packs many same-day situations, one action class | six fake urgency rungs | separate T2a–T2f ladder steps |
| A8 | Nested two T1 trigger groups **inside** one T1 card | multi-trigger one action | contiguity | C has two 112 situations, one action class | two fake rungs | separate T1 ladder steps |
| A9 | Trigger list adjacent to Handlung inside each tier | action belongs to tier | contiguity | ACTION not third axis | orphan actions | third column “axis” |
| A10 | Left accent bar proportional to urgency | weight without fill alone | redundant signaling | scan with B&W/print | only color distinguishes | decorative bars all equal |
| A11 | SCOPE as square/rounded **frame** below stack, not fifth tier row | competence boundary | figure–ground; different geometry | SCOPE ≠ TIME | SCOPE reads as T5 | T-chip on SCOPE; traffic light |
| A12 | SCOPE title = `Grenze der eigenen Zuständigkeit` | content anchor | no form-meta | C language | abstract “Scope” chrome | ontology caption inside figure |
| A13 | Absolute KI as chip/strip (not ladder step) | hard stops until exclusion | figure–ground | C absolute KIs | buried in prose | fifth urgency tier |
| A14 | Dense type / tight leading | book density | space budget | monograph scale | sparse sprawl | large display type for few pins |
| A15 | No peel/hub/chain geometry | N/A — rejected | anti-theater | relations are priority stack | — | hub “Gicht center” |

## Must-see (from Form Spec)

1. T1 ≠ T2 ≠ T3  
2. T1 two trigger groups in one card  
3. T2 dense multi-triggers + septic until exclusion  
4. T3 medical-framing gate  
5. T4 constraints + no forced load in hot attack  
6. SCOPE medical boundary  
7. Absolute KI  
8. Teal Master chrome; solid danger only T1  

## Anti-theater (rejected chrome)

| rejected idea | why rejected |
|---|---|
| Solid-red full-page Master wall | wrong genre; hides T2/T3 nuance |
| Traffic-light T1–T4 with green “go treat” | claim-risk clearance |
| Empty loud 112 icon when content is T2 case | trains wrong action |
| SCOPE as green bottom step | ontology fail |
| Six separate T2 ladder rungs | false urgency ladder |
| Import old gicht.typ stack chrome as SoT | clean slate |

## Success criterion (observable)

Critic sees four distinct tiers with T1≠T2 weight; T2 contains afebrile non-loading + known-gout-with-fever; SCOPE is framed not laddered; absolute KI present; fits ≤½ page dense.

## Risk of wrong form

Learner treats all hot mono as 112 **or** treats known-gout fever as “only Schub” at home; or performs IA / probe treat.

## Design Critic link

- **critique_path:** `domains/medical/briefs/kl-gicht-2026-08-01.design-critique.md`
- **design_clean:** yes
