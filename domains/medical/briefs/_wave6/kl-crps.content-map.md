# Content map — CRPS / Morbus Sudeck (R)

**Wave:** Wave-6 · studio situation 2 · exploration prototype  
**Date:** 2026-07-30  
**slug:** `kl-crps`  
**read-only C** · no Typst · no claim rewrite

---

## Meta

| Feld | Wert |
|------|------|
| **C slug** | `crps-sudeck` |
| **kapitel_id** | `V-3-crps-sudeck` |
| **typ** | **`kl-kurz`** (Master; panel full; job_id K23) |
| **C path** | `/home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-07-welle-06-kl-full/monographs/chapter-v-3-crps-sudeck.md` |
| **Titel C** | CRPS (komplexes regionales Schmerzsyndrom / Morbus Sudeck) – disproportionaler Extremitätenschmerz nach Trauma |
| **status C** | draft (user) · C meta: format-ok · ampel GRÜN · human_review required · iterate_exit E1 |
| **parent_system** | V-3 · slaves III-5 / IV-4 geplant |
| **Master-Rolle** | Illness-Script Master MSK-Nachbehandlung: Früherkennung + Notfall-DDx-Ausschluss + zeitnahe FA-Zuweisung; **nicht** Budapest-Diagnose / Systemtherapie |

---

## What this chapter teaches (DA job)

Im Direktzugang ist die **eigentliche Gefahr die Fehllabelung**: (A) lebensbedrohliche DDx (Infekt, Kompartmentsyndrom, arterielle Ischämie, TVT) als „Sudeck/CRPS“ abtun, oder (B) echtes CRPS als „normalen Heilungsschmerz“ / reine Psychosomatik bagatellisieren.  
Charakteristikum: **disproportionaler** Extremitätenschmerz **plus** sensorische / motorische / vasomotorische / trophische Zeichen, **distal** der Läsion, Tage–Wochen post Trauma/OP.  
HP Physio **screent und triagiert**; Budapest-Diagnose und Systemtherapie sind **ärztlich** (SCOPE).

---

## Script units → ontology

| C section | unit id | learner job | load risk |
|-----------|---------|-------------|-----------|
| Big Picture + Gefahr | U-bigpicture | understand + stop | danger buried in prose |
| §1 Wann denken | U-enabling | recognize | risk soup |
| §2 Mechanismus | U-mechanism | understand | decoration only |
| §3 Klinische Hinweise | **U-cues** (ambition) | recognize | table dump; no regional gestalt |
| §4 Verdacht / FA / NM | U-for-against + U-must-not-miss | distinguish | list collapse |
| §4 Trügerische Erklärungen | **U-mimic** (ambition) | error / distinguish | frames buried |
| §5 Handeln + Dringlichkeit | **U-urgency** + **U-scope** | choose + stop + constrain | T1 multi-trigger collapsed; SCOPE as T5; T3=T4 |
| §6 Fall | U-transfer | apply | spoiler / free pass on „überempfindlich“ |
| DDx-Minimal | **U-discrimination** | distinguish | 2×2; CRPS row softens emergencies |

---

## TIME matrix (pin-ready from §5)

| Tier | Situation (C) | ACTION (payload) |
|------|---------------|------------------|
| **T1 112** | (1) Akute Blässe, Pulslosigkeit, kalte Extremität (arterieller Gefäßnotfall); (2) Spannungsblase, extreme Schwellung und Schmerz deutlich stärker als zur Verletzung passend **frisch posttrauma** (Kompartmentsyndrom); (3) Fieber, eitrige Wunde oder systemische Infektzeichen mit drohender Sepsis | Behandlung **sofort abbrechen**. Notfalltransport veranlassen. Übergabe mit Trauma-/OP-Kontext, Zeitverlauf und Red-Flag-Befunden. |
| **T2 Notaufnahme / gleichtags Arzt** | Starke, ausstrahlende oder progrediente Schmerzen mit systemischen Symptomen (Infektverdacht, Thromboseverdacht, drohendes Kompartiment) **ohne** unmittelbare 112-Lage; unklare akute Verschlechterung posttrauma | Physiotherapie stoppen. Unverzüglich NA oder gleichtags ärztlich. **Keine** forcierte Mobilisation. |
| **T3 Zeitnah Facharzt** | Disproportionierter Extremitätenschmerz plus vegetative oder trophische Zeichen nach Trauma/OP **ohne** Notfall-Red-Flags — Arbeitsverdacht CRPS | Befunde dokumentieren (Seitenvergleich, Allodynie, Temperatur/Farbe, Trauma-Anamnese). **Zeitnah** Schmerzmedizin / Neurologie / Unfallchirurgie. Budapest-Diagnose und Systemtherapie **ärztlich**. |
| **T4 Behandeln + Netz** | Nur nach Ausschluss von Notfall-DDx und bei laufender oder geplanter fachärztlicher Mitbetreuung; keine hochgradige Allodynie ohne interprofessionellen Plan | Modifizierte, schmerzadaptierte Therapie. **Keine** forcierte schmerzhafte Mobilisation. Rückkehrgründe: Fieber, rasche Schwellung, Pulse/Farbe, progrediente Parese. |

