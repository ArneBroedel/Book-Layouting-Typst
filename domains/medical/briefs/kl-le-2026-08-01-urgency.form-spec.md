# Form Spec (Media — Stage M) — LE Urgency + Scope

- **chapter_id / slug:** V-2-lungenembolie / `kl-le-2026-08-01`
- **unit_id:** U-urgency + U-scope (joint)
- **brief_path:** `domains/medical/briefs/kl-le-2026-08-01.brief.md`
- **content_source:** Kursbuch5 `…/chapter-v-2-lungenembolie.md` §5 (read-only)
- **content_map:** `domains/medical/briefs/_wave6/kl-le-2026-08-01.content-map.md`
- **genre:** illness-script / lerntext (kl-voll Master; pilot layout kl-kurz rhythm)
- **recipe_fn:** nested multi-T1 TIME stack + orthogonal SCOPE frame (Wells brake)
- **author_role:** media
- **date:** 2026-08-01
- **ambition:** free-vision **skip** — default realize **code** (`kl-urgency-nested-t1` transfer from `le.typ` grammar)
- **track hint (Graphics G0):** grammar-only / code default; free vision only if denser than stack (not expected)
- **design_contract_path:** `domains/medical/briefs/kl-le-2026-08-01-urgency.design-contract.md`
- **design_clean:** yes
- **space / compression (DC F2):** preferred ~⅓ page; multi-T1 triggers as tight multi-line bullets in **one** card; allow **once** ~½ page if nested T1+T2 overflow; never full page; never four T1 rungs

## Learner context

- **Actor:** HP Physio / PT Direktzugang bei Dyspnoe / Thoraxschmerz / post-OP
- **Time pressure / scan budget:** 10–25 s for tier choice
- **Setting:** Praxis / Hausbesuch / poststationär

## Learner job (one primary)

**choose** (+ **stop** on T1; **constrain** on SCOPE)

**Primary job in one sentence:** Assign the correct TIME tier for a plausible LE picture (nested multi-T1 112 vs stable-suspect same-day vs treat+net only when secure MSK / medical clearance), and never treat Wells/YEARS / D-Dimer / Bildgebung as a quieter urgency step.

## Simple alternative (required)

- boring default: **3-row markdown-style table** (Situation | Dringlichkeit | Handlung) as in C  
- why not only that: under scan stress multiple 112 triggers become separate ladder rungs or collapse with T2 into one “Notfall” blob; Wells in the T2 cell reads like a calculator; SCOPE becomes a fourth table row that reads like T4/T5; nested stack + orthogonal frame reduces those error classes

## Load risks (if form is wrong)

- Multi-T1 shown as four separate urgency rungs  
- T1 visually equals T2 (both “red emergency”)  
- Wells appears as green/red algorithm or TIME step  
- SpO₂ alone framed as sole High-Risk definition  
- Invented T3  
- SCOPE reads as green “may treat” clearance under T4  
- Palpation-positive BWS framed as T4 free pass  
- Solid-red full Master chrome  

## Cognitive / layout levers

- **Segmenting:** one block per TIME tier present in C (T1, T2, T4)  
- **Signaling:** weight T1 ≫ T2 ≫ T4 (size/fill/left bar + **label**, not color alone)  
- **Contiguity:** triggers adjacent to Handlung inside same tier  
- **Figure–ground:** SCOPE frame optically outside TIME stack  
- **Multi-trigger:** T1 four trigger classes inside **one** T1 card; T2 multi-triggers inside one T2 card  
- **Score brake:** Wells/YEARS language only in SCOPE (and as *Sensibilisierung* pin inside T2 triggers — never as exclusion)

## Information architecture (zones)

| zone | loudness | content role | must feel like |
|---|---|---|---|
| TIME stack T1→T2→T4 | T1 loudest | urgency + action payload | ordered priority landscape |
| T1 internal | max | one stop card + 4 nested trigger classes | **one** 112 card, not four rungs |
| T2 | loud | stable-suspect same-day medical path | distinct from T1; absolute Schonung |
| T4 | medium-quiet | treat + return net | permission with constraints |
| **SCOPE frame** | quiet-strong border | competence boundary + Wells brake | **not** a TIME tier (geometry); content title only |
| Quiet | quiet | sources later | not before action |

## Must-see elements

1. **One T1 card** with nested triggers: Instabilität/Schock/Hypotonie · Synkope/Präsynkope · Ruhedyspnoe+Tachy+VTE-RF · massive Hämoptyse/schwere Hypoxämie as **support**  
2. Shared T1 ACTION: Stop · nicht aufstehen · Oberkörper hoch · Vitale · **112** · Basismaßnahmen  
3. **T2** stable-but-suspect → Session abbrechen · absolute Schonung · NA/gleichtags · not alone load  
4. **No T3**  
5. **T4** only secure MSK without Dyspnoe/Tachy/Hypoxämie/VTE-RF **or** after medical clearance stable low-risk LE under AC  
6. **SCOPE:** Ausschluss, D-Dimer, Bildgebung, Antikoagulation, Risikostratifizierung **outside**; Wells/YEARS **Sensibilisierung only**, never „LE ausgeschlossen“; no Belastungstests zur „Klärung“; Palpation schließt LE nicht aus  
7. Genre: teal framework Master; solid danger only on T1  

