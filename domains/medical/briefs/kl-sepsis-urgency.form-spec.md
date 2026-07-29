# Form Spec — Sepsis urgency + scope

- **chapter_id / slug:** V-8-sepsis-flags / `kl-sepsis-urgency`
- **unit_id:** U-urgency + U-scope
- **brief_path:** `domains/medical/briefs/kl-sepsis.brief.md`
- **content_source:** `chapter-v-8-sepsis-flags.md` EH §5 (+ content-map R)
- **genre:** illness-script / lerntext (kl-voll Master)
- **recipe_fn:** `kl-urgency-nested-t1` + stack T2/T4 + SCOPE
- **author_role:** media
- **date:** 2026-07-29
- **ambition:** free-vision **skip** (code nested-T1)
- **brief_class:** exploration

## Learner context

- **Actor:** HP Physio / PT Direktzugang  
- **Scan budget:** 5–15 s to hit 112 vs gleichtags vs treat  
- **Setting:** laufende MSK-Behandlung, geriatrisch, post-OP, unspezifische Abgeschlagenheit

## Learner job

**choose** + **stop** on T1 · **constrain** SCOPE

## Load risks

- Six 112 rows as six ladder rungs  
- Gatekeeper single-criterion lost (only qSOFA ≥2 shown)  
- T3 invented  
- SCOPE as grey bottom tier  
- qSOFA&lt;2 as green clearance  
- Solid-red chapter wall

## Zones

| zone | loudness | role |
|---|---|---|
| T1 nested | **max** | 6 trigger clusters + one ACTION |
| T2 | loud &lt; T1 | Infekt+System ohne akute Vitalbedrohung |
| T4 | medium-quiet | mild local / Abgeschlagenheit ohne Systemzeichen |
| SCOPE | quiet-strong border | SOFA/Labor/Antiinfektiva/Score-Ausschluss verboten |

## Must-see

1. **One** solid T1 card with **six** internal clusters (not 6 rungs)  
2. Shared T1 ACTION: Sitzung beenden · 112 · keine Belastung/Manual · Vitale ohne Notrufverzögerung  
3. T2 gleichtags NA/Arzt · bei Verschlechterung 112  
4. **No T3**  
5. T4 engmaschig + Rückkehrgründe (Fieber, Verwirrtheit, Dyspnoe, RR-Abfall, Oligurie, Petechien)  
6. SCOPE: Diagnosesicherung/SOFA/Antiinfektiva/Schocktherapie/Score-Ausschluss **outside**; qSOFA/NEWS2 **sensibilisieren only**  
7. Genre teal; solid danger only T1  
8. **No form-meta** in figure

## Claim pins (German, copy-through)

| zone | allowed text |
|---|---|
| T1 action | Sitzung sofort beenden. **112 wählen.** Keine Belastung, keine manuelle Therapie. Vitalparameter erheben, soweit ohne Notrufverzögerung. Übergabe: Infektverdacht, Zeitverlauf, Vitalwerte, Organzeichen |
| T1-a | vermuteter/gesicherter Infekt plus Hypotonie, Verwirrtheit **oder** schwere Dyspnoe |
| T1-b | Gatekeeper: bereits **ein** Kriterium syst. RR ≤100 **oder** AF ≥22 **oder** Vigilanz↓ **oder** Schockzeichen im Infektkontext |
| T1-c | formaler qSOFA ≥2 |
| T1-d | Ruhedyspnoe mit Atemnotzeichen; Oligurie **plus** Kreislaufinstabilität |
| T1-e | Petechien/Purpura plus schweres Krankheitsgefühl |
| T1-f | postoperativ oder immungeschwächt mit raschem Funktionsknick und Infektzeichen |
| T2 | Infekt plus deutliche Systemzeichen **ohne** unmittelbar greifbare Vitalbedrohung → keine PT; gleichtags Notaufnahme/Akut-Arzt; bei Verschlechterung 112 |
| T4 | unspezifische Abgeschlagenheit oder milder lokaler Infekt **ohne** Systemzeichen, Vitale unauffällig → vorsichtige PT; keine Belastungseskalation bei Unsicherheit |
| SCOPE | Diagnosesicherung, SOFA/Labor, Antiinfektiva, Schocktherapie, Score als Ausschluss — nicht HP; qSOFA/NEWS2 sensibilisieren |

## Genre chrome

- Must look like: illness-script Master, teal framework  
- Must not: III notfallkarte solid red wall; score calculator

## Success criterion

Learner assigns any of the six 112 clusters to **one** stop card and keeps scores out of the TIME ladder.
