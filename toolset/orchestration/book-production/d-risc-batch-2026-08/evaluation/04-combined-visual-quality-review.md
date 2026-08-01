# Combined Visual Quality Review — `d-risc-batch-2026-08`

**Datum:** 2026-08-01  
**Reviewer:** Agent (eigene PNG-Lektüre) + Gemini Pro (advisory)  
**brief_class:** exploration (kein Druck-Accept)  
**Quellen-PNGs:**

```bash
code dist/pilots/ii1-drisc-batch-2026-08/p1.png
code dist/pilots/ii1-drisc-batch-2026-08/p2.png
code dist/pilots/ii1-drisc-batch-2026-08/p3.png
code dist/pilots/iv2-ruecken-batch-2026-08/p1.png
code dist/pilots/iv2-ruecken-batch-2026-08/p2.png
code dist/pilots/kl-gicht-batch-2026-08/p1.png
code dist/pilots/kl-gicht-batch-2026-08/p2.png
code dist/pilots/kl-gicht-batch-2026-08/p3.png
code dist/pilots/kl-kompartment-batch-2026-08/p1.png
code dist/pilots/kl-kompartment-batch-2026-08/p2.png
code dist/pilots/kl-kompartment-batch-2026-08/p3.png
```

**Gemini-Rohantworten:** `evaluation/03-gemini-visual-audit.md`  
**Kalibrierung:** Gemini markiert manches als `block`, was für Exploration eher `should` ist. Agent-Severity unten ist die freigabe-relevante Lesart.

---

## Executive summary

| Rang | Kapitel | Agent-Mittel | Gemini-Mittel | Urteil |
|---|---|---|---|---|
| 1 | `kl-kompartment-batch-2026-08` | **4.3** | 4.3 | Klinisch schärfstes KL-Template; T3-Absenz ehrlich |
| 2 | `kl-gicht-batch-2026-08` | **4.2** | 4.25 | Mimic/TIME/SCOPE stark; p1-Doppelgrid schwächt Scan |
| 3 | `ii1-drisc-batch-2026-08` | **4.1** | 3.77 | Methodik-OS vorbildlich; p1-Dichte + S-Farbcode |
| 4 | `iv2-ruecken-batch-2026-08` | **3.9** | 3.6 | Dual-R4 exzellent; solid-rot „Unklar“ + p2-Tabellenstapel |

**Freigabe (exploration):** **ship with should-fixes**  
Batch ist didaktisch tragfähig und als Portfolio-Gold-Kandidat brauchbar, sobald 5–7 priorisierte Layout/Didaktik-Fixes greifen. Kein struktureller Methodik-Fail (R→I→S→C, I/S nicht weggelassen, dual CES+Infekt, SCOPE ≠ TIME-Tier).

---

## Kapitel 1 — `ii1-drisc-batch-2026-08` · methodik / Framework-OS · p1–p3

### Agent — Erster Eindruck
In ≤10 s: „D-RISC ist OS, Reihenfolge R→I→S→C, kein Bauchgefühl.“ Teal-Chrome hält, kein Notfall-Wall. p1 ist informationsdicht (Kernmodell + Pflichtformel + Asymmetrie + Stufen + Makro/Mikro), aber lesbar; p2 ist der didaktische Höhepunkt (Lock „Kein C ohne R+I+S“ + lineare Pflichtsequenz + Synthese-Beispiele); p3 klingt mit Abgrenzungstabelle + Mini-Drill aus und hat spürbaren unteren Weißraum.

### Agent — Stärken
- Optische und textliche R→I→S→C-Disziplin (Karten L→R, Sequenz 1–4, Formeln).
- Default-to-Danger (R/S) vs Burden-of-Proof (I) explizit und lernbar.
- Teal OS Genre chrome korrekt; Danger nur gewichtet (R-first, Beispiele R4).
- Mini-Drill erzwingt Sprechformel `R… · I… · S… → C: …`.
- Flag-Farben ≠ D-RISC-Codes sauber auf p3.

### Agent — Findings

