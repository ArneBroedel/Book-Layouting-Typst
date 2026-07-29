# Media Brief

- **chapter_id / slug:** VII-1 / `exam-cluster-integration`
- **genre:** integration / exam-drill (Transfer-Stationen; **no new facts**)
- **brief_class:** exploration
- **content_source:** `/home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-07-welle-03-final-10/chapter-vii1-exam-cluster-integration.md`
- **content_status:** content-ready (Kursbuch meta: `format-ok`, audit `gruen-loop1`, pilot `2026-07-welle-03-final-10`)
- **author_media:** media-designer (Wave 5 free ideal VII-1)
- **date:** 2026-07-20
- **catalog_version_seen:** optional — not used to constrain ideation

## Overall presentation goal

**Transfer- und Prüfungs-Drill** über die Wellenkapitel: unter Druck **richtig priorisieren**  
(Treat vs. Refer vs. **112**) und Quellenkapitel abrufen.  
**Keine neuen klinischen Fakten, keine neuen RF/Schwellen** in diesem Kapitel.

Primärer Akteur: Prüfling / Praxisperson im Stationen-Modus. Die Medienform muss:

1. **Opener klar als Transfer-Drill** — „keine neuen Fakten“, Quellenbasis der Welle sichtbar aber leise.
2. **Spielregeln** scannbar und laut genug (worst first, Default-to-Danger, R+I+S→C, Recht = Hard Limit).
3. **10 Stationen scannbar** — je Station: Vignette → Fangfrage → Musterlösung (**Handlung laut**) → Verweise (**leise**).  
   Nicht als Essay-Wand; jede Station als eigenes, überspringbares Panel.
4. **Action path lauter als Meta** — Musterlösung (Stop/112/Refer/Treat) dominiert visuell über Verweiszeilen.
5. **Schnell-Checklisten** am Ende: P0-Recht, P0-Notfall, Treat-vs-Refer-Einzeiler-Tabelle.
6. Quellen = **Tabelle der Wellenkapitel** (Verweis, kein neuer Kanon); Critical Claims = **n/a integration** note.

Erfolg: in 30–60 s pro Station die **Handlung** finden, nicht den Essay lesen.  
Schwellen und RF nur aus Master-/Pfadkapiteln der Welle.

**Functional priority:** F1 Opener/Rules → F2 Stations (core mass) → F3 Quick checklists → F4 Sources/Claims trailing.

## Section plan (free language — no bookkit requirement)

| id | content anchor (heading/role) | ideal presentation (prose) | priority / page intent |
|---|---|---|---|
| S0 | Titel *Gemischte Exam-Cluster* + Lernziel-Lead | Opener: Transfer-Drill, **NO new facts**; Quellenbasis der Welle in einer leisen Subzeile/Lead. Kein neues Illness-Script. | opener |
| S1 | §1 *Spielregeln* | Kompakte Regel-Leiste (5 Regeln): Worst first · Default-to-Danger · R+I+S→C · Verweise statt Neu-Lehre · Recht = Hard Limit. Visuell lauter als Quellen, leiser als Station-Musterlösungen. | **F1 — high**; first screen after opener |
| S2–S11 | §2 *Stationen 1–10* | **Zehn scannbare Station-Panels.** Pro Station ideal:  
  • **Kopf** Station-Nr + Kurz-Titel  
  • **Vignette** (Fallkern)  
  • **Fangfrage / Fokus** (klein, prüfungsnah)  
  • **Aufgabe** (1 Zeile)  
  • **Musterlösung** — **laut**: Handlungen, C-Label, Kein-Treat wo Content es sagt  
  • **Verweise** — **leise**, trailing innerhalb des Panels  
  Keine Essay-Wand; Stationen optisch trennbar (Karten/Callout-Blöcke). Clinical-case-Chrome nur wenn API passt; sonst strukturierte Callouts. | **F2 — highest**; bulk of chapter |
| S12 | §3 *Schnell-Checklisten* P0-Recht | Stichwort-Memo/Callout mit Verweis `→ I-4`; scannbar. | **F3 — medium** |
| S13 | §3 *P0-Notfall* | Stichwort-Memo/Callout `→ III-2` / `→ III-5-Cauda`. | **F3 — medium** |
| S14 | §3 *Treat-vs-Refer Einzeiler* | Kompakte Summary-Tabelle Lage → C → Master. | **F3 — high** (synthesis) |
| S15 | §4 *Quellen* | Tabelle Kapitel → Datei (Welle); Hinweis „keine neuen High-Stakes-Fakten“. | **F4 — low**; trailing |
| S16 | §5 *Critical Claims* | **n/a – integration** prominent; optional Verweis-Anker-Tabelle (nur Quellen, nicht neu operationalisiert). HiL-Hinweis. | non-body / trailing |

### Station index (content anchors — titles for scan)

1. Reithosen-Flag + „Rücken besser“ (CES / Wurzeltod)  
2. Unilaterale Ischialgie ohne CES (Split)  
3. Heißes Knie + Fieber + AZ-Abfall  
4. Heißes Gelenk ohne Sepsis-Bild + „bekannte Gicht“  
5. Meningismus + Petechien (IfSG × Notfall)  
6. Masernverdacht im Wartezimmer  
7. Kollaps in der Praxis (BLS/AED)  
8. Geriatrie — Delir vs. „Demenz-Progress“  
9. Geriatrie — Sturz + Antikoagulation  
10. D-RISC-Synthese — gemischt (Klinik + Recht)

### Page / scan intent

| Zone | Intent |
|---|---|
| **Page 1** | Opener + Spielregeln — Regeln in einem Blick |
| **Pages 2–n** | Stationen 1–10 als Kartenstapel; Musterlösung-Fläche dominant |
| **Near end** | P0-Checklisten + Treat-vs-Refer-Tabelle (Synthese) |
| **End** | Quellen-Tabelle; Claims n/a |

Anti-patterns: essay wall of 10 stations; new RF/thresholds invented in layout; sources before stations; equal visual weight for Verweise and Musterlösung; clinical-case forced into mismatched field labels if API is heavy.

## Wishlist outside current catalog

| wish | why | severity |
|---|---|---|
| **exam-station panel** (vignette / fangfrage / solution / links zones) | 10× same structure; dedicated zones would make action louder than meta without manual hierarchy hacks. | **medium** — callout/card approx OK for pilot |
| **solution-loud / links-quiet dual chrome** | Musterlösung vs. Verweise need built-in hierarchy. | **low–medium** |
| **mc-question path** (optional later) | Content is free-response station drill, not MC; only if format shifts. | **low** — not this pilot |

## Author questions (Human)

1. Sollen alle **10 Stationen** im Print-Hauptkörper stehen, oder darf eine „Kern 1–7 + Geriatrie 8–9 + Synthese 10“-Staffelung mit optionalem Anhang gelten? (Default: alle 10 im Körper.)
2. **Claims n/a:** reicht die n/a-Note, oder soll die Verweis-Anker-Tabelle (Action-Cluster → Quellenkapitel) im Print mitlaufen?

## Explicit non-goals for this brief

- **Keine neuen Fakten** — keine RF/Schwellen, die nicht in den Wellenkapiteln stehen.
- Keine Illness-Scripts, keine Therapie-Tutorials.
- Keine Claim-Paraphrase der Quellkapitel-Triage.
- Kein Production-`.typ` im Brief.
- Kein Quellen-first; keine Seminar-Prosa vor Station 1.
- Kein MC-Zwang — Content ist freies Stations-Drill, nicht A/B/C/D.
