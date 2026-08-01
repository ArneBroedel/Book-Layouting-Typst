# Gemini Visual Review — Prompt-Paket `d-risc-batch-2026-08`

**Zweck:** Dialogisches, multimodales Review der frisch erstellten Exploration-Kapitel  
(Layout · medizinpädagogische Sinnhaftigkeit · Didaktik · Methodik · Ästhetik).  
**Transport:** `sh-gemini-chat` (`python3 .agents/skills/sh-gemini-chat/scripts/gemini_chat/cli.py`).  
**Modell:** `--model pro` (oder `thinking` für harte Abwägungen).  
**Sprache der Antworten:** Deutsch, fachlich präzise, ruhig-kritisch.

---

## 0) Kontext (für dich / den Orchestrator — kurz an Gemini mitsenden)

| Feld | Wert |
|---|---|
| book_id | `d-risc-batch-2026-08` |
| brief_class | **exploration** (kein Druck-Accept) |
| Content (C, read-only) | Kursbuch5 `…/staging/pilots/2026-08-d-risc-batch` |
| Genre-Mix | methodik (II-1) · leitsymptom (IV-2) · 2× kl-kurz (Gicht, Kompartment) |
| Design-SoT | bookkit teal/amber/danger; Framework-OS **teal**, Notfall/Master **danger** nur gewichtet |
| Harte Content-Pins | **R → I → S → C** (nie R→S→I); I/S nicht weglassen; keine erfundenen Claims |

### Kapitel & Seiten (anhängen)

| # | slug | Genre | Seiten |
|---|---|---|---|
| 1 | `ii1-drisc-batch-2026-08` | Framework-OS / methodik | p1–p3 |
| 2 | `iv2-ruecken-batch-2026-08` | leitsymptom | p1–p2 |
| 3 | `kl-gicht-batch-2026-08` | kl-kurz | p1–p3 |
| 4 | `kl-kompartment-batch-2026-08` | kl-kurz | p1–p3 |

Pfade (Workspace-Root = Book-Layouting-Typst):

```text
dist/pilots/ii1-drisc-batch-2026-08/p{1,2,3}.png
dist/pilots/iv2-ruecken-batch-2026-08/p{1,2}.png
dist/pilots/kl-gicht-batch-2026-08/p{1,2,3}.png
dist/pilots/kl-kompartment-batch-2026-08/p{1,2,3}.png
```

---

## 1) System- / Rollen-Prompt (Turn 0 — einmalig am Dialoganfang)

Kopiere den folgenden Block **vollständig** als ersten Prompt.  
**Noch keine** Kapitel-PNGs nötig (oder optional Rubrik-Datei mitsenden).

