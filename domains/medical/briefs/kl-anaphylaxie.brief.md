# Media Brief — Anaphylaxie (KL Wave-5)

- **chapter_id / slug:** V-12-anaphylaxie / `kl-anaphylaxie`
- **genre:** illness-script / lerntext (Master, **kl-voll**)
- **content_source:** `Kursbuch5/…/monographs/chapter-v-12-anaphylaxie.md` (Welle-06 kl-full)
- **content_status:** format-ok · audit_ampel GRÜN · human_review required (C)
- **content_revision:** welle-06 pilot 2026-07-26 (read-only pins; content-map R)
- **brief_class:** exploration
- **freeze_path:** — (exploration only; **no** production compose)
- **author_media:** Media (agent) + Wave-5 R content-map
- **date:** 2026-07-26
- **ontology:** v1.1 · transfer `kl-urgency-nested-t1` + `kl-mimic-map` · content-map `domains/medical/briefs/_wave5/kl-anaphylaxie.content-map.md`
- **catalog_version_seen:** form-catalog 0.1.0 (awareness only)

> Exploration: C read-only. Master rechtfertigt; Slave III-anaphylaxie / IV-allergie-akut geplant — **keine** operative Karten-Ästhetik vorwegnehmen. Autoinjektor = Support, **kein** Drug-Protocol.

## Design reasoning (compact)

| unit / anchor | type | learner job | load risk | presentation hypothesis | recipe fn |
|---|---|---|---|---|---|
| Big Picture | orient | understand + stop-awareness | Maskierung unterschätzt | three-beat: systemischer Notfall / Unterschätzung / 112-Triage | F-orient |
| §1 Enabling | recognition | recognize | Bullet-Soup | triptych Allergie/Exposition/Med-Kontext + Tempo Minuten–h | F-profile |
| §2 Mechanism | mechanism | understand | Immun-Lehrbuchdiagramm zu laut | short chain Mastzelle→Mediator→Vasodilatation/AW/Schock + Handlungskette | F-causal |
| §3 Cues | recognition | recognize | Fake-Matrix; %-Haut | 4 equal channels + Mehrsystem-Inhalt in Beobachtung/Anamnese | F-channel |
| §4 FA + NM | distinguish | distinguish + stop | 2×2; „ohne Haut“ weich | sequential FA; NM: ohne Haut / normale Vitals / Beta-Blocker-ACE | F-hyp |
| §4 Mimic | distinguish (error) | distinguish | 5 Frames begraben | frame→Gefahr map M1–M5 (Haut/Panik/Asthma/MSK/vasovagal) | F-error |
| §5 Urgency + Scope | decision | choose + stop + constrain | 5× T1 als Leitern; Autoinjektor=Therapieprotokoll; SCOPE=T5 | **nested 5-trigger T1** + T2 + T4; T3 collapse; SCOPE + Autoinjektor-Constraint | F-time+scope |
| Transfer / Case | apply | apply | Spoiler | open Qs; Case MSK-Enge-Anker | F-transfer |
| Qualifiers / SBAR | communicate | look up | Layout-Achse | trailing / quiet-loud; DE pins | trailing |

## Overall presentation goal

Unter Zeitdruck erkennt die lernende Person eine **progrediente oder mehrorganige** Reaktion im Allergenkontext als **112-Notfall**, **beendet** die Sitzung, wählt den **Notruf**, denkt **BLS bei Bedarf** und **Autoinjektor nur patienteneigen** mit — und verwechselt das **nicht** mit Panik, banaler Urtikaria oder MSK-Enge. Zugleich bleibt klar: **kein** eigenes Medikamentenprotokoll und **keine** PT als Abklärung. Genre = Illness-Script-Master (teal); solid-red **nur** T1 — nicht Flag-Master-Vollrot-Plakat.

## Section plan (free language)