**SCOPE (eigene Zeile, nicht TIME-Tier):** Budapest-Diagnose; bildgebende/laborchemische Ausschlussdiagnostik; Systemtherapie (Medikamente, Interventionen); endgültige DDx Infekt/Kompartment/Ischämie/TVT — HP screent/triagiert, stellt CRPS **nicht** abschließend fest und führt **keine** Systemtherapie.

**Default-to-Danger:** Bei Unsicherheit organische Notfall-DDx und CRPS **nicht** psychisch wegerklären; Notfallzeichen vor CRPS-Label.

---

## Mimic frames (4, from §4)

| frame | danger |
|-------|--------|
| „Normaler Heilungsschmerz“ | entwarnt bei Disproportionalität + vegetativen Zeichen **nicht** |
| „Psychosomatik / Überempfindlichkeit“ | psychische Anteile schließen organische Notfall-DDx und CRPS **nicht** aus |
| „Nur Nervenläsion / isolierte Neuropathie“ | isolierte Nervenverletzung erklärt kein volles regionales vegetativ-trophisches Bild — und umgekehrt |
| „Entzündliches CRPS“ bei Fieber/Eiter | systemische/lokale Infektzeichen (Osteomyelitis, septische Arthritis, Wundinfekt) haben **Vorrang** vor dem CRPS-Label |

---

## Must-not-miss (from §4)

- Fieber + eitrige Wunde → Infekt/Osteomyelitis  
- Extreme Schwellung + Spannungsblase frisch posttrauma → Kompartmentsyndrom  
- Akute Blässe, Kälte, Pulslosigkeit → arterielle Ischämie  
- Einseitige Beinschwellung + Risikofaktoren → TVT  

---

## Discrimination rows (DDx-Minimal)

CRPS · akutes Kompartmentsyndrom · tiefe Infektion/OM/sept. Arthritis · arterielle Ischämie · TVT · isolierte periphere Nervenläsion · somatische Belastungsstörung (**erst nach** Ausschluss organischer/notfallrelevanter Ursachen)

---

## Distinctive form pressure vs library

| vs | delta |
|----|-------|
| Gicht urgency | T1 is **multi-emergency** (Ischämie / Kompartment / Sepsis), not septic-joint alone; T3 is **CRPS-Verdacht → FA**, not “already classified gout” |
| Compartment spatial | CRPS is **post-acute regional** (days–weeks), not hours-critical loge alone — but Kompartment remains T1 DDx |
| Melanom peel | Mimic is **label traps** (Heilungsschmerz / Psyche / Nerv / „entzündliches CRPS“), not letter criteria |
| Ambition | **Regional distal cue gestalt** (§3 domains) + **mimic peel** — not pure pin-swap monotony |

---

## Ambition plan

| unit | free vision | carrier bias |
|------|-------------|--------------|
| U-urgency + U-scope | **skip** (code / library stack) | `kl-urgency-scope-stack` pin-swap |
| U-mimic | **required** | peel / frame→danger free vision then recreate |
| U-discrimination | **skip** | code discrimination table |
| U-cues (regional) | **required** | dual-channel cue board or distal-regional map (no anatomy deep dive → no H-Gfx) |
| Anatomy / procedure photo | **paused** | none |

---

## Success criterion (chapter)

Under scan stress the learner: (1) **never** uses “Sudeck” to clear emergency DDx, (2) routes multi-trigger red flags to **112**, (3) routes non-112 systemic/unclear acute posttrauma to **same-day ED**, (4) treats CRPS working suspicion as **timely specialist + document**, not HP system therapy, (5) does **not** force mobilization on high-grade allodynia / without interprofessional plan.