| id | severity | Dim | Seite | Beobachtung | Required change |
|---|---|---|---|---|---|
| A-F1 | should | D3 Dual coding | p1 | S-Kernkarte teal, „S · Default-to-Danger“-Box rot gerahmt — bewusste Dualität (Code-Farbe vs. Methodik-Label), aber lernbar verwirrend | Kernkarte S mit dezentem amber/danger-Hint **oder** Default-Box S in amber statt rot |
| A-F2 | should | B4/C2 Dichte | p1 | Stufen R·I·S + Makro/Mikro im unteren Drittel eng | Padding in Stufen-Karten erhöhen; optional Stufen nach p2 ziehen |
| A-F3 | should | A1 Didaktik | p3 | Transfer-Schlüssel direkt unter Fragen → Spoiler | Lösung Footer-klein / „umblättern“ / nach Critical Claims |
| A-F4 | nit | E4 | p3 | Unterer Sparse-Sprawl | Mini-Drill + Schlüssel vertikal strecken oder Verweise höher |

### Gemini (Kurz)
- Mittel **3.77**; F1 als block: S-Farbinkonsistenz; F2 Squish Stufen; F3 Spoiler Transfer-Schlüssel.
- Stärke: Lock-Box, Teal OS, Asymmetrie Default/Burden.
- Agent teilt Findings, stuft S-Farbe als **should** (nicht Production-block für Exploration).

### Agent-Scores (Auszug)

| ID | Score | Begründung |
|---|---|---|
| A1 | 4 | Job first screen klar |
| A2 | 5 | R→I→S→C dominant |
| A3 | 4 | Danger gewichtet, S-Chrome nits |
| A7 | 5 | Teal OS, kein Notfall-Wall |
| B1 | 4 | p2 exzellent, p1 dicht |
| B4 | 3 | p1 dense / p3 sparse |
| D3 | 3 | S dual coding uneinheitlich |
| E1 | 4 | Textbook-Ruhe |
| **Mittel** | **4.1** | |

### Must-fix (priorisiert)
1. S-Farbkodierung entscheiden und durchziehen (p1).
2. Stufen-Boxen de-squishen (p1).
3. Transfer-Schlüssel spoilerfrei (p3).

---

## Kapitel 2 — `iv2-ruecken-batch-2026-08` · leitsymptom · p1–p2

### Agent — Erster Eindruck
In ≤10 s: dual must-not-miss **CES und Infekt**, First-Look → Cluster → R→I→S → C. p1 ist ein voller Decision-Flow-Screen (Matrix + Flow); p2 ist Referenzschicht (Red-Flag-Tabelle, R·I·S→C-Abschluss, Kontrastpaare, Master-Links). Gatekeeper-Logik messerscharf; ästhetisch springt man von „UI-Flow“ zu „Tabellen-Dossier“.

### Agent — Stärken
- CES- und Infekt-Cluster auf Augenhöhe (Flow Schritt 2|3) — kein CES-only.
- I und S explizit (Schritt 4 + Abschlussblock + Banner „I und S nicht weglassen“).
- IVDU/Immunsuppression + Ruhe/Nacht **ohne Fieber** → gleichtags-ED sichtbar.
- Kontrastpaare: „Schmerz allein entlastet nicht“ — starker MedPäd-Anker.
- Kein Patho-Essay im Leitsymptom.

### Agent — Findings

| id | severity | Dim | Seite | Beobachtung | Required change |
|---|---|---|---|---|---|
| A-F1 | should | A3/A7 Chrome | p1 | Solid-rote Full-width-Box „Unklar + red-flag-nah“ schreit lauter als die R4-Cluster-Karten | Outline danger + Icon; Hintergrund entsättigen (Gemini block → Agent should) |
| A-F2 | should | B4 Rhythm | p2 | Vier Tabellen stapeln → Patchwork vs. Flow-UI | Mehr Zwischenraum; optionale Section-Chrome wie p1-Headerbänder |
| A-F3 | nit | C2 | p1 | R4-Matrixzeile textdicht | Padding / Zeilenumbruch |
| A-F4 | nit | B3 | p1 | Schritt-4-R·I·S-Karten etwas unter den Dual-Clustern „schwebend“ | Grid-Breiten angleichen |

