# Design Contract — `kl-le-2026-08-01` / U-urgency + U-scope

> **Phase D (Media Designer).** Justifies every non-trivial visual decision before Typst.

- **chapter_id / slug:** V-2-lungenembolie / `kl-le-2026-08-01`
- **unit_id:** U-urgency + U-scope
- **form_spec_path:** `domains/medical/briefs/kl-le-2026-08-01-urgency.form-spec.md`
- **brief_path:** `domains/medical/briefs/kl-le-2026-08-01.brief.md`
- **content_source:** Kursbuch5 `…/chapter-v-2-lungenembolie.md` §5 (read-only)
- **author_role:** media-designer (MD)
- **date:** 2026-08-01
- **status:** **design-clean**

## Learner job (one primary)

**choose** (+ stop on T1; constrain on SCOPE)

**Primary job in one sentence:** Assign nested multi-T1 112 vs T2 stable-suspect vs T4 treat+net and keep Wells/YEARS/D-Dimer/Bildgebung outside the urgency ladder as SCOPE brake.

## Form intensity (required)

- **Chosen level:** **L4** (schematic structure: nested multi-T1 stack + orthogonal SCOPE frame)
- **Why not L−1 (L3 panels):** three tiers with **nested multi-trigger T1** + dense T2 + Wells-in-SCOPE need relational geometry (order + weight + outside-frame). Separate callouts re-linearize into “box stack” where multi-T1 becomes four rungs and SCOPE looks like T5.
- **Why not L+1 (L5 complex diagram):** no branching flowchart required beyond stack; Wells calculator UI is claim-risk theater. L4 nested stack is the gold grammar transfer.

**Middle path note:** L3 considered for T4 alone; joint TIME+SCOPE unit needs L4.

## Simple alternative (required)

- [x] 2-column / 3-column table as in C manuscript  
- [ ] numbered list  
- [ ] plain prose  
- [ ] existing library module pin-swap without new chrome  
- [ ] other:

**Why not only that floor:** C table is complete for study reading but fails **scan hierarchy** (nested multi-T1 vs T2) and makes SCOPE/Wells look like calculator rows. Contracted stack fixes hierarchy without inventing claims.

## Space budget (required — book density)

- **Teaching gain vs next-lower intensity:** **essential** (tier confusion + Wells-as-exclusion are safety error classes)
- **Max vertical budget (A4 body, approx):** ☑ ~⅓ page preferred · ☑ ~½ page **once** if nested T1+T2 overflow · hard cap ≤½  
- **Why this budget is earned:** nested multi-T1 + T2 multi-triggers + T4 + SCOPE Wells brake  
- **Compression rule:** T1 triggers as **tight multi-line bullets** inside one card; T2 same; body size ≤ surrounding chapter body; no display type for long clinical strings; condense only via content-map (no clinical drop of a trigger class). If still overflow → allow **one** step to ~½ page, never full page.  
- **If gain ≤ weak → step down:** N/A — gain essential  

**Hard rules:** no sparse full-page; dense type; no four separate T1 rungs; no Wells calculator chrome.

## Form choice

- **Pattern name:** nested multi-T1 urgency stack + T2 stable-suspect + T4 + orthogonal medical SCOPE frame (Wells brake)
- **Intensity level:** L4
- **Media-design reason:** Segmenting one block per tier; signaling weight by size/fill/left bar **and** label; contiguity of trigger+action; figure–ground for SCOPE as non-tier geometry. Nested multi-trigger T1 list avoids false ladder rungs.
- **Medical-pedagogy reason:** LE Master’s 112 path is **multi-trigger one action** (Instabilität · Synkope · Ruhedyspnoe+Tachy+VTE · support Hämoptyse/Hypoxämie). T2 is stable-suspect with absolute Schonung. PT error class is probe-treating BWS, loading stable-suspect, or using Wells as exclusion. Stack makes T1≠T2 and Wells-in-SCOPE self-evident.

## Reading order (scan path under time pressure)

1. T1 112 nested card (stop?)  
2. T2 same-day stable-suspect card  
3. T4 treat+net constraints  
4. SCOPE frame (competence + Wells brake)

