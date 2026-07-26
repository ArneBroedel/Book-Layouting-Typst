# Welle-06 KL — Umsetzungs-Roadmap (alles, schrittweise)

> **SUPERSDED als Steuer-SoT** durch den Tiefenplan:  
> [`kl-deep-execution-plan.md`](kl-deep-execution-plan.md) + Ontologie [`kl-ontology-and-relations.md`](kl-ontology-and-relations.md).  
> Dieses Dokument bleibt als **historische Phasenliste** (F*/S*) und Inventar-Verweis.

**Ziel:** Alle Inhalts- und Darstellungsformen aus der Analyse sichtbar machen — **phasenweise**, mit nachvollziehbaren Artefakten (Brief → Form Spec → Spike PDF/PNG → Accept-Entscheidung).  
**Analyse:** [`welle-06-kl-content-forms-analysis.md`](welle-06-kl-content-forms-analysis.md)  
**Status-Board:** siehe `kl-deep-execution-plan.md`  
**brief_class:** exploration — kein production compose

---

## Prinzip

| Regel | |
|-------|---|
| **Alles** | F1–F10 + S1–S20 + Kapitel-Varianten Alpha/Beta/Gamma + kl-voll-Varianten |
| **Schrittweise** | Eine Phase liefert sichtbare PDFs/PNGs + Specs; nächste Phase startet erst nach Review-Fenster (oder Human „weiter“) |
| **Claims** | copy-through aus Welle-06 monographs; keine Schwellen erfinden |
| **Carrier** | Typst default → SVG/Hybrid für Maps → Raster nur gated |
| **Demo-Kapitel (rotierend)** | Phase 1: **Erysipel** (kl-kurz) + **ACS** (Ladder-Stress) · später CES, Anaphylaxie, Melanom, … |

---

## Phasenübersicht

| Phase | Titel | Liefert „sehen“ | Status |
|-------|--------|-----------------|--------|
| **0** | Analyse + Inventar | Content-Map, Formenliste | **done** |
| **1** | Band-System Kern | F1 shell, **F2/F3/F4** Specs + Spike A/B/C | **superseded** (Human: zu flach) |
| **1.1** | Redesign nach Kritik | Inhaltsbeziehungen · F2/F3/F4 v2 Spike | **review** |
| **2** | Script-Rest + Transfer | F5, F6, F7, F8, F9, F10 + kl-kurz Alpha full page | pending |
| **3** | kl-kurz Varianten | V-Alpha / V-Beta / V-Gamma am selben Content | pending |
| **4** | kl-voll Shell | Case-first / Script-core / Slave-aware an 1 Vollscript | pending |
| **5** | Body maps & Topografie | S1 Saddle, S7 Thorax, S8 Abdomen, S9 Dermatom, S11 MSCC, S19 Hand | pending |
| **6** | Scores & Stadien | S2 FAST, S5 Wells, S6 Dekubitus, S10 Fontaine, S12/13 dual, S16 CRPS, S17 Parkinson | pending |
| **7** | Hard-stop & Sequenzen | S4 Anaphylaxie, ACS-stack, S14 Sepsis cluster | pending |
| **8** | Gestalt / Raster-gated | S3 ABCDE (+ ggf. Haut/Wund) | pending |
| **9** | Cluster & Psych | S15 Safety path, S18 Cluster matrix, Flag-Master-Chrome | pending |
| **10** | Band-Katalog & Harvest | Formenkatalog-Guide, bookkit-wishlist, Accept-Empfehlungen | pending |

---

## Detail: was „alles“ heißt

### Bandformen F1–F10

| ID | Name | Phase | Carrier |
|----|------|-------|---------|
| F1 | Script Frame (Kapitelgerüst) | 1 (shell) + 3–4 | Typst |
| F2 | Urgency Ladder | **1** | Typst |
| F3 | Clinical Cue Matrix | **1** | Typst |
| F4 | Four-Pole + Trügerisch | **1** | Typst |
| F5 | Mechanism Chain | 2 | Typst/CeTZ |
| F6 | Enabling Profile | 2 | Typst |
| F7 | Transfer Case Card | 2 | Typst |
| F8 | DDx Contrast | 2 | Typst |
| F9 | Semantic / Handover | 2 | Typst |
| F10 | Score-with-Scope | 2 | Typst |