### Gemini (Kurz)
- Mittel **3.6**; block: solid-rote Shout-Box (A7=2); should: p2-Rhythmus; methodisch 5er bei A2/A4/A5.
- Agent stimmt zu Inhalt; bei Chrome milder: die Box ist **inhaltlich** Default-to-Danger und darf danger sein — nur Vollton-Wall ist das Problem.

### Agent-Scores

| ID | Score | Begründung |
|---|---|---|
| A2 | 5 | R→I→S→C im Flow erzwungen |
| A3 | 3 | Dual R4 gut; solid-rot Overshoot |
| A5 | 5 | Kontrastpaare peel to danger |
| A7 | 3 | Lead ok, Unklar-Box zu laut |
| B1 | 4 | p1 stark, p2 flacher |
| B4 | 3 | Flow → Tabellen-Kippe |
| D1 | 3 | Intensity insgesamt ehrlich, eine Box overshoot |
| E1 | 3 | p1 slide-nah, p2 textbook-trocken |
| **Mittel** | **3.9** | |

### Must-fix
1. Unklar-Box entsättigen (p1).
2. p2-Tabellenrhythmus binden.
3. Matrix-R4 de-squish (nit→should wenn Production).

---

## Kapitel 3 — `kl-gicht-batch-2026-08` · kl-kurz · p1–p3

### Agent — Erster Eindruck
Gatekeeper-Job sofort: **unklares heißes Gelenk = septisch bis Ausschluss**, Gichtanamnese entwarnt nicht. p1 Big Picture + Erkennungscluster stark; unten doppelte Raster (Oberfläche/Funktion/Kontext **und** Vier Kanäle) erzeugen Cognitive Load. p2 TIME-Stack + Mimic + SCOPE = Gold-Schicht. p3 Fall nutzbar, untere Hälfte sparse.

### Agent — Stärken
- TIME ehrlich: 112 / NA / gleichtags / zeitnah / T4 — kein Fake-Mittelweg für Sepsis.
- SCOPE als **Grenze** (Punktion/i.a. streng ärztlich), nicht milder Tier.
- Trügerische Erklärungen peelen in Gefahr („Kein Fieber, also sicher Gicht“ entkräftet).
- Hot-joint-Cluster ohne Anatomie-Theater.
- Fall: bekannte Gicht + Fieber 38,6 °C — Transfer-tauglich.

### Agent — Findings

| id | severity | Dim | Seite | Beobachtung | Required change |
|---|---|---|---|---|---|
| A-F1 | should | A1/D2 | p1 | Doppelte Klassifikation: 3er-Aspekte + 4 Kanäle | Eine Schicht behalten (Kanäle **oder** Aspekte) |
| A-F2 | should | C2 | p1 | Fließtext unter Big Picture = Textwand | Bullets / 3–4 Kernsätze |
| A-F3 | should | E4 | p3 | Sparse sprawl unter DDx | Fall-Antwort-Hinweise oder Spacing-Balance |
| A-F4 | nit | B2 | p2 | Absolute KI klebt an SCOPE | Margin-top |

### Gemini (Kurz)
- Mittel **4.25**; block: Boxen-Redundanz p1; should: Textwand, sprawl p3. Teil-Portfolio nur auf Gicht basierend (standalone) — hier nur kapitelrelevant.

### Agent-Scores

| ID | Score | Begründung |
|---|---|---|
| A1 | 4 | Job klar, p1 unten bremst |
| A2 | 5 | TIME ehrlich |
| A4 | 5 | SCOPE ≠ Tier |
| A5 | 5 | Mimic → Gefahr |
| B1 | 3 | p1 Doppelgrid bricht Scan |
| B4 | 3 | dense→sparse |
| D3 | 5 | TIME-Farben lehren |
| E1 | 4 | textbook, p3 unfertig |
| **Mittel** | **4.2** | |

