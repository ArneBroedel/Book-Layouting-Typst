# Design Contract — `kl-gicht-batch-2026-08` / U-urgency + U-scope

> **Phase D (Media Designer).** Justifies every non-trivial visual decision before Typst.

- **chapter_id / slug:** V-3-gicht / `kl-gicht-batch-2026-08`
- **unit_id:** U-urgency + U-scope
- **form_spec_path:** `domains/medical/briefs/kl-gicht-batch-2026-08-urgency.form-spec.md`
- **brief_path:** `domains/medical/briefs/kl-gicht-batch-2026-08.brief.md`
- **content_source:** Kursbuch5 `…/2026-08-d-risc-batch/…/chapter-v-3-gicht.md` §5
- **author_role:** media-designer (MD)
- **date:** 2026-08-01
- **status:** **design-clean**

## Learner job (one primary)

**choose** (+ stop on 112; constrain on SCOPE)

## Form intensity (required)

- **Chosen level:** **L4** (stacked tiers + orthogonal SCOPE + KI chip)
- **Why not L−1 (L3 panels):** five §5 situations + SCOPE need relational geometry (order + weight + outside-frame). Separate callouts re-linearize into box stack where 112≈NA under 15 s scan.
- **Why not L+1 (L5 flowchart):** no branching flowchart in C; multi-node flow adds chrome without new relations.

## Simple alternative (required)

- [x] 3-column table as in C manuscript  
- **Why not only that floor:** C table is complete for study reading but fails scan hierarchy (112 vs NA vs gleichtags) and makes SCOPE look like row 6.

## Space budget (required — book density)

- **Teaching gain vs next-lower intensity:** **essential** (tier confusion is a safety error class)
- **Max vertical budget:** ☑ ~⅓ page preferred · ☑ ~½ page **once** if dense · hard cap ≤½  
- **Compression rule:** triggers as tight multi-line bullets inside each card; body size ≤ surrounding chapter body  
- **Hard rules:** no sparse full-page; no decorative empty 112 wall when bulk pins are NA

## Form choice

- **Pattern name:** five-situation urgency stack + orthogonal medical SCOPE + absolute-KI chip
- **Intensity level:** L4
- **Media-design reason:** Segmenting one block per §5 situation; signaling weight by size/fill/left bar **and** label; contiguity of trigger+action; figure–ground for SCOPE as non-tier geometry.
- **Medical-pedagogy reason:** Batch C separates **NA** (hot joint+fever/systemics; poly storm) from **gleichtags** (Tophi/Ulcus) and **zeitnah** (first unclear mono). PT error class is over-calling 112 **or** under-calling same-day / zeitnah medical care / probe treat. Stack makes separations self-evident. SCOPE keeps Punktion/i.a. medical.

## Reading order (scan path under time pressure)

1. 112 card (stop? Sepsis-Instabilität)  
2. NA card (hot joint+fever/systemics; poly storm)  
3. gleichtags Arzt (Tophi/Ulcus)  
4. zeitnah (first unclear monoarthritis)  
5. treat+net constraints  
6. SCOPE frame  
7. Absolute KI chip

## Atom table

| atom_id | element | encodes for learner | if removed, what breaks? | reject if… |
|---|---|---|---|---|
| A1 | Vertical stack order 112→NA→G→zeitnah→T4 | urgency order | tier order arbitrary | random reorder |
| A2 | Solid danger fill on 112 only | stop-now vs framework | NA looks equally emergent | solid red on whole unit |
| A3 | Amber weight on NA | same-day ED path | NA collapses into 112 | NA same fill as 112 |
| A4 | Distinct gleichtags card (not NA sub-bullet only) | same-day MD ≠ ED | Tophi path lost | merge into NA without label |
| A5 | Cool/info on zeitnah | delayed MD path | zeitnah reads as emergency or free treat | louder than NA |
| A6 | Teal on T4 | treat with net | treat unrestricted | solid green “all clear” |
| A7 | Nested triggers inside each tier card | multi-trigger one action | false ladder rungs | separate ladder steps per trigger |
| A8 | SCOPE as frame below stack, not fifth/sixth tier | competence boundary | SCOPE as T5 | T-chip on SCOPE |
| A9 | Absolute KI as chip (not ladder step) | hard stops | buried in prose | fifth urgency tier |
| A10 | Dense type / tight leading | book density | sparse sprawl | large display type for few pins |

## Must-see (from Form Spec)

1. 112 ≠ NA ≠ gleichtags ≠ zeitnah  
2. NA: fever/systemics + poly storm; septic until exclusion even with gout history  
3. gleichtags Tophi/Ulcus  
4. zeitnah first unclear monoarthritis  
5. SCOPE: no i.a./Punktion by HP-PT  
6. Absolute KI  

## Anti-theater

| rejected idea | why rejected |
|---|---|
| Solid-red full-page Master wall | wrong genre |
| Traffic-light with green “go treat” | claim-risk clearance |
| Empty loud 112 when content is NA case | trains wrong action |
| SCOPE as green bottom step | ontology fail |
| Import old gicht T2 bulk (post-IA/OP rows not in this C §5) without re-pin | claim drift |

## Success criterion

Critic sees distinct 112/NA/gleichtags/zeitnah/T4; NA carries fever+poly storm; SCOPE framed not laddered; absolute KI present; fits ≤½ page dense.

## Design Critic link

- **critique_path:** `domains/medical/briefs/kl-gicht-batch-2026-08.design-critique.md`
- **design_clean:** yes
