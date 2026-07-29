# Form Spec (Media — Stage M)

- **chapter_id / slug:** V-12 Anaphylaxie / `kl-anaphylaxie-urgency`
- **unit_id:** U-urgency + U-scope (joint; ontology v1.1)
- **brief_path:** `domains/medical/briefs/kl-anaphylaxie.brief.md`
- **content_source:** Welle-06 `chapter-v-12-anaphylaxie.md` §5 Handlungstabelle + Delta-Matrix + Grenze / Autoinjektor / Tools — pins via content-map R
- **genre:** illness-script / lerntext (Master, kl-voll) — Flag-Master-Druck *innerhalb* Script-Chrome
- **recipe_fn:** `kl-urgency-nested-t1` + `kl-urgency-scope-stack` (5× T1 nested; T3 collapse)
- **author_role:** media
- **date:** 2026-07-26
- **ambition:** free-vision **optional** — primary optional ambition = **protocol-spine light** (Erkennen→Stopp→112→Lagerung/BLS→Autoinjektor-Support) *inside* T1 payload or slim companion rail; **no** drug-protocol UI. Code nested-T1 default first.
- **ontology:** v1.1 · content-map `domains/medical/briefs/_wave5/kl-anaphylaxie.content-map.md`
- **brief_class:** exploration

> Joint TIME + SCOPE. Anaphylaxie specialty: **fünf** explizite Sofort-112-Zeilen → **eine** T1-Karte mit internem Trigger-Cluster + **gemeinsamer** ACTION-Payload (112, Lagerung, BLS bei Bedarf, Autoinjektor-Support). Autoinjektor ist Payload **und** SCOPE-Constraint. T3 fehlt in C. Pins copy-through only. **Keine** form-meta in der Figur.

## Learner context

- **Actor:** HP Physio / PT im Direktzugang (Praxis / laufende Behandlung)
- **Time pressure / scan budget:** 5–15 s Stufe + Payload; Progredienz-Regel in einem Atemzug
- **Setting:** mögliche Allergenexposition (Stich, Nahrung, Medikament, Latex, Anstrengung); Autoinjektor ggf. vorhanden

## Learner job (one primary)

**choose** (+ **stop** on T1) · secondary **constrain** (SCOPE / Autoinjektor)

**Primary job in one sentence:** Atemwegs-/Kreislaufzeichen, progredientes Angioödem, Mehrorgan oder Allergie+Exposition+Progredienz der **Sofort-112**-Stufe zuordnen, Payload (Stopp, Lagerung, BLS bei Bedarf, Autoinjektor nur patienteneigen) ausführen, und **kein** medikamentöses Eigenprotokoll lesen.

## Load risks (if form is wrong)

- Fünf 112-Zeilen als **fünf TIME-Sprossen**
- T1 und T2 kollabieren (beide „kein PT“) ohne Label-Gewicht
- Autoinjektor als **HP-Therapieprotokoll** / Dosierungsleiter / Ampullen-UI
- BLS fehlt im Kollaps-Pfad
- SCOPE als graue T5
- Erfundenes T3
- Ring/Messmer Grad I–IV als Ausschluss-Ampel
- Solid-red full-bleed Notfallplakat (Slave-Chrome)
- Treat-without-net (Akutallergie wegmobilisieren)
- Form-meta („Trigger cluster“, EN stages)

## Cognitive / layout levers

- **Segmenting:** T1 / T2 / T4 nur wo C füllt; T3 weglassen  
- **Nesting:** 5 Trigger **innen** T1; **eine** Handlungszeile (Payload)  
- **Signaling:** T1 ≫ T2 ≫ T4; Labels **112** vs. **Notaufnahme/gleichtags**  
- **Contiguity:** Trigger-Liste + Payload + optional protocol-spine in derselben T1-Karte  
- **Figure–ground:** SCOPE-Frame außerhalb TIME  
- **Tempo:** Progredienz / „Minuten zählen“ als Pin in T1-Logik, nicht neue Stufe  
- **Constraint dual-coding:** Autoinjektor-Text in T1 **und** SCOPE ohne Widerspruch  

## Information architecture (zones)