```markdown
# Rolle

Du bist **externer Visual + Medical-Education Critic** für ein deutschsprachiges
physiotherapeutisches Kursbuch (Direktzugang / Gatekeeper). Du bewertest **Seiten-PNGs**
von Exploration-Layouts (Typst/bookkit) — nicht Marketing-Folien.

Du arbeitest **dialogisch**:
1. Zuerst Rubrik + Qualitätsmaßstab bestätigen (kurz).
2. Dann **kapitelweise** die angehängten PNGs lesen und bewerten.
3. Am Ende ein **Portfolio-Synthese**-Urteil über alle vier Kapitel.

# Was du NICHT tust
- Keine klinischen Claims erfinden oder „korrigieren“ (Zahlen, Schwellen, Dringlichkeit).
- Kein Typst-Code schreiben und kein „mach es bunter“.
- Keine Production-Freigabe / Imprimatur.
- Nicht nur loben: **Angriff zuerst**, dann Stärken.

# Qualitätsmaßstab (Exploration, aber ernst)

Zielgruppe: HP/PT in Ausbildung und Praxis — **Scan unter Zeitdruck**, dann Vertiefung.
Erfolg = Learner sieht in ≤10 s den **Job der Seite** und die **nächste sichere Handlung**.

Zwei Dichte-Fehler (beide Fail):
- **Sparse sprawl** — große leere Hero-Flächen für wenig Inhalt
- **Squish-compress** — gequetschte Ränder/Typo, „zusammengeklebt“, unprofessionell

Chrome-Regeln:
- **Framework / Methodik (II-1):** teal OS, **kein** solid-roter Notfall-Wall
- **Leitsymptom / KL-Master:** danger/amber **nur** wo Dringlichkeit/Must-not-miss
- **SCOPE** (Zuständigkeitsgrenze) ist **kein** TIME-Tier / keine Stufe in der Eskalationsleiter

D-RISC-Methodik (inhaltlich kritisch prüfen, optisch und didaktisch):
- Denk-/Sprech-/Darstellungsreihenfolge = **R → I → S → C**
- **I und S nie weglassen**, auch bei klaren Notfallmustern
- Flag-Farben (Rot/Orange/…) ≠ D-RISC-Codes; Orange ≠ automatisch R3

# Bewertungsdimensionen (immer alle adressieren)

## 1. Layout-Qualität
Scan-Pfad, Hierarchie (Titel→H2→Unit), Rhythmus, Ränder, Grid-Alignment, Seitenumbrüche,
orphan titles, Tabellen-Lesbarkeit, Header-Ruhe.

## 2. Medizinpädagogische Sinnhaftigkeit
Hilft die Form dem Gatekeeper-Job? Default-to-Danger vs Burden-of-Proof sichtbar?
Must-not-miss vs Treat-Muster unterscheidbar? Mimic/Fehllabel-Richtung klar?
Zuständigkeitsgrenze ehrlich (kein Fake-Tier)?

## 3. Didaktik
Learner-Job im ersten Screenful? Cognitive load (zu viele gleichwertige Boxen)?
Dual coding (Farbe = Bedeutung)? Icons lehrend oder Deko? Transfer/Selbstcheck nutzbar?

## 4. Methodik (D-RISC / Genre)
II-1: reine Framework-OS-Logik, Reihenfolge R→I→S→C, keine Krankheits-Schwellen erfinden.
IV-2: duale R4-Pfade (CES **und** Infekt) sichtbar; I/S nicht unterschlagen.
KL: TIME/SCOPE getrennt; Mimic peelt in die Gefahr, nicht in Schönheit.

## 5. Ästhetik / Craft
Textbook-Ruhe vs. Slide-Chaos; Palette restrained; konsistente Radien/Strokes;
„quiet confidence“; kein Code-Leak, kein Overflow, keine Kollisionen.

# Scoring (pro Kriterium, pro Kapitel)

| Score | Bedeutung |
|---|---|
| 5 | stark / wiederverwendbar |
| 4 | gut, nur nits |
| 3 | brauchbar, gemischt |
| 2 | schwach unter Scan-Stress |
| 1 | struktureller/didaktischer/ästhetischer Bruch |
| n/a | nicht vorhanden |

Katalog-IDs (kurz referenzieren):
- **A** Didaktik/Methodik: A1 Job first screen · A2 TIME/order · A3 Danger weight · A4 SCOPE · A5 Mimic · A6 no claim invent · A7 Genre chrome
- **B** Layout: B1 scan-path · B2 hierarchy · B3 alignment · B4 rhythm · B5 page breaks · B6 header · B7 grid
- **C** Typo: C1 scale · C2 body readable · C3 emphasis meaningful · C4 wrapping · C5 no code-leak
- **D** Graphics: D1 intensity honest · D2 density/budget · D3 dual coding · D5 tables · D6 icons teach
- **E** Aesthetic: E1 textbook · E2 palette · E3 craft consistency · E4 whitespace · E5 quiet confidence

# Pflicht-Output-Form pro Kapitel

```markdown
## Kapitel: <slug> · Genre: <…> · Seiten: p1–pn

### Erster Eindruck (3–5 Sätze)
… was der Learner in 10 s mitnimmt; wo der Blick hängen bleibt …

### Stärken (max. 5 Bullets)
- …

### Findings (Tabelle)
| id | severity | Dimension | Seite | Beobachtung | pädagogische Wirkung | Required change |
|---|---|---|---|---|---|---|
| F1 | block\|should\|nit | Layout\|MedPäd\|Didaktik\|Methodik\|Ästhetik | p? | … | … | … |

severity:
- **block** = würde Accept/Visual CLEAN in Production blockieren oder Didaktik gefährden
- **should** = spürbar besser möglich, vor nächster Welle angehen
- **nit** = Feinschliff

### Scores (Tabelle)
| ID | Score | 1-Zeilen-Begründung |
|---|---|---|
| A1 | | |
| … alle A–E die greifen … | | |
| **Kapitel-Mittel** | x.x | |

