# Design Contract — `kl-mi-2026-08-01` / U-urgency + U-scope

> **Phase D (Media Designer).** Justifies every non-trivial visual decision before free vision / Typst.

- **chapter_id / slug:** V-1-myokardinfarkt / `kl-mi-2026-08-01`
- **unit_id:** U-urgency + U-scope
- **form_spec_path:** `domains/medical/briefs/kl-mi-2026-08-01-urgency.form-spec.md`
- **brief_path:** `domains/medical/briefs/kl-mi-2026-08-01.brief.md`
- **content_source:** Kursbuch5 `…/chapter-v-1-myokardinfarkt.md` §5 (read-only)
- **author_role:** media-designer (MD)
- **date:** 2026-08-01
- **status:** **design-clean**

## Learner job (one primary)

**choose** (+ stop on T1; constrain on SCOPE)

**Primary job in one sentence:** Assign Sofort-112 for any of four ACS clusters, execute one shared ACTION, keep MHS/EKG/Troponin outside the ladder.

## Form intensity (required)

- **Chosen level:** **L4** (schematic structure: nested multi-T1 stack + orthogonal SCOPE + Default-to-Danger maxim)
- **Why not L−1 (L3 panels):** four 112 triggers as separate callouts become four fake urgency rungs; L4 nesting encodes “one stop card, many triggers”.
- **Why not L+1 (L5 complex diagram):** no branching flowchart in C; multi-node ACS flow adds chrome without new relations.

## Simple alternative (required)

- [x] Situation | Dringlichkeit | Handlung table as in C  
- [ ] numbered list  
- [ ] plain prose  
- [ ] existing library module pin-swap without new chrome  

**Why not only that floor:** C table is complete for study reading but fails **scan hierarchy** (four 112 rows → four rungs; T1 vs T2; SCOPE as row 5). Nested stack fixes hierarchy without inventing claims.

## Space budget (required — book density)

- **Teaching gain vs next-lower intensity:** **essential** (multi-T1 false ladder is a safety error class)
- **Max vertical budget (A4 body, approx):** ☑ ~⅓ page preferred · ☑ ~½ page once if 4-trigger T1 overflows · hard cap ≤½  
- **Compression rule:** T1 triggers as **tight multi-line bullets** inside one card; dense type; no display type for long clinical strings  
- **If gain ≤ weak → step down:** N/A — gain essential  

## Form choice

- **Pattern name:** nested multi-T1 hard-stop + T2 + T4 + orthogonal SCOPE + Default-to-Danger maxim (T3 collapse)
- **Intensity level:** L4
- **Media-design reason:** Segmenting one block per filled TIME tier; nesting multi-trigger list inside T1; signaling weight by solid-danger header vs amber T2 vs teal T4; figure–ground for SCOPE as non-tier geometry.
- **Medical-pedagogy reason:** ACS Master safety bulk is **multi-trigger T1** (classic pain, dyspnea/shock, KHK crescendo, epigastrium+RF). PT error class is MSK-masking or inventing a soft “zeitnah” path. Nested T1 makes “any of these four → one 112 action” self-evident. SCOPE keeps MHS/EKG medical.

## Reading order (scan path under time pressure)

1. Default-to-Danger maxim  
2. T1 112 nested card (stop? any of 4 clusters)  
3. T2 same-day (only without ACS full picture)  
4. T4 treat+net (only secured MSK)  
5. SCOPE frame (competence brake)

## Atom table

| atom_id | element | encodes for learner | media-design principle | medical-pedagogy reason | if removed, what breaks? | reject if… |
|---|---|---|---|---|---|---|
| A1 | Vertical stack order T1→T2→T4 | urgency order | segmenting + reading order | matches C; T3 silent | tier order arbitrary | invent T3 slot |
| A2 | Solid danger fill on T1 only | stop-now | signaling | only T1 is 112 | T2 looks equally emergent | solid red whole unit |
| A3 | Amber weight on T2 | same-day medical | signaling intermediate | T2 ≠ T1 | T2 collapses into T1 | T2 same fill as T1 |
| A4 | Teal weight on T4 | treat with net | genre framework | permission constrained | treat unrestricted | T4 solid green “all clear” |
| A5 | Bold tier labels (112 / NA / Behandeln+Netz) | linguistic category | dual coding | color alone fails a11y | color-only tiers | English labels |
| A6 | Nested 4-trigger list **inside** one T1 card | multi-trigger one action | contiguity; anti-false-ladder | C packs four Sofort situations, one action class | four fake urgency rungs | separate T1a–T1d ladder steps |
| A7 | Trigger list adjacent to Handlung | action belongs to tier | contiguity | ACTION not third axis | orphan actions | third column “axis” |
| A8 | Left accent bar proportional to urgency | weight without fill alone | redundant signaling | scan with B&W/print | only color distinguishes | decorative bars all equal |
| A9 | SCOPE as square/rounded **frame** below stack | competence boundary | figure–ground | SCOPE ≠ TIME | SCOPE reads as T5 | T-chip on SCOPE |
| A10 | SCOPE title = `Grenze der eigenen Zuständigkeit` | content anchor | no form-meta | C language | abstract “Scope” chrome | ontology caption in figure |
| A11 | Default-to-Danger maxim strip (not tier) | low threshold | quiet-strong | C Default bei ACS-Möglichkeit | buried / soft | fifth urgency tier |
| A12 | Dense type / tight leading | book density | space budget | monograph scale | sparse sprawl | large display type |
| A13 | No T3 slot | C silence | collapse | no invented path | empty “zeitnah” theater | invent T3 |

## Must-see (from Form Spec)

1. T1 ≠ T2  
2. Four T1 triggers in one card  
3. One T1 ACTION  
4. No T3  
5. T4 secured MSK + net  
6. SCOPE medical boundary + MHS ≠ Ausschluss  
7. Default-to-Danger  
8. Teal Master chrome; solid danger only T1  

## Anti-theater (rejected chrome)

| rejected idea | why rejected |
|---|---|
| Solid-red full-page Master wall | wrong genre; hides T2/T4 nuance |
| Four red ladder rungs for four 112 triggers | false urgency ladder |
| Traffic-light with green “go treat” | claim-risk clearance |
| SCOPE as green bottom step | ontology fail |
| Invented T3 “zeitnah” | C silent |
| MHS cutoff calculator UI | C forbids as DA exclusion |
| Heart anatomy free vision | not this unit’s job |

## Success criterion (observable)

Critic sees one nested T1 with four clusters; T1≠T2 weight; no T3; SCOPE framed not laddered; Default-to-Danger present; fits ≤½ page dense.

## Risk of wrong form

Learner treats MSK shoulder as treatable, invents soft path, or uses palpation/MHS to clear ACS.

## Design Critic link

- **critique_path:** `domains/medical/briefs/kl-mi-2026-08-01.design-critique.md`
- **design_clean:** yes