| zone | loudness | content role | must feel like |
|---|---|---|---|
| **T1 nested hard-stop** | **max** | 5 Trigger-Cluster + gemeinsame ACTION-Payload | **eine** Stop-Karte |
| T1 trigger list (a–e) | loud (sub) | Situationen scannbar | interne Liste, keine 5 Leitern |
| T1 ACTION payload | max | 112 · Stopp · Lagerung · BLS bei Bedarf · Autoinjektor-Support · Überwachen · kein Eigenprotokoll | operative Dichte *in* Script-Chrome |
| Optional protocol-spine | loud-medium (ambition) | Erkennen → Stopp → 112 → Lagerung/BLS → Autoinjektor-Support | schmale Kette, **kein** Medikamenten-Algorithmus |
| Progredienz-Pin | loud in/near T1 | mild startend → bei Progredienz/AW-Kreislauf **sofort 112** | Regel, keine Stufe |
| **T2** | loud &lt; T1 | milde nicht-progressive / isolierte stabile Haut / unklar ohne 112-Kriterien | gleichtags Arzt; Sicherheitsnetz 112; biphasisch beobachten |
| **T3** | — | abwesend | kein leerer Slot |
| **T4** | medium-quiet | PT **erst nach** Klärung und ohne akute Red Flags | Erlaubnis nach Klärung, nicht Akutindikation |
| **SCOPE frame** | quiet-strong border | kein Eigenprotokoll; keine Feindiagnostik; Autoinjektor nur patienteneigen; Score ≠ 112-Ersatz | andere Geometrie; Content-Titel ok |
| Quiet | quiet | Quellen / Slave-Meta | after action |

## Must-see elements

1. **Fünf** C-Trigger in **einer** T1-Stufe (nested)  
2. **T1 ≠ T2** Labels und Gewicht  
3. ACTION-Payload enthält: **112**, Sitzung beenden, Notfall-/Schocklagerung, **keine Belastung**, **BLS bei Bedarf**, **Autoinjektor nur patienteneigen/verordnet/Anwendung bekannt**, Überwachen, **kein** medikamentöses Eigenprotokoll  
4. **Progredienz-Regel** sichtbar (auch bei zunächst milden Beschwerden)  
5. **Kein T3**  
6. **T4:** vermutete allergische Akutreaktion **nicht** als PT-Primärindikation; PT erst nach Klärung ohne Red Flags  
7. **SCOPE:** Ausschlussdiagnostik, Schweregradfeinabstufung, i.m./i.v. aus eigener Kompetenz, Allergiediagnostik verboten; Fokus Screening/112/BLS/Autoinjektor-Support  
8. Autoinjektor **nicht** als Ersatz für 112; im Zweifel Notruf und BLS priorisieren  
9. Genre: teal script framework; solid danger **only** on T1  
10. **Keine** form-meta in der Figur  

## Icon meaning (optional — free-vision / protocol-spine)

| pin / zone | drawing must show | must not show |
|---|---|---|
| T1 / 112 | Notruf + Sitzungsstopp als **eine** Stufe | fünf getrennte rote Ampel-Sprossen |
| Atemweg | Stridor / Zunge / Enge als Bedrohung (schematisch) | detaillierte Laryngoskopie; erfundene Grade |
| Kreislauf / Schock | Kollaps / Schocklagerung-Hinweis | reiner „vasovagal ist harmlos“-Comic |
| BLS | BLS-bei-Bedarf als **Handlungshinweis** (nicht voller CPR-Algorithmus-Fork) | komplette BLS-Dual-Lane-Karte (Slave III) |
| Autoinjektor | **patienteneigenes** Gerät / Assistenz | Praxis-Ampulle; mg/ml; Step-by-step Injektion ohne C; Produktwerbung |
| Protocol-spine | 5 Handlungsschritte aus C-Kette | Drug escalation ladder; Ring-Messmer I–IV Ampel |

## Urgency / weight encoding

- **T1:** solid danger + fett **112 / Sofort**; maximale Fläche; nested list inside  
- **T2:** amber/warning + **Notaufnahme / gleichtags Arzt**  
- **T3:** absent  
- **T4:** teal + **Behandeln mit Sicherheitsnetz** (inhaltlich: erst nach Klärung)  
- **SCOPE:** square/hairline frame; title = content („Grenze der eigenen Zuständigkeit“); never T-chip  
- Protocol-spine (if any): same danger family as T1 payload, **narrower** than full III card  

## Branching / loop invariants

- Multi-112 ⊂ **one** T1  
- T2 *nicht* Notruf, aber **keine fortgesetzte PT**; Verschlechterung → T1  
- T4 **nie** „Akutallergie behandeln“  
- Absolute KI: vermutete akute anaphylaktische / rasch progrediente Reaktion → keine fortgesetzte Behandlung, Belastung, manuelle „Enge-Abklärung“  
- Autoinjektor: nur patienteneigen + verordnet + Anwendung bekannt; sonst 112/BLS priorisieren  
- Score (Ring/Messmer) **≠** rule-out — anzeigen nur mit CERTAINTY-Bremse oder weglassen  
- Biphasisch 6–24 h: T2/Netz-Pin — **keine** eigene TIME-Stufe  
- Master ≠ Slave III/IV  