### Must-fix
1. p1-Boxen konsolidieren.
2. Fließtext scannbar machen.
3. p3 balancieren.

---

## Kapitel 4 — `kl-kompartment-batch-2026-08` · kl-kurz · p1–p3

### Agent — Erster Eindruck
Sofort: out-of-proportion + **Pulse schließen ACS nicht aus** + Anti-Hochlagerung. 2×2-Kriterien lesbar, nicht multi-orange Wall. p2 Mimic + T1/T2/T4 (T3 fehlt — methodisch ehrlich) + SCOPE. p3 Gips/Massage-Fall = bester Transfer des Batches. Graue „Handlung“-Box am Ende p1 spoilt die spätere T-Triage leicht.

### Agent — Stärken
- Pulse-Claim multi-layer (Subtitle, Fehllabel, Karte 4, Mimic-Zeile).
- Anti-Elevation callout klar.
- T3-Absenz = ehrliches TIME (kein Treat-first bei ACS-Verdacht).
- Mimic: Muskelkater / enger Gips / erhaltene Pulse → Gefahr.
- Fall erzwingt Stopp + keine Lockerungsmassage + keine Hochlagerung.

### Agent — Findings

| id | severity | Dim | Seite | Beobachtung | Required change |
|---|---|---|---|---|---|
| A-F1 | should | A2/B1 | p1 | Graue Handlungs-Box vor TIME-Stack (Inhalte ≈ T1/T2) | Entfernen oder auf p2 an TIME koppeln |
| A-F2 | should | B5 | p1→p2 | Vier Kanäle vom 2×2 getrennt | Umbruch: Kanäle mit p1 halten oder H2 auf p2 klarer |
| A-F3 | nit | E3 | p2 | Mimic-Pfeile/Alignment | Spationierung |
| A-F4 | nit | C3 | p3 | „Re-Evaluation“ bold sticht in harmloserer DDx-Zeile | Gewicht reduzieren |

### Gemini (Kurz)
- Mittel **4.3**; block-ähnlich: Handlungs-Box + Umbruch; E1/D1/A5 = 5. Stimmt mit Agent stark überein.

### Agent-Scores

| ID | Score | Begründung |
|---|---|---|
| A1 | 5 | Job <5 s |
| A2 | 4 | TIME ehrlich; p1-Spoiler |
| A4 | 5 | SCOPE hart |
| A5 | 5 | Mimic peel |
| B1 | 3 | Handlungs-Box stört |
| B5 | 3 | Kanäle/Umbruch |
| D1 | 5 | Danger ehrlich, nicht Tapete |
| E1 | 5 | quiet confidence |
| **Mittel** | **4.3** | |

### Must-fix
1. Graue Handlungs-Box p1 streichen.
2. 2×2 + Vier Kanäle kognitiv koppeln.
3. Mimic-Alignment (nit).

---

## Portfolio-Synthese `d-risc-batch-2026-08`

### Rangfolge (didaktischer Gesamtnutzen)
1. **kl-kompartment** — schärfster Gatekeeper-Transfer, Pulse/Anti-Elevation/T3-Absenz  
2. **kl-gicht** — Mimic + TIME/SCOPE-Lehrstück  
3. **ii1-drisc** — OS-Methodik als tragende Infrastruktur des Batches  
4. **iv2-ruecken** — dual R4 inhaltlich top, Layout-Chrome gemischt  

### Cross-cutting patterns (gut)
- **R → I → S → C** durchgängig; I/S nicht unterschlagen (II-1, IV-2 Abschluss).
- **TIME ≠ SCOPE:** Grenze der Zuständigkeit als eigener Block, kein milder Tier.
- **Mimic peelt in Gefahr** (Gicht, Kompartment, IV-2 Kontrastpaare).
- **Dual coding** bei TIME-Stacks (112 rot / NA amber / Treat teal).
- KL-Template-Konsistenz (Big Picture → Cluster → Mimic → TIME → SCOPE → Fall) wiedererkennbar.
- Header-Ruhe, Exploration-Badge, keine Code-Leaks, keine Overflows sichtbar.