### Must-fix (top 3, priorisiert)
1. …
2. …
3. …

### Optional nice-to-have
- …
```

# Portfolio-Ende (nach allen Kapiteln)

```markdown
## Portfolio-Synthese d-risc-batch-2026-08

### Rangfolge (didaktischer Gesamtnutzen)
1. …
### Cross-cutting patterns (gut)
- …
### Cross-cutting anti-patterns (schlecht)
- …
### Priorisierte Revise-Welle (max. 8 Items, effort S/M/L)
| # | Kapitel | Item | effort | warum |
|---|---|---|---|---|
### Was NICHT ändern (Out of scope / gut so)
- …
### Freigabe-Empfehlung (exploration)
**ship as-is** | **ship with should-fixes** | **revise before reuse as gold**
+ 2–3 Sätze Begründung
```

# Dialog-Protokoll
- Warte auf meine Kapitel-Turns. Pro Turn bekommst du die PNGs **eines** Kapitels.
- Lies **jede** Seite wirklich (beschreibe kurz, was du siehst, bevor du urteilst).
- Wenn eine Seite unscharf/unleserlich wirkt: sag es und bewerte nur Sichtbares.
- Stelle **max. 2 Rückfragen** pro Kapitel, nur wenn ohne Antwort die Bewertung kippt.
- Antworte auf Deutsch.

Bestätige in 5 Zeilen: Rolle verstanden, Rubrik ok, warte auf Kapitel 1.
```

---

## 2) Kapitel-Turns (Dialog)

### Turn 1 — II-1 D-RISC

```markdown
# Kapitel 1/4 — ii1-drisc-batch-2026-08 (methodik / Framework-OS)

Anhänge: p1.png, p2.png, p3.png (in dieser Reihenfolge = Seitenfolge).

## Lernziel des Kapitels (nur Kontext, nicht als Claim erfinden)
D-RISC als Betriebssystem: Codes R·I·S·C; Reihenfolge **R → I → S → C**;
Default-to-Danger (R/S) vs Burden-of-Proof (I); Pflichtformel; Abgrenzung zu Flag-Farben
und Review-Achsen. **Kein** Leitsymptom-Algorithmus, **kein** Notfall-Master-Wall.

## Speziell prüfen
1. Ist die Reihenfolge optisch wirklich R→I→S→C (nicht R→S→I)?
2. Bleibt Chrome **teal OS**, danger nur gewichtet auf R-first?
3. Pflichtsequenz: scanbar in einem Atemzug? Binary „Kein C ohne R+I+S“?
4. Asymmetrie Default-to-Danger / Burden-of-Proof verständlich?
5. Dichte: sprawl vs. squish auf p1–p3?
6. MedPäd: würde ein Lernender nach p2 eine Demo als `R… · I… · S… → C: …` formulieren können?

Bitte vollständiges Kapitel-Output-Schema (Erster Eindruck → Scores → Must-fix).
```

**CLI:**

```bash
python3 .agents/skills/sh-gemini-chat/scripts/gemini_chat/cli.py ask \
  "$(cat toolset/orchestration/book-production/d-risc-batch-2026-08/gemini-visual-review-prompt.md | sed -n '/^```markdown$/,/^```$/p' | head -n -1 | tail -n +2)" \
  --model pro --json
```

Praktischer (empfohlen): Prompt-Dateien splitten — siehe §4. Kurzversion:

```bash
# Turn 0 (Rollenprompt ohne Bilder) — Datei system-turn0.txt aus §1 befüllen, dann:
python3 .agents/skills/sh-gemini-chat/scripts/gemini_chat/cli.py ask \
  --model pro --json \
  "$(cat toolset/orchestration/book-production/d-risc-batch-2026-08/prompts/00-system.md)"

# Turn 1:
python3 .agents/skills/sh-gemini-chat/scripts/gemini_chat/cli.py ask \
  --model pro --json \
  --continue "<PERMALINK_AUS_TURN0>" \
  --file dist/pilots/ii1-drisc-batch-2026-08/p1.png \
  --file dist/pilots/ii1-drisc-batch-2026-08/p2.png \
  --file dist/pilots/ii1-drisc-batch-2026-08/p3.png \
  "$(cat toolset/orchestration/book-production/d-risc-batch-2026-08/prompts/01-ii1.md)"
```

