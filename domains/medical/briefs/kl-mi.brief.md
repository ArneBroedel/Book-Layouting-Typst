# Media Brief — Myokardinfarkt / ACS (KL Wave-5)

- **chapter_id / slug:** V-1-myokardinfarkt / `kl-mi`
- **genre:** illness-script / lerntext (Master, **kl-voll**)
- **content_source:** `/home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-07-welle-06-kl-full/monographs/chapter-v-1-myokardinfarkt.md`
- **content_status:** format-ok · audit_ampel GRÜN · human_review required (C)
- **content_revision:** welle-06 pilot 2026-07-26 (read-only pins; content-map R)
- **brief_class:** exploration
- **freeze_path:** — (exploration only; **no** production compose)
- **author_media:** Media (agent) + Wave-5 R content-map
- **date:** 2026-07-26
- **ontology:** v1.1 · transfer `kl-urgency-nested-t1` + `kl-mimic-map` · content-map `domains/medical/briefs/_wave5/kl-mi.content-map.md`
- **catalog_version_seen:** form-catalog 0.1.0 (awareness only; not a design cage)

> Exploration: C remains read-only. Pins = copy-through. Master ≠ Slave (III-acs / IV-brustschmerz geplant — leise Meta, keine operative Karte).

## Design reasoning (compact)

| unit / anchor | type | learner job | load risk | presentation hypothesis | recipe fn |
|---|---|---|---|---|---|
| Big Picture | orient | understand + stop-awareness | Epi-Essay; Gefahr versteckt | three-beat Was / Gefahr (MSK-Fehllabel) / Richtung 112 | F-orient |
| EH §1 Enabling | recognition | recognize | Bullet-Soup als Leiter | triptych Risiken · Crescendo · Onset (Minuten) | F-profile |
| EH §2 Mechanism | mechanism | understand | Dekor-Kette ersetzt Action | short causal chain + Praxis-Stopp | F-causal |
| EH §3 Cues | recognition | recognize | Fake-Kreuzmatrix; Kanal-Ungleichgewicht | 4 equal channels; Anamnese führt; Untersuchung = Cave | F-channel |
| EH §4 FA + NM | distinguish | distinguish + stop | 2×2-Quetschung | sequential FA then must-not-miss (STEMI+NSTE beide Notfall) | F-hyp |
| EH §4 Mimic | distinguish (error) | distinguish | Frame ohne Mapping; begraben | frame → Gefahr map (3+4 Frames) | F-error |
| EH §5 Urgency + Scope | decision | choose + stop + constrain | Multi-T1 als 4 Leitern; SCOPE=T5; T3 erfunden | **nested multi-T1** + T2 + T4; T3 collapse; SCOPE orthogonal | F-time+scope |
| §6 / Case | apply | apply | Spoiler-Auflösung | open questions; no answer keys in print | F-transfer |
| Patho-deep / Screening / DDx / SBAR | deepen | various | Essay / Score-Ops | quiet band or delta-only; MHS ≠ Ausschluss laut in SCOPE | trailing |

## Overall presentation goal

Unter Direktzugangs-Scan-Stress ordnet die lernende Person **plausibles ACS** (klassisch *oder* atypisch maskiert: Schulter/BWS/Oberbauch/Dyspnoe) dem **Sofort-112-Pfad** zu, **bricht** Belastung und manuelle Thorax-Intervention ab, **weist** trügerische MSK-/Magen-/Panik-Frames und alleinige Palpations-Entwarnung **zurück**, und **diagnostiziert/therapiert nicht** (kein EKG/Troponin/STEMI-NSTEMI-Split, kein MHS-Ausschluss). Genre bleibt Illness-Script-Master (teal framework); solid-red **nur** auf T1 — nicht als Kapitel-Wand und nicht als Slave-Notfallkarte.

## Section plan (free language)

