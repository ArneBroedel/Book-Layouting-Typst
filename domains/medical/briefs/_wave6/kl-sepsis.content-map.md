# Content map — Sepsis-Flags (R)

**Wave:** Wave-6 closing · **read-only C** · no Typst · no claim rewrite  
**Date:** 2026-07-29  
**slug:** `kl-sepsis`

---

## Meta

| Feld | Wert |
|------|------|
| **C slug** | `sepsis-flags` |
| **kapitel_id** | `V-8-sepsis-flags` |
| **typ** | **`kl-voll`** (Master; panel full; job_id K20) |
| **C path** | `Kursbuch5/…/welle-06-kl-full/monographs/chapter-v-8-sepsis-flags.md` |
| **Titel C** | Sepsis-Verdacht und systemische Infekt-Flags |
| **Untertitel C** | Wenn „Rücken“, Delir oder „nur Abgeschlagenheit“ den Notfall maskieren |
| **status C** | format-ok · ampel GRÜN · human_review required · iterate_exit E1 |
| **Master-Rolle** | Illness-Script Master: Gatekeeper Infekt+Systembedrohung; ersetzt nicht III-sepsis / IV-systemischer-infekt |

---

## What this chapter teaches (DA job)

Im Direktzugang zählt **Infekt + Systembedrohung**, nicht die laborbasierte SOFA-Diagnose. Bereits **ein** Gatekeeper-Instabilitätskriterium (RR ≤100 **oder** AF ≥22 **oder** Vigilanz↓) im Infektkontext → **112** (konservativer als formaler qSOFA ≥2 allein). qSOFA ≥2 → 112; qSOFA &lt;2 schließt Sepsis **nicht** aus. Geriatrisch/immunsupprimiert oft **ohne Fieber**. MSK-„Rücken“ / Delir / „vagal“ können maskieren. PT stoppt Belastung und organisiert Weiterleitung — Antiinfektiva/Schocktherapie sind SCOPE.

---

## Script units → ontology

| C section | unit id | learner job | load risk |
|-----------|---------|-------------|-----------|
| Big Picture | U-bigpicture | understand + stop | prose; danger buried |
| §1 Enabling | U-enabling | recognize | risk soup |
| §2 Mechanism | U-mechanism | understand | decoration |
| §3 Cues | U-cues | recognize | table dump |
| §4 FA / NM | U-for-against + U-must-not-miss | distinguish | 2×2 collapse |
| §4 Mimic | U-mimic | distinguish error | buried frames |
| §5 Urgency | U-urgency | choose + stop | 6×112 as ladder; T1=T2 |
| §5 Scope | U-scope | constrain | score as tier; SOFA as HP tool |
| Gatekeeper cluster | **U-flag-cluster** (ambition) | stop / scan | qSOFA only; miss single-criterion rule |
| §6 Fall | U-transfer | apply | spoiler |

---

## TIME matrix (pin-ready)

| Tier | Situation (C) | ACTION (payload) |
|------|---------------|------------------|
| **T1** (nested, 6 clusters) | (1) Infekt + Hypotonie/Verwirrtheit/schwere Dyspnoe · (2) Gatekeeper: **ein** von RR≤100 / AF≥22 / Vigilanz↓ / Schock · (3) qSOFA ≥2 · (4) Ruhedyspnoe-Atemnotzeichen; Oligurie+Kreislauf · (5) Petechien/Purpura + schweres Krankheitsgefühl · (6) post-OP/immunsupprimiert + rascher Funktionsknick + Infektzeichen | Sitzung beenden · **112** · keine Belastung/Manual · Vitale ohne Notrufverzögerung · Übergabe Infekt/Zeit/Vitale/Organzeichen |
| **T2** | Infekt + Systemzeichen **ohne** unmittelbare Vitalbedrohung (isolierte Oligurie, progrediente Schwäche, Wundinfekt+Fieber, geriatrische Hypothermie) | Keine PT · gleichtags NA/Akut-Arzt · bei Verschlechterung 112 |
| **T3** | — | **absent** (C silent) |
| **T4** | Unspezifische Abgeschlagenheit / milder lokaler Infekt **ohne** Systemzeichen, Vitale unauffällig | Vorsichtige PT möglich · engmaschig · keine Belastungseskalation bei Unsicherheit · Rückkehrgründe: Fieber, Verwirrtheit, Dyspnoe, RR-Abfall, Oligurie, Petechien |

**SCOPE:** Diagnosesicherung, SOFA/Labor, Antiinfektiva, Schocktherapie, Score als Ausschluss — **nicht** HP. qSOFA/NEWS2 **sensibilisieren**, ersetzen **keine** Ausschlussdiagnostik.

**Default-to-Danger:** Im Zweifel Notfallkette; Gatekeeper-Schwelle bewusst konservativer als qSOFA ≥2 allein.

---

## Mimic frames (5)

1. MSK-Schmerz / Hexenschuss ohne Vital-/Infektcheck  
2. „Demenz wird schlimmer“ (Delir bei Sepsis)  
3. „Vagal / Kreislaufschwach“  
4. „Grippe, auskurieren“ (3-Tage-Termin)  
5. „Post-OP-Muskelkater“ (Implantat-/Wundinfekt)

---

## Distinctive form pressure vs library

| vs | delta |
|----|-------|
| ACS nested-T1 | **mehr** 112-Zeilen (6); plus **Gatekeeper single-criterion** rule that is *stricter than* formal score |
| Melanom exception-T1 | opposite: loud multi-112 + hard stop |
| FAST/ABCDE | not letter mnemonic; **flag cluster** of vital chips |
| New recipe | `kl-flag-cluster` — three equal chips + “bereits EINS → 112”; qSOFA secondary strip |

---

## Ambition

- **Required code:** Gatekeeper flag-cluster (not free vision)  
- Free vision: skip  
- Anatomy: none  

## Success criterion

Under scan stress learner hits: **Infekt + (ein Instabilitätszeichen) → 112**, never “qSOFA &lt;2 = safe to treat”, never MSK mobilization as first move.