## Atom table (every non-default visual decision)

| atom_id | element | encodes for learner | media-design principle | medical-pedagogy reason | if removed, what breaks? | reject if… |
|---|---|---|---|---|---|---|
| A1 | Vertical stack order T1→T2→T4 | urgency order | segmenting + reading order | matches C table order / TIME ontology | tier order arbitrary | invent T3; random reorder |
| A2 | Solid danger fill on T1 only | stop-now vs framework | signaling; color=meaning | only T1 is 112 | T2 looks equally emergent | solid red on whole unit |
| A3 | Amber/warning weight on T2 | same-day medical | signaling intermediate | T2 ≠ T1; stable-suspect bulk | T2 collapses into T1 | T2 same fill as T1 |
| A4 | Teal/primary weight on T4 | treat with net | genre framework chrome | permission constrained | treat looks unrestricted | T4 solid green “all clear” |
| A5 | Bold tier labels (112 / NA / Behandeln+Netz) | linguistic category | dual coding label+weight | color alone fails accessibility | color-only tiers | English labels |
| A6 | Nested multi-line T1 trigger list **inside** one T1 card | multi-trigger one action | contiguity; anti-false-ladder | C packs four 112 situations, one action class | four fake urgency rungs | separate T1a–T1d ladder steps |
| A7 | Nested multi-line T2 trigger list **inside** one T2 card | multi-trigger one action | contiguity; anti-false-ladder | C packs same-day situations, one action class | fake rungs | separate T2 ladder steps |
| A8 | Trigger list adjacent to Handlung inside each tier | action belongs to tier | contiguity | ACTION not third axis | orphan actions | third column “axis” |
| A9 | Left accent bar proportional to urgency | weight without fill alone | redundant signaling | scan with B&W/print | only color distinguishes | decorative bars all equal |
| A10 | SCOPE as square/rounded **frame** below stack, not fourth tier row | competence boundary | figure–ground; different geometry | SCOPE ≠ TIME | SCOPE reads as T5 | T-chip on SCOPE; traffic light |
| A11 | SCOPE title = `Grenze der eigenen Zuständigkeit` | content anchor | no form-meta | C language | abstract “Scope” chrome | ontology caption inside figure |
| A12 | Wells/YEARS language in SCOPE (+ Sensibilisierung pin in T2) | score is brake not ladder | dual coding text | never HP exclusion | Wells calculator UI | Wells as green/red TIME step |
| A13 | Dense type / tight leading | book density | space budget | monograph scale | sparse sprawl | large display type for few pins |
| A14 | No peel/hub/chain/lung anatomy geometry | N/A — rejected | anti-theater | relations are priority stack | — | hub “LE center”; free lung art |
| A15 | Lead danger line above stack (optional, chapter-level OK) | stop probe-treat | signaling | plausible LE = triage | buried in prose | solid-red full page |

## Must-see (from Form Spec)

1. Nested multi-T1 one card  
2. Shared T1 112 action  
3. T2 stable-suspect + absolute Schonung  
4. No T3  
5. T4 constraints  
6. SCOPE + Wells brake  
7. Teal Master chrome; solid danger only T1  

## Anti-theater (rejected chrome)

| rejected idea | why rejected |
|---|---|
| Solid-red full-page Master wall | wrong genre; hides T2 nuance |
| Wells calculator UI / traffic-light score | claim-risk exclusion tool |
| Four separate T1 ladder rungs | false urgency ladder |
| Invented T3 | absent in C |
| SCOPE as green bottom step | ontology fail |
| Free-vision lung embolus beauty | theater; no densify gain |
| Import old le.typ as clinical SoT | clean slate |

## Success criterion (observable)

Critic sees three distinct tiers with T1≠T2 weight; T1 contains four nested trigger classes in one card; SCOPE is framed not laddered; Wells appears only as Sensibilisierung/Warnhinweis; fits ≤½ page dense.

## Risk of wrong form

Learner probe-treats BWS, loads stable-suspect LE, invents T3 delay, or “excludes” LE with Wells.

## Design Critic link

- **critique_path:** `domains/medical/briefs/kl-le-2026-08-01.design-critique.md`
- **design_clean:** yes