### Spezifische Module S1–S20

| ID | Name | Phase |
|----|------|-------|
| S1 | Saddle / Cauda map | 5 |
| S2 | FAST | 6 |
| S3 | ABCDE lesion | 8 |
| S4 | Anaphylaxis hard-stop | 7 |
| S5 | Wells strip | 6 |
| S6 | Dekubitus map + Kat. | 6 |
| S7 | Thorax tension | 5 |
| S8 | Abdomen quadrants | 5 |
| S9 | Dermatom Zoster | 5 |
| S10 | Fontaine ladder | 6 |
| S11 | MSCC spine | 5 |
| S12 | Hypo/Hyper crisis | 6 |
| S13 | Thyroid dual | 6 |
| S14 | Sepsis flag cluster | 7 |
| S15 | Psych safety path | 9 |
| S16 | CRPS Budapest | 6 |
| S17 | Parkinson triad | 6 |
| S18 | Cluster multi-entity | 9 |
| S19 | Hand median map | 5 |
| S20 | Ileus mechanism | 5 (or 2 if pure chain) |

### Layout-Varianten (Kapitel-Ebene)

| ID | Name | Phase |
|----|------|-------|
| V-Alpha | Editorial Script (kl-kurz) | 3 |
| V-Beta | Triage-first Script | 3 |
| V-Gamma | Dual-page Dashboard | 3 |
| V-Full-1 | Case-first (kl-voll) | 4 |
| V-Full-2 | Script-core | 4 |
| V-Full-3 | Slave-aware | 4 |

---

## Phase 1 — Deliverables (aktuell)

| Artefakt | Path |
|----------|------|
| Band Media Brief | `domains/medical/briefs/kl-script-system.brief.md` |
| Form Spec F2 | `domains/medical/briefs/kl-f2-urgency-ladder.form-spec.md` |
| Form Spec F3 | `domains/medical/briefs/kl-f3-cue-matrix.form-spec.md` |
| Form Spec F4 | `domains/medical/briefs/kl-f4-four-pole.form-spec.md` |
| Typst Spike (Varianten) | `toolset/compose/spikes/graphics/kl-script-system/` |
| PDF/PNG | `dist/spikes/graphics/kl-script-system/` |

**Demo-Claims:** Erysipel (Welle-06) für F2–F4; ACS-§5 für Ladder-Variante „Multi-112 / Hard-stop“.

### Phase-1 Varianten im Spike

| Unit | Varianten im PDF |
|------|------------------|
| F2 | A styled table · B urgency lanes · C ACS hard-stop stack · D multi-112 bundle (ACS rows) |
| F3 | A classic table · B 2×2 tiles |
| F4 | A 2×2 poles · B trügerisch mask strip |

---

## Phasen 2–10 — Kurz (nach Phase-1-Review)

- **2:** Restliche F-Module + eine komplette kl-kurz-Seite Erysipel (Alpha)
- **3:** Drei Full-chapter-Layouts Alpha/Beta/Gamma (PDF-Vergleich)
- **4:** Ein kl-voll (CES oder ACS) in drei Shells
- **5–9:** wie Tabelle S*
- **10:** Harvest in Guide + optional bookkit components

---

## Human-Gates (empfohlen)

| Nach Phase | Frage |
|------------|--------|
| 1 | Welche F2/F3/F4-Variante wird **Band-Default**? |
| 3 | Alpha vs. Mix für 73 Kurzprofile? |
| 5 | Welche Maps lohnen Free Vision vs. pure Typst? |
| 8 | Raster-ABCDE freigeben? |
| 10 | Was wandert in packages/bookkit vs. bleibt spike? |

---

## Done-Log

| Datum | Phase | Notiz |
|-------|-------|-------|
| 2026-07-26 | 0 | Analyse 88 Monographien |
| 2026-07-26 | 1 start | Roadmap + Brief + Specs + Spike |
| 2026-07-26 | 1 done | `phase1.pdf` — Human: abgelehnt (Dekoration, Scope-in-Leiter, Meta-UI) |
| 2026-07-26 | 1.1 | Critique+Redesign `kl-phase1-critique-redesign.md` + `phase1v2.pdf` |