## Icon meaning

| pin / zone | drawing must show | must not show |
|---|---|---|
| T1 | stop / emergency weight | four separate 112 ladders |
| T2 | same-day medical urgency | equal red wall to T1 |
| SCOPE | boundary/frame feel | Wells calculator UI; traffic-light step |

## Urgency / weight encoding

- T1: solid danger fill + bold **112** label  
- T2: amber/warning weight — loud but **not** solid-danger twin of T1  
- T4: teal/primary — constrained permission  
- SCOPE: border frame, no ladder fill progression that reads as “step N go”

## Branching / loop invariants

- Exactly three TIME tiers (T1, T2, T4); SCOPE outside  
- No invented T3  
- Multi-T1 triggers share one Handlung class (112 stop payload)  
- Wells never appears as exclusion tool

## Genre chrome

- **Must look like:** kl Master TIME stack (teal framework)  
- **Must not look like:** solid-red Notfallkarte wall; Wells calculator; ontology form-meta captions

## Claim pins (German, copy-through from C)

| step / zone | allowed text (German) |
|---|---|
| T1 label | 112 |
| T1 triggers | Hämodynamische Instabilität (Schock, persistierende Hypotonie syst. RR unter 90 bzw. Abfall ≥40, Kaltschweißigkeit, Schockindex über 1); Synkope/Präsynkope bei Dyspnoe/Thoraxschmerz; plötzliche Ruhedyspnoe + Tachykardie (über 100/min) plus VTE-Risikofaktor; massive Hämoptyse / schwere Hypoxämie als stützendes Schwerezeichen |
| T1 action | Behandlung sofort stoppen; Patient:in nicht aufstehen oder gehen lassen; Oberkörper hoch lagern soweit toleriert; Vitalzeichen dokumentieren; 112; Basismaßnahmen bis Übergabe |
| T2 label | Notaufnahme / gleichtags Arzt |
| T2 triggers | Stabil, aber LE-Verdacht: Belastungsdyspnoe und/oder atemabhängiger Thoraxschmerz nach OP/Immobilität; Hämoptyse + pleuritischer Schmerz; klinische TVT-Zeichen + beginnende Dyspnoe; Wells-Items stark positiv als Sensibilisierung (kein HP-Ausschluss) |
| T2 action | Session abbrechen; absolute körperliche Schonung; schriftlich Verdacht und Zeitverlauf mitgeben; Transport organisieren (nicht allein belasten); Notaufnahme bzw. gleichtägige ärztliche Abklärung |
| T4 label | Behandeln mit Sicherheitsnetz |
| T4 triggers | Nur bei sicher muskuloskelettalem Korrelat ohne Dyspnoe, ohne Tachykardie/Hypoxämie und ohne VTE-Red-Flags — oder nach ärztlich freigegebener, stabiler Niedrigrisiko-LE unter Antikoagulation |
| T4 action | Symptomgeleitete PT; bei neuer Dyspnoe, Tachykardie, Schwindel oder Beinschwellung: sofort Abbruch und Re-Triage |
| SCOPE title | Grenze der eigenen Zuständigkeit |
| SCOPE body | LE-Ausschluss, D-Dimer, Bildgebung, Antikoagulation und Risikostratifizierung (High/Intermediate/Low Risk) — nicht HP. Wells-/YEARS-Items nur als Warnhinweis, nie als „LE ausgeschlossen“. Keine Belastungstests zur „Klärung“. Thoraxpalpation schließt LE nicht aus. |

## Explicit non-goals / must-not

- No invented T3 / Wells HP-exclusion cutoffs / English decorative stage titles  
- No form-meta / ontology IDs inside figure  
- No reuse of old le.typ as clinical SoT (grammar OK)  
- No four T1 ladder rungs  

## Presentation hypothesis (pattern name)

nested multi-T1 urgency stack + T2 stable-suspect + T4 + orthogonal medical SCOPE frame with Wells brake (LE pins)

## Success criterion

Under 15–25 s scan the learner **separates nested multi-T1 112 from T2 stable-suspect**, **never treats Wells as exclusion**, and **reads SCOPE as competence brake**.

## Handoff to Graphics

- [x] Form Spec complete for this unit
- [x] Ambition flag set (skip free vision / code default)
- [x] Claim pins reviewed against C
- Visual-Unit → `medical-graphics` playbook from Stage G0 after Design CLEAN