| id | content anchor | ideal presentation (prose) | priority / page intent |
|---|---|---|---|
| BP | Big Picture + Untertitel | Was = systemische Reaktion; Gefahr = Flush/Enge/„Panik“ maskieren; Richtung = 112-Triage vor Feinschweregrad | high |
| EN | Wann denken / Enabling | Allergie, frühere Anaphylaxie, Autoinjektor, Exposition, Asthma, Beta-Blocker/ACE als Kontext | medium |
| MECH | Patho-Kern | Kurze Kette bis Hypoxie/Schock; biphasisch 6–24 h leise; Konsequenz Erkennen→Stopp→112→Lagerung/BLS→Autoinjektor-Support | medium · quieter than urgency |
| CUES | 4 Kanäle + Mehrsystem | Gleichwertige Domänen; Untersuchung ohne Notruf-Verzögerung; „ohne Haut ≠ Entwarnung“ in Inhalt | high |
| FA/NM | Verdacht / nicht übersehen | Erhärtet vs. passt eher nicht; NM ohne %-Erfindung | high |
| MIM | Trügerische Erklärungen | **5** Frames scannbar Frame→Gefahr; MSK-Enge PT-spezifisch laut | **high · Form Spec** |
| URG | §5 + Grenze | **Eine** T1 mit 5 Clustern + Payload (112, Lagerung, BLS, Autoinjektor-Support); T2 gleichtags; T4 erst nach Klärung; SCOPE orthogonal | **primary · Form Spec** |
| TR | Mini-Fall + Case | Offene Fragen; Insektenstich/BWS-Blockade-Anker ohne Spoiler | medium |
| QUIET | Quellen / Slave-Meta | leise | low |

## Wishlist outside current catalog

| wish | why | severity |
|---|---|---|
| Nested multi-T1 mit **5** Anaphylaxie-Clustern + gemeinsamer ACTION-Payload | C-Archetyp; vergleichbar ACS, mehr Zeilen | **required for unit** |
| Autoinjektor-Support sichtbar **ohne** Drug-Protocol-UI | Scope-kritisch + T1-Payload | high |
| BLS-Link im Kollaps-Pfad | C explizit | high (in T1 payload) |
| Mimic-Map M1–M5 | Kapitel-Kernpädagogik / Untertitel | high |
| Optional protocol-spine light (Erkennen→Stopp→112→Lagerung/BLS→Autoinjektor) | C-Handlungskette; ambition optional | optional (after grammar) |
| Optional Mehrsystem-Verbund / MSK-peel | nur wenn Map schwach | optional |

## Form Spec handoff (ambitious visual units)

| unit_id | form_spec_path | ambition |
|---|---|---|
| U-urgency + U-scope | `domains/medical/briefs/kl-anaphylaxie-urgency.form-spec.md` | optional protocol-spine light; free-vision only if code spine fails scan |
| U-mimic | `domains/medical/briefs/kl-anaphylaxie-mimic.form-spec.md` | optional peel (MSK-Enge); default 5-row map |

Transfer without new Spec this wave: BP, enabling, mechanism, cues, FA/NM, transfer.

## Author questions (Human)

1. T3 fehlt in C — confirm collapse (kein „zeitnah“ erfinden).  
2. Autoinjektor: keine Step-by-step Injektionsgrafik ohne C-Anleitung — Confirm.  
3. Ambition protocol-spine nach Grammar priorisieren vs. nur nested-T1+Mimic?

## Explicit non-goals for this brief

- No production compose / freeze authorization  
- No Typst / bookkit  
- No drug protocol / mg/ml / Ampullen-Choreografie  
- No Ring-Messmer Grad I–IV as DA exclusion ladder  
- No invented % „Anaphylaxie ohne Haut“  
- No form-meta in figures  
- No 5 red ladders for 5 T1 rows  
- No solid-red full-bleed Notfallplakat (Master ≠ Slave III)  
- No spoiler keys for Mini-Fall  

## Success criterion (chapter)

Unter Scan-Stress: progredient/mehrorganig + Allergenkontext → **112**, Sitzungsende, BLS-bei-Bedarf und **Autoinjektor nur patienteneigen** mitdenken; **nicht** Panik/nur-Haut/MSK-Enge; **kein** Eigenprotokoll; **keine** PT als Akutabklärung.

## Content-map / board

- R: `domains/medical/briefs/_wave5/kl-anaphylaxie.content-map.md`  
- Board: `domains/medical/briefs/kl-wave5.board.md`  

## Accept path

Exploration Accept after Graphics realize + claim audit: `kl-anaphylaxie.accept.md` (to write after G).