| id | content anchor | ideal presentation (prose) | priority / page intent |
|---|---|---|---|
| BP | Big Picture | Drei Schläge: Was = ACS außerhalb PT-Auftrag; Gefahr = MSK-Fehllabel / Tod; Richtung = Triage, meist 112 | high · opener |
| EN | Enabling | Triptych RF · bekannte KHK/Crescendo · plötzlich Ruhe/leichte Belastung, ≥15–20 min, nicht klar bewegungsgebunden | medium |
| MECH | Mechanism | Plaque→Thrombus→Ischämie/Nekrose→Arrhythmie/Schock/Herztod; Konsequenz = Stopp/Ruhe/112 | medium · stützt Action |
| CUES | 4 Kanäle | Gleichwertige Domänen; Anamnese + Ausstrahlung laut; Untersuchung: Palpation schließt ACS **nicht** aus | high |
| FA/NM | Erhärtet / Passt nicht / Nicht übersehen | Sequentiell, kein 2×2; Cave Palpation; atypisch ≠ harmlos; beide ACS-Formen Notfallpfad | high |
| MIM | Trügerische Erklärungen | Mapping-Zeilen Frame→Gefahr; kl-voll 4. Frame „druckschmerzhaft = muskulär“ | **high · Form Spec** |
| URG | §5 Handeln + Grenze | **Eine** T1-Karte mit 4 Trigger-Clustern + gemeinsamer ACTION; T2 nur ohne Vollbild; **kein T3**; T4 nur gesicherte MSK+Netz; SCOPE-Frame MHS/EKG/… | **primary · Form Spec** |
| TR | Mini-Fall / Case | Offene Fragen; Case-Mimikry (paravertebral + Umzug) nicht spoilen | medium |
| QUIET | Quellen / Slave-Meta | Leise; keine Feature-Grafik aus Epi-Zahlen | low |

## Wishlist outside current catalog

| wish | why | severity |
|---|---|---|
| Nested multi-T1 hard-stop (US-B) mit 4 ACS-Clustern inkl. Oberbauch + KHK-Crescendo | C-Archetyp; maximaler Form-Druck | **required for unit** (code default ok) |
| Mimikry-Map (optional peel MSK-Maske) | Untertitel = Maskierung; DA-Job | high |
| Optional: Ausstrahlungs-Topografie (retrosternal → Arm/Kiefer/Hals/Rücken/Schulter; atypisch Epigastrium) | Dual coding Anamnese-Cues | optional ambition |
| Optional: Mechanism-Kette + Praxis-Stopp | kl-voll Patho stützt warum Belastung KI | optional |
| SCOPE-Dashboard / meter | nur wenn Stack scan-fail; DE only | optional later |

## Form Spec handoff (ambitious visual units)

| unit_id | form_spec_path | ambition |
|---|---|---|
| U-urgency + U-scope | `domains/medical/briefs/kl-mi-urgency.form-spec.md` | optional free-vision (code nested-T1 default); Ausstrahlung/mechanism optional later |
| U-mimic | `domains/medical/briefs/kl-mi-mimic.form-spec.md` | optional peel (M-B); default map rows |

Transfer without new Spec this wave (pins in content-map / later spike): BP, enabling, mechanism, cues, FA/NM, transfer.

## Author questions (Human)

1. Keine blockierenden Lücken für Wave-5 Grammar (T3 fehlt bewusst in C — nicht füllen).  
2. Slave-III/IV-Inhalte nicht erfinden — Confirm: Master bleibt rechtfertigend, nicht operativ.  
3. Optional später: wollen wir Ausstrahlungs-Raumkarte als Ambition-Slot budgetieren (nach nested-T1 + Mimic)?

## Explicit non-goals for this brief

- No production compose / freeze authorization  
- No Typst / bookkit sketches  
- No claim rewrite / invented T3 / MHS-Cutoff-Algorithmen  
- No form-meta inside figures („Trigger cluster“, „keine Dringlichkeitsstufe“)  
- No Multi-112 as four ladder rungs  
- No STEMI vs NSTEMI as DA triage job  
- No solid-red full-page Notfallplakat (wrong genre)  
- No Slave-Karten-Inhalte / Spoiler-Keys im Druck  

## Success criterion (chapter)

Unter Direktzugangs-Scan-Stress: plausibles ACS → **112**, Stopp Belastung/manuelle Thorax-Intervention, Mimikry- und Palpations-Fallen zurückweisen, Scope (kein EKG/Troponin/MHS-Ausschluss) orthogonal sichtbar.

## Content-map / board

- R: `domains/medical/briefs/_wave5/kl-mi.content-map.md`  
- Board: `domains/medical/briefs/kl-wave5.board.md`  

## Accept path

Exploration Accept after Graphics realize + claim audit: `kl-mi.accept.md` (to write after G).
