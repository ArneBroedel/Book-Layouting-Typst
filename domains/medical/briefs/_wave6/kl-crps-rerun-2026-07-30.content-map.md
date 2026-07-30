# Content map (R) — CRPS / Morbus Sudeck · `kl-crps-rerun-2026-07-30`

- **date:** 2026-07-30  
- **genre:** kl-kurz  
- **content (C, read-only):**  
  `/home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-07-welle-06-kl-full/monographs/chapter-v-3-crps-sudeck.md`  
- **chapter_id:** V-3-crps-sudeck  
- **ontology:** v1.1  
- **provenance:** this rerun only — **no** transfer from banned pilot `kl-crps`

## DA job (Direktzugang)

Früherkennung disproportionalen Extremitätenschmerzes nach Trauma/OP; **Ausschluss** notfallrelevanter DDx (Infekt, Kompartment, arterielle Ischämie, TVT); bei CRPS-Arbeitsverdacht **zeitnah** Facharzt — Budapest-Diagnose und Systemtherapie **ärztlich**, nicht HP Physio.

## Units → ontology

| C anchor | unit_id | job | notes |
|---|---|---|---|
| Big Picture | U-bigpicture | understand | Was / Gefahr (Fehllabel) / Richtung (triage + Zuweisung) |
| §1 Wann denken? | U-enabling | recognize | Trauma/OP Extremität; postoperativ; Tage–Wochen |
| §2 Entstehung | U-mechanism | understand | entzündlich · nerval · autonom → regional distal |
| §3 Klinische Hinweise | U-cues | recognize | 4 Kanäle; Beobachtung/Untersuchung laut (Allodynie, Seitenvergleich) |
| §4 Erhärtet / Passt nicht | U-for-against | distinguish | FA two poles |
| §4 Nicht übersehen | U-must-not-miss | stop-awareness | Infekt · Kompartment · Ischämie · TVT |
| §4 Trügerische Erklärungen | U-mimic | distinguish (error) | 4 frames |
| §5 Handeln und Dringlichkeit | U-urgency + U-scope | choose + constrain | T1–T4 all filled in C; SCOPE = Budapest/Systemtherapie/DDx endgültig |
| §6 Fall | U-transfer | apply | open Qs only |
| DDx-Minimal | U-ddx (delta) | distinguish | only if not redundant with NM |

## TIME matrix (pin-ready from C §5)

| Tier | Label | Triggers (condensed, C wording) | ACTION payload |
|---|---|---|---|
| **T1** | 112 / Sofort | Akute Blässe, Pulslosigkeit, kalte Extremität (arteriell); Spannungsblase, extreme Schwellung + Schmerz frisch posttrauma (Kompartment); Fieber, eitrige Wunde, systemische Infektzeichen mit drohender Sepsis | Behandlung **sofort abbrechen** · Notfalltransport · Übergabe Trauma/OP-Kontext, Zeitverlauf, Red-Flag-Befunde |
| **T2** | Notaufnahme / gleichtags Arzt | Starke/progrediente Schmerzen + systemische Symptome (Infekt/TVT/drohendes Kompartiment) ohne unmittelbare 112-Lage; unklare akute Verschlechterung posttrauma | PT stoppen · unverzüglich NA / gleichtags · **keine** forcierte Mobilisation |
| **T3** | Zeitnah Facharzt | Disproportionaler Extremitätenschmerz + vegetative/trophische Zeichen nach Trauma/OP **ohne** Notfall-Red-Flags (Arbeitsverdacht CRPS) | Dokumentieren (Seitenvergleich, Allodynie, Temp/Farbe, Trauma) · **zeitnah** Schmerzmedizin/Neurologie/Unfallchirurgie · Budapest + Systemtherapie **ärztlich** |
| **T4** | Behandeln + Sicherheitsnetz | Nur nach Ausschluss Notfall-DDx + laufende/geplante fachärztliche Mitbetreuung; keine hochgradige Allodynie ohne interprofessionellen Plan | Schmerzadaptierte, modifizierte Therapie · **keine** forcierte schmerzhafte Mobilisation · Rückkehrgründe (Fieber, rasche Schwellung, Pulse/Farbe, progrediente Parese) |

**T3 present in C** → do not collapse.

## SCOPE (orthogonal, not a ladder step)

Budapest-Diagnose · bildgebende/laborchemische Ausschlussdiagnostik · Systemtherapie (Medikamente, Interventionen) · endgültige DDx Infekt/Kompartment/Ischämie/TVT — HP Physio **screent und triagiert**, stellt CRPS nicht abschließend fest und führt keine Systemtherapie durch.

## Mimic frames (C §4)

| False frame | Danger (C) |
|---|---|
| „Normaler Heilungsschmerz“ | entwarnt bei klarer Disproportionalität und vegetativen Zeichen **nicht** |
| „Psychosomatik / Überempfindlichkeit“ | psychische Anteile schließen organische Notfall-DDx und CRPS **nicht** aus |
| „Nur Nervenläsion / isolierte Neuropathie“ | isolierte Nervenverletzung erklärt kein volles regionales vegetativ-trophisches Bild |
| „Entzündliches CRPS“ bei Fieber/Eiter | Infektzeichen (Osteomyelitis, septische Arthritis, Wundinfekt) haben **Vorrang** vor CRPS-Label |

## Distinctive pressure vs library

- **Not** solid-red master wall: T1 is **DDx emergencies mislabeled as CRPS**, not “CRPS itself is 112”
- Regional **distal** pattern + Allodynie + vegetative/trophische Zeichen is recognition core
- Budapest **ärztlich** is loud SCOPE brake
- No score ladder; no anatomy free vision (pause)

## Ambition candidates

| unit | why free-vision | track |
|---|---|---|
| U-mimic | error frames easy to bury; peel/map hierarchy teaches “frame peels → danger” | **free-vision-ambition** |
| U-cues / regional cues | dual-coding of regional distal + domain channels (non-body abstract) | **free-vision-ambition** |
| U-urgency | standard stack transfer | free-vision optional; **code-first** default after harvest if free drifts |
| FA + NM | library discrimination | code transfer |
| BP / enabling / mechanism / transfer | band grammar | code transfer |

## Ambition skip

- Body/limb photo anatomy (H-Gfx required) — **skip free vision**