### Cross-cutting anti-patterns (schlecht)
- **p1-Überladung / Doppel-Frameworks** (Gicht 3er+4er; II-1 Stufen+Makro; IV-2 Matrix+voller Flow).
- **p3 Sparse sprawl** (II-1, Gicht, teils Kompartment) — Kapitelende wirkt unfertig.
- **Handlungs-Spoiler vor TIME** (Kompartment graue Box; tendenziell Transfer-Schlüssel II-1).
- **Chrome-Overshoot** solid-rot (IV-2 Unklar-Box) trotz sonst guter Restraint.
- **Seitenumbruch reißt Cluster** (Kompartment 2×2 vs. Kanäle).

### Priorisierte Revise-Welle (max. 8, effort S/M/L)

| # | Kapitel | Item | effort | warum (Lernschaden) |
|---|---|---|---|---|
| 1 | iv2 | Solid-rot „Unklar“ entsättigen | S | Scan-Ablenkung / Chrome-Regel |
| 2 | gicht | Doppel-Boxen p1 konsolidieren | M | Cognitive load first screen |
| 3 | kompartment | Graue Handlungs-Box p1 entfernen | S | Spoiler vor T1/T2 |
| 4 | ii1 | S-Farbkodierung vereinheitlichen | S | Dual-coding-Bruch OS |
| 5 | gicht | Fließtext p1 → Bullets | S | Scan under stress |
| 6 | kompartment | Umbruch 2×2 + Vier Kanäle | M | I/S-Cluster zusammenhalten |
| 7 | ii1 + gicht | p3 Spoiler/Sprawl (Schlüssel; Balance) | S | Transfer-Effekt |
| 8 | iv2 | p2 Tabellen-Rhythmus | M | Portfolio-Ästhetik / Einheit |

### Was NICHT ändern
- D-RISC-Reihenfolge und Pflichtformel-Syntax.
- Dual CES **und** Infekt in IV-2.
- T3-Absenz bei ACS; harte SCOPE-Sprache (kein HP-Druckmessen / keine Punktion).
- Teal OS für II-1; danger nur gewichtet auf must-not-miss.
- Mimic-Pattern „trügerische Erklärung → Gefahr“.
- Fallkonstruktionen (Gicht+Fieber; Gips+Massage-Wunsch).

### Agent vs Gemini — Kalibrierung
| Thema | Gemini | Agent |
|---|---|---|
| S-Farbe II-1 | block | should (Exploration) |
| Unklar solid-rot IV-2 | block | should (entsättigen, nicht streichen) |
| Gicht Doppelgrid | block | should |
| Kompartment Handlungsbox | block | should |
| Gesamtfreigabe | ship with should-fixes | **ship with should-fixes** |

### Freigabe-Empfehlung (exploration)

**ship with should-fixes**

Der Batch liefert methodisch saubere D-RISC-Exploration über vier Genre-Schichten. MedPäd und Claim-Disziplin sind production-nah; Layout-Schuld liegt vor allem bei first-screen density, einem Chrome-Overshoot und Kapitelende-Sprawl. Nach der 8er-Revise-Welle ist der Batch als **Gold-Referenz-Portfolio** für weitere KL-/Leitsymptom-Wellen tauglich — nicht „as-is gold“ ohne diese Fixes.

---

## Open commands (Human)

```bash
code toolset/orchestration/book-production/d-risc-batch-2026-08/evaluation/04-combined-visual-quality-review.md
code toolset/orchestration/book-production/d-risc-batch-2026-08/evaluation/03-gemini-visual-audit.md
code dist/pilots/ii1-drisc-batch-2026-08/p1.png
code dist/pilots/iv2-ruecken-batch-2026-08/p1.png
code dist/pilots/kl-gicht-batch-2026-08/p1.png
code dist/pilots/kl-kompartment-batch-2026-08/p1.png
```