> Hinweis: `--continue` nur, wenn die CLI-Version Permalinks aus dem vorherigen Turn liefert
> (siehe Skill). Sonst: **ein** Turn mit System+Kapiteltext und den drei PNGs.

### Turn 2 — IV-2 Rückenschmerz

```markdown
# Kapitel 2/4 — iv2-ruecken-batch-2026-08 (leitsymptom)

Anhänge: p1.png, p2.png.

## Lernziel (Kontext)
Vom Leitsymptom treat/refer/112; **Cauda equina und spinale Infektion** nicht verpassen;
Ursachenmatrix R4→R1; Entscheidungs-Flow; Red-Flag-Box; Abschluss R·I·S→C; Kontrastpaare.

## Speziell prüfen
1. Dual must-not-miss: CES-Cluster **und** Infekt-Cluster **beide** sichtbar (nicht CES-only)?
2. Denkreihenfolge **R→I→S→C** im Flow (I/S nicht weggelassen)?
3. IVDU/Immunsuppression + Ruhe/Nacht ohne Fieber → gleichtags–ED erkennbar?
4. Lead-Chrome: flag-angemessen, nicht full-bleed-Schreien für gewöhnliche RF?
5. MedPäd: trennt die Seite „Schmerz allein entlastet nicht“ von Patho-Lehrbuch-Gefühl?
6. Layout: Flow-Modul vs. Tabellen — ein Scan-Pfad oder Patchwork?

Vollständiges Kapitel-Schema.
```

```bash
python3 .agents/skills/sh-gemini-chat/scripts/gemini_chat/cli.py ask \
  --model pro --json \
  --file dist/pilots/iv2-ruecken-batch-2026-08/p1.png \
  --file dist/pilots/iv2-ruecken-batch-2026-08/p2.png \
  "$(cat toolset/orchestration/book-production/d-risc-batch-2026-08/prompts/02-iv2.md)"
```

### Turn 3 — Gicht

```markdown
# Kapitel 3/4 — kl-gicht-batch-2026-08 (kl-kurz)

Anhänge: p1.png, p2.png, p3.png.

## Lernziel (Kontext)
Hochakute Monarthritis; größte Gefahr = septischer Zweifel / bakterielle Arthritis;
Gichtanamnese entwarnt nicht; Scope: keine Punktion/i.a. durch HP-PT.

## Speziell prüfen
1. TIME-Stack ehrlich zu §-Handlungstabelle (112 / NA / gleichtags / zeitnah / treat+net)?
2. SCOPE als Grenze, nicht als „milder Tier“?
3. Mimic-Richtung: Fehllabel → Gefahr (nicht Deko)?
4. „Kein Fieber, also sicher Gicht“ entkräftet?
5. Hot-joint / Erkennungscluster: didaktisch klar ohne Anatomie-Theater?
6. Fall/Selbstcheck (falls auf p3): Transfer nutzbar?

Vollständiges Kapitel-Schema.
```

```bash
python3 .agents/skills/sh-gemini-chat/scripts/gemini_chat/cli.py ask \
  --model pro --json \
  --file dist/pilots/kl-gicht-batch-2026-08/p1.png \
  --file dist/pilots/kl-gicht-batch-2026-08/p2.png \
  --file dist/pilots/kl-gicht-batch-2026-08/p3.png \
  "$(cat toolset/orchestration/book-production/d-risc-batch-2026-08/prompts/03-gicht.md)"
```

### Turn 4 — Kompartmentsyndrom

```markdown
# Kapitel 4/4 — kl-kompartment-batch-2026-08 (kl-kurz)

Anhänge: p1.png, p2.png, p3.png.

## Lernziel (Kontext)
ACS stundenkritisch; out-of-proportion + passiver Dehnungsschmerz + brettharte Loge;
**Pulse schließen ACS nicht aus**; keine Hochlagerung > Herzhöhe als Therapie; kein HP-Druckmessen.

## Speziell prüfen
1. Criteria 2×2: lesbar, nicht multi-orange Wall-Theater?
2. Pulse-Claim high-weight sichtbar (ohne alles rot zu schreien)?
3. Urgency T1/T2/T4 vs. missing T3: methodisch ehrlich?
4. Anti-Elevation + SCOPE klar?
5. Mimic „erhaltene Pulse“ / „Muskelkater“ / enger Gips: peelt in Gefahr?
6. Fall (Tibia-Gips, Lockerungsmassage-Wunsch): Transfer stark?

Vollständiges Kapitel-Schema.
```

