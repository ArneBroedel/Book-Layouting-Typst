# Form Spec — CRPS urgency + scope

- **chapter_id / slug:** V-3-crps-sudeck / `kl-crps-urgency`
- **unit_id:** U-urgency + U-scope
- **brief_path:** `domains/medical/briefs/kl-crps.brief.md`
- **content_source:** `…/chapter-v-3-crps-sudeck.md` §5 (+ SCOPE-Zeile Grenze der eigenen Zuständigkeit)
- **genre:** illness-script (kl-kurz)
- **recipe_fn:** `kl-urgency-scope-stack` (T1–T4 present; multi-trigger T1)
- **author_role:** media
- **date:** 2026-07-30
- **ambition:** skip free vision
- **brief_class:** exploration
- **ontology:** v1.1

## Learner context

- **Actor:** HP Physio / PT Direktzugang (MSK-Nachbehandlung)
- **Time pressure / scan budget:** 5–15 s tier choice; action payload contiguous
- **Setting:** Praxis / Hausbesuch / post-OP Nachsorge

## Learner job (one primary)

**choose** (+ **stop** on T1) · secondary **constrain** (SCOPE)

**Primary job in one sentence:** Route posttrauma extremity presentations so emergency DDx never hide under “Sudeck”, CRPS working suspicion goes timely specialist, and treat-tier never skips DDx exclusion + net.

## Load risks (if form is wrong)

- Multi-T1 (Ischämie / Kompartment / Sepsis) becomes three ladder rungs instead of **one stop card**
- T1 and T2 collapse into one “Notfall” blob
- T3 (CRPS-Verdacht → FA) looks like free-pass T4
- T4 appears without “only after DDx exclusion + FA plan”
- SCOPE (Budapest, Systemtherapie, endgültige DDx) reads as T5 under Treat
- Form-meta captions inside figure

## Cognitive / layout levers

- **Segmenting:** one block per TIME tier present
- **Signaling:** T1 ≫ T2 ≫ T3 ≫ T4 (size/fill/left bar + **label**, not color alone)
- **Contiguity:** triggers + action inside same tier
- **Figure–ground:** SCOPE frame outside TIME stack (different geometry)
- **Collapse:** keep all four tiers (all present in C)

## Information architecture (zones)

| zone | loudness | content role | must feel like |
|---|---|---|---|
| TIME stack T1→T4 | T1 loudest | urgency + action | ordered priority landscape |
| T1 internal | max | **one** stop + multi-trigger list | single hard stop, not multi-rung ladder |
| T2 | loud | same-day medical path | distinct from T1 and T3 |
| T3 | medium | CRPS working suspicion → timely FA | documentation + referral, not system therapy |
| T4 | medium-quiet | treat + return precautions | permission with net **after** exclusion |
| SCOPE frame | quiet-strong border | competence boundary | **not** a TIME tier |
| Quiet | quiet | sources later | not before action |

## Must-see elements

1. **T1 ≠ T2** — separate labels and visual weight  
2. **Multi-trigger inside T1** — Ischämie · Kompartment · Infekt/Sepsis as list under **one** 112 action  
3. **ACTION inside tier** — not a third axis  
4. **T3 label** conveys timely specialist for CRPS working suspicion without emergency red flags  
5. **T4 prerequisites** visible: DDx exclusion + FA Mitbetreuung; no forced painful mobilization  
6. **SCOPE separate frame** — Budapest, Ausschlussdiagnostik, Systemtherapie, endgültige DDx — nicht HP  
7. **No form-meta** in figure  

## Urgency / weight encoding

- T1: solid danger + white/bold **112**  
- T2: warning/amber + **Notaufnahme / gleichtags**  
- T3: info/cool + **Zeitnah Facharzt**  
- T4: primary/teal + **Behandeln + Netz**  
- SCOPE: different geometry; content label only (e.g. „Grenze der eigenen Zuständigkeit“)  

## Branching / loop invariants

- No inventing extra tiers  
- No collapsing T1/T2  
- No “Treat without net” tier  
- Default-to-Danger: uncertainty does not authorize bagatellizing  

## Genre chrome

- illness-script / kl-kurz framework  
- **Must look like:** decision landscape with loud stop  
- **Must not look like:** solid-red master wall for whole chapter; Budapest algorithm flowchart for HP  

## Claim pins (German, copy-through from C)

| zone | allowed text (German) |
|---|---|
| T1 triggers | Akute Blässe, Pulslosigkeit, kalte Extremität (arterieller Gefäßnotfall); Spannungsblase, extreme Schwellung und Schmerz deutlich stärker als zur Verletzung passend frisch posttrauma (Kompartmentsyndrom); Fieber, eitrige Wunde oder systemische Infektzeichen mit drohender Sepsis |
| T1 action | Behandlung **sofort abbrechen**. Notfalltransport veranlassen. Übergabe mit Trauma-/OP-Kontext, Zeitverlauf und Red-Flag-Befunden durchführen. |
| T2 triggers | Starke, ausstrahlende oder progrediente Schmerzen mit systemischen Symptomen (Infektverdacht, Thromboseverdacht, drohendes Kompartiment) ohne unmittelbare 112-Lage; unklare akute Verschlechterung posttrauma |
| T2 action | Physiotherapie stoppen. Unverzüglich in die Notaufnahme einweisen oder gleichtags ärztlich abklären lassen. **Keine** forcierte Mobilisation durchführen. |
| T3 triggers | Disproportionierter Extremitätenschmerz plus vegetative oder trophische Zeichen nach Trauma/OP **ohne** Notfall-Red-Flags – Arbeitsverdacht CRPS |
| T3 action | Befunde dokumentieren (Seitenvergleich, Allodynie, Temperatur/Farbe, Trauma-Anamnese). **Zeitnah** der Schmerzmedizin, Neurologie oder Unfallchirurgie zuweisen. Die Budapest-Diagnose und Systemtherapie erfolgen **ärztlich**. |
| T4 triggers | Nur nach Ausschluss von Notfall-DDx und bei laufender oder geplanter fachärztlicher Mitbetreuung; keine hochgradige Allodynie ohne interprofessionellen Plan |
| T4 action | Modifizierte, schmerzadaptierte Therapie anwenden. **Keine** forcierte schmerzhafte Mobilisation durchführen. Klare Rückkehrgründe definieren (Fieber, rasche Schwellung, Pulse/Farbe, progrediente Parese). |
| SCOPE | Budapest-Diagnose, bildgebende/laborchemische Ausschlussdiagnostik, Systemtherapie (Medikamente, Interventionen), endgültige DDx Infekt/Kompartment/Ischämie/TVT — HP Physio screent und triagiert – stellt CRPS nicht abschließend fest und führt keine Systemtherapie durch |

## Explicit non-goals / must-not

- No invented thresholds / scores  
- No form-meta (“TIME-Achse”) inside figure  
- No HP system-therapy pathway  

## Presentation hypothesis

priority-landscape stack + nested multi-trigger T1 + orthogonal SCOPE frame

## Success criterion

Under scan stress: red-flag extremity → **112** (not “think CRPS first”); non-112 systemic/unclear acute → **same-day ED**; CRPS working suspicion without red flags → **timely FA + document**; never force mobilization as first move when allodynia/red flags present.

## Handoff to Graphics

- [x] Form Spec complete  
- [x] Ambition: skip free vision  
- [x] Claim pins from C §5  
- Realize: code transfer from `kl-core` urgency stack / wave-6 pin-swap patterns  