## Genre chrome

- **Must look like:** Illness-Script Entscheidungsinstrument mit hard-stop nested-T1 und orthogonalem SCOPE; operative ACTION-Dichte *innerhalb* Master-Chrome  
- **Must not look like:** III-Notfallkarten-Vollrot-Plakat; Medikamenten-Eskalationsprotokoll; Melanom Exception-T1 (hier volle T1-Wand); EN-Meta-Dashboard  

## Claim pins (German, copy-through from C / content-map)

### T1 — 112 / Sofort (eine Stufe, fünf Cluster)

| step / zone | allowed text (German) |
|---|---|
| T1 label | 112 / Sofort |
| T1-a trigger | Atemnot, Stridor, Zungenschwellung, Schluckstörung oder kloßige Sprache nach möglicher Allergenexposition |
| T1-a action (cluster-nah) | Sitzung sofort beenden. **112 wählen.** Notfalllagerung; keine Belastung. Patienteneigenen Adrenalin-Autoinjektor unterstützen, wenn verordnet und Anwendung bekannt. Bis zum Eintreffen des Rettungsdienstes überwachen |
| T1-b trigger | Kreislaufkollaps, Hypotonie, Bewusstseinsstörung oder Schock im allergischen Kontext |
| T1-b action nuance | **112 wählen.** Schocklagerung nach Lage und Bewusstsein. **BLS** bei Bedarf. Kein medikamentöses Eigenprotokoll durch HP/Physio |
| T1-c trigger | Generalisierte Urtikaria **plus** gastrointestinale **und** respiratorische Zeichen |
| T1-c action nuance | **112 wählen.** Systemische Anaphylaxie bis zum Ausschluss. Keine fortgesetzte PT |
| T1-d trigger | Bekannte schwere Allergie plus erneute Exposition mit klarer Progredienz (Haut → Atemwege/Kreislauf oder Mehrorgan) |
| T1-d action nuance | **112 wählen.** Notfallmaßnahmen wie oben. Autoinjektor nur patienteneigen und bei bekannter Anwendung |
| T1-e trigger | Rapide Progression über mehrere Organsysteme oder progredientes Angioödem |
| T1-e action nuance | **112 wählen.** Minuten zählen; keine Verzögerung durch weitere „Abklärung“ |
| T1 ACTION-Kern (einmal laut, Payload) | **112 wählen** / Sitzung beenden; Notfall- bzw. Schocklagerung; keine Belastung; keine fortgesetzte PT; **BLS bei Bedarf**; **Autoinjektor-Support** nur patienteneigen, verordnet, Anwendung bekannt; Überwachen bis Rettungsdienst; **kein** medikamentöses Eigenprotokoll |
| Progredienz | Auch wenn Beschwerden zunächst mild wirken: jede **Progredienz** oder jedes neu auftretende Atemwegs- oder Kreislaufzeichen erfordert **sofort 112** |
| Optional spine | Erkennen → Stopp → 112 → Lagerung/BLS → Autoinjektor-Support |

### T2 — Notaufnahme / gleichtags Arzt

| step / zone | allowed text (German) |
|---|---|
| T2 trigger | Persistierende, milde, **nicht** progressive Beschwerden; isolierte stabile Hautreaktion ohne Atemwegs-/Kreislaufbeteiligung; unklare Ursache bei bekannter Allergie **ohne** 112-Kriterien |
| T2 action | Keine Physiotherapie als reines Abwarten. Gleichtags ärztlich vorstellen. Bei jeder Verschlechterung **sofort 112**. Biphasischen Verlauf nicht allein häuslich riskieren, wenn ärztliche Beobachtung indiziert ist |
| T2 delta echo | Isolierte stabile Hautreaktion ohne Atemwege/Kreislauf; milde nicht-progressive Beschwerden; unklare Allergie ohne 112-Kriterien → **Keine PT**; gleichtags Arzt/Notaufnahme; Sicherheitsnetz 112 |

### T3

| step / zone | allowed text (German) |
|---|---|
| T3 | *(nicht in C — weglassen)* |

### T4 — Behandeln mit Sicherheitsnetz

| step / zone | allowed text (German) |
|---|---|
| T4 situation | **Keine** vermutete akute allergische Reaktion im Direktzugang als PT-Primärindikation |
| T4 action | Vermutete allergische Akutreaktion mindestens ambulant ärztlich abklären. PT erst nach Klärung und ohne akute Red Flags |