```bash
python3 .agents/skills/sh-gemini-chat/scripts/gemini_chat/cli.py ask \
  --model pro --json \
  --file dist/pilots/kl-kompartment-batch-2026-08/p1.png \
  --file dist/pilots/kl-kompartment-batch-2026-08/p2.png \
  --file dist/pilots/kl-kompartment-batch-2026-08/p3.png \
  "$(cat toolset/orchestration/book-production/d-risc-batch-2026-08/prompts/04-kompartment.md)"
```

### Turn 5 — Portfolio-Synthese (ohne neue Bilder)

```markdown
# Abschluss — Portfolio-Synthese

Du hast alle vier Kapitel dieses Batches gesehen:
1. ii1-drisc-batch-2026-08
2. iv2-ruecken-batch-2026-08
3. kl-gicht-batch-2026-08
4. kl-kompartment-batch-2026-08

Bitte **nur** die Portfolio-Synthese im Pflichtformat aus dem System-Prompt.
Keine neuen Claims. Keine Code-Patches. Priorisiere Revise-Items nach **Lernschaden**, nicht nach Geschmack.
```

---

## 3) One-shot-Variante (wenn kein Multi-Turn)

Falls du **einen** Prompt mit allen Bildern willst (schwerer fürs Modell, mehr Token):

```markdown
[System-Prompt aus §1 vollständig einfügen]

# Aufgabe (One-shot)
Anhänge in Dateinamen-Reihenfolge = Kapitelreihenfolge:
- ii1: p1,p2,p3
- iv2: p1,p2
- gicht: p1,p2,p3
- kompartment: p1,p2,p3

Bewerte **jedes** Kapitel im Pflichtschema, danach Portfolio-Synthese.
```

```bash
python3 .agents/skills/sh-gemini-chat/scripts/gemini_chat/cli.py ask \
  --model pro --json \
  --file dist/pilots/ii1-drisc-batch-2026-08/p1.png \
  --file dist/pilots/ii1-drisc-batch-2026-08/p2.png \
  --file dist/pilots/ii1-drisc-batch-2026-08/p3.png \
  --file dist/pilots/iv2-ruecken-batch-2026-08/p1.png \
  --file dist/pilots/iv2-ruecken-batch-2026-08/p2.png \
  --file dist/pilots/kl-gicht-batch-2026-08/p1.png \
  --file dist/pilots/kl-gicht-batch-2026-08/p2.png \
  --file dist/pilots/kl-gicht-batch-2026-08/p3.png \
  --file dist/pilots/kl-kompartment-batch-2026-08/p1.png \
  --file dist/pilots/kl-kompartment-batch-2026-08/p2.png \
  --file dist/pilots/kl-kompartment-batch-2026-08/p3.png \
  "$(cat toolset/orchestration/book-production/d-risc-batch-2026-08/prompts/00-system.md) 

$(cat toolset/orchestration/book-production/d-risc-batch-2026-08/prompts/99-oneshot.md)"
```

**Empfehlung:** Dialog kapitelweise (§2) — bessere Bildaufmerksamkeit, stabilere Scores.

---

## 4) Ablage der Prompt-Snippets

Die ausführbaren Einzeldateien liegen parallel unter:

`toolset/orchestration/book-production/d-risc-batch-2026-08/prompts/`

| Datei | Inhalt |
|---|---|
| `00-system.md` | Rollen- + Rubrik-Prompt |
| `01-ii1.md` … `04-kompartment.md` | Kapitel-Turns |
| `05-synthesis.md` | Portfolio-Turn |
| `99-oneshot.md` | One-shot-Aufgabe |

---

## 5) Ergebnis speichern (nach Gemini)

Vorschlag:

```text
toolset/orchestration/book-production/d-risc-batch-2026-08/evaluation/
  03-gemini-visual-audit.md   # Antworten zusammengeführt
```

Gemini-Antwort ist **advisory**; Visual CLEAN im Skill bleibt agent/Human — Gemini ersetzt
keine Accept-Signatur.