### Kontraindikationen (C)

| step / zone | allowed text (German) |
|---|---|
| KI | Jede vermutete akute anaphylaktische oder rasch progrediente allergische Reaktion = **absolute Kontraindikation** für fortgesetzte Behandlung, Belastung und manuelle „Enge-Abklärung“ |
| Session-Abbruch | Abbruch bei neuem Atemnot, Heiserkeit, Schwindel, Blutdruckabfall-Verdacht oder rascher Hautausbreitung |
| Medikation | Keine i.m./i.v. Medikation aus eigener Kompetenz |

### SCOPE — Grenze der eigenen Zuständigkeit

| step / zone | allowed text (German) |
|---|---|
| SCOPE title | Grenze der eigenen Zuständigkeit |
| Verboten | Ausschlussdiagnostik; Schweregradfeinabstufung; i.m./i.v. Notfallmedikation aus eigener Kompetenz; Allergiediagnostik; medikamentöses Eskalationsprotokoll durch HP Physio; erst mobilisieren / MSK-„Abklärung“ der Enge |
| Erlaubt / Fokus | Screening, Sitzungsabbruch, Notfalllagerung, **BLS** bei Bedarf, Unterstützung beim **patienteneigenen** Adrenalin-Autoinjektor |
| Autoinjektor | Nur **patienteneigen**; Unterstützung wenn verordnet und Anwendung bekannt; HP Physio injiziert nicht aus eigener Kompetenz; rechtliche und schulungsbezogene Grenzen der Assistenz; **im Zweifel Notruf und BLS priorisieren** |
| CERTAINTY | Es gibt **keine** validierte alleinige Score-Skala, die im Direktzugang die 112-Entscheidung ersetzt |
| Ring/Messmer | Grad I–IV primär **deskriptiv**, ärztlich/klinisch — **nicht** als HP/Physio-Ausschlussinstrument (nur mit Bremse oder weglassen) |

### Big-Picture-Echo (optional near T1, not new tier)

| step / zone | allowed text (German) |
|---|---|
| BP | Anaphylaxie ist eine akute, potenziell lebensbedrohliche systemische Reaktion |
| BP | Jede Konstellation mit Atemwegs- oder Kreislaufzeichen, progredientem Angioödem oder rapider Mehrorganbeteiligung ist ein **112-Notfall** |
| BP | Auftrag ist Screening, Sitzungsabbruch, Notfalllagerung, **BLS** bei Bedarf und Unterstützung beim **patienteneigenen** Adrenalin-Autoinjektor |

### Biphasisch (T2/Netz, nicht TIME-Stufe)

| step / zone | allowed text (German) |
|---|---|
| Biphasisch | Erneute Verschlechterung ca. **6–24 h** nach Initialereignis möglich; ärztliche Beobachtung; initiale Besserung ersetzt keine Einordnung |

## Explicit non-goals / must-not

- No form-meta / EN stage titles  
- No five TIME rungs for five triggers  
- No drug protocol / doses / injection choreography  
- No invented T3  
- No Ring-Messmer exclusion ladder  
- No invented % without-skin incidence  
- No Treat-without-net  
- No full BLS algorithm fork replacing Slave III  
- No content rewrite  

## Presentation hypothesis (pattern name)

**US-B nested multi-T1 (5-trigger Anaphylaxie)** + **US-A SCOPE stack** + **US-C T3 collapse**  
Optional ambition: **protocol-spine light** inside/beside T1 (not III poster).

## Success criterion

Unter Scan-Stress ordnet die lernende Person Atemwegs-/Kreislauf-/Progredienz-/Mehrorgan-/Allergie+Exposition-Cluster dem **einen** **112**-Pfad zu, liest Payload (**BLS bei Bedarf**, **Autoinjektor nur patienteneigen**), unterscheidet **T2** (gleichtags, kein Notruf-Label), **erfindet kein T3**, behandelt Akutallergie **nicht** unter T4 ohne Klärung, und liest **SCOPE** (kein Eigenprotokoll, Score ≠ Ausschluss) als **Nicht-Stufe**.

## Handoff to Graphics

- [x] Form Spec complete  
- [x] Ambition optional protocol-spine; nested-T1 code default  
- [x] Claim pins from content-map / C  
- Next: `medical-graphics` G0+; claim audit if free vision draws Autoinjektor/BLS  
- Transfer: ACS nested-T1 pattern with **Anaphylaxie pins** — do not copy ACS thorax text  
