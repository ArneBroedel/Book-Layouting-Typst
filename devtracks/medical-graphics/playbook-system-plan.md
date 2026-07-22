# Plan: Praktisch anwendbares Playbook-System (Idee → Vision → Realize → Accept)

**Status:** **implemented** (2026-07-23) — P1–P6 delivered; dogfood optional  
**Parent track:** `devtracks/medical-graphics/`  
**Ziel:** Aus Content (C) zuerst die **medizinpädagogisch beste Darstellungsform** so detailliert wie möglich beschreiben; danach die **grafische Umsetzung** als visuelle Idee und Realisierungskette (Typst → Hybrid → Refine → optional Raster als Endprodukt) **agenten- und menschenfähig** machen.

**Leitprinzip (Wissensarchitektur):**

| Schicht | Ort | Funktion |
|---|---|---|
| *Why* (Theorie, Lessons) | `Guides/` | Lesen, verstehen, begründen |
| *What* (Procedure) | Skills (`media-brief`, `medical-graphics`, ggf. Orchestrator-Erweiterung) | Agent tut X |
| *How to run one unit* | Playbook-Seiten + Templates | Schritt-für-Schritt mit Artefakt-Pfaden |
| *Evidence* | `domains/medical/assets/`, spikes, Accepts | Gold-Beispiele |
| *Working memory* | dieser Track | bis Harvest |

---

## 0. Problem, das wir lösen

Heute existiert die Kette **teilweise** (Media Brief → free vision → recreate/refine → Accept), aber:

1. Die **pädagogische Formbeschreibung** im Brief ist oft zu dünn (Hypothesis-Zeile statt spezifizierbarer „wie sieht der Lerner es?“) — Graphics und Free Vision raten zu viel.
2. Die **Realisierungskette** ist in Skills fragmentiert und nicht als **mehrstufiger, abschließbarer Loop** dokumentiert (wann Raster Endprodukt sein *darf*).
3. **Guides vs Skills vs Beispiele** sind nicht als ein Playbook-System verdrahtet.
4. Learnings (Claim-Audit, Contiguity, Genre-Chrome, dual layout) sind nur partial geharvestet.

**Erfolg:** Eine Person/Agent kann aus einem Content-Abschnitt **ohne ad-hoc-Erfindung** die Kette fahren und am Ende ein Accept-fähiges Ergebnis liefern — mit klaren Artefakten pro Stufe.

---

## 1. Ziel-Pipeline (End-to-End)

```text
C Content (claims frozen / pilot-ready)
        │
        ▼
┌───────────────────────────────────────────────────────────┐
│  STAGE M — Media: Pädagogische Darstellungsform (Theorie) │
│  „Was ist die hypothetisch beste Form für den Lerner?“    │
│  Output: Form Spec (detailliert) + Media Brief sections   │
└───────────────────────────────────────────────────────────┘
        │
        ▼
┌───────────────────────────────────────────────────────────┐
│  STAGE G0 — Graphics: Visual-Units aus Form Spec          │
│  Welche Units brauchen echte Grafik vs. reinen Layout-Typ?│
└───────────────────────────────────────────────────────────┘
        │
        ▼
┌───────────────────────────────────────────────────────────┐
│  STAGE G1 — Free Vision (visuelle Idee)                   │
│  content pins + Form Spec; KEIN Structure-Template        │
│  Output: vision PNG(s) + vision.md                        │
└───────────────────────────────────────────────────────────┘
        │
        ▼
┌───────────────────────────────────────────────────────────┐
│  STAGE G2 — Claim audit (hart)                            │
│  Jedes Label vs. C; EN-Chrome; erfundene Zahlen           │
│  → PASS / DRIFT (B2-pflicht) / FAIL (nur Idee behalten)  │
└───────────────────────────────────────────────────────────┘
        │
        ▼
┌───────────────────────────────────────────────────────────┐
│  STAGE G3 — Realize ladder (mehrere Runden erlaubt)       │
│                                                           │
│   Runde 1: Typst recreate (B1) — claim SoT candidate      │
│   Runde 2: Hybrid optional (Asset-Form + Labels on nodes) │
│   Runde 3: AI refine (B2) der Free/Raster-Linie           │
│   Runde 4: A/B fair (gleiche Claims, Contiguity)          │
│   Runde n: polish / second refine (Cap!)                  │
│                                                           │
│   Endprodukt darf SEIN:                                   │
│     • code (Typst modul)                                  │
│     • hybrid                                              │
│     • vector asset                                        │
│     • refined raster  ← explizit erlaubt, mit Gates       │
└───────────────────────────────────────────────────────────┘
        │
        ▼
┌───────────────────────────────────────────────────────────┐
│  STAGE A — Media Accept (Idealnähe + Learner job)         │
│  Graphic winners + Compose notes                          │
└───────────────────────────────────────────────────────────┘
        │
        ▼
┌───────────────────────────────────────────────────────────┐
│  STAGE T — Tech Compose embed + validate                  │
└───────────────────────────────────────────────────────────┘
```

**Wichtige Policy-Korrektur gegenüber „immer Typst gewinnt“:**

Raster (refined free vision) **darf** Produktions-Endprodukt sein, wenn:

| Gate | Anforderung |
|---|---|
| Claim audit | PASS (kein Drift) |
| DPI / print | ≥300 @ print width *oder* „screen-only / pilot“ markiert |
| Alt-Text + MANIFEST | vorhanden |
| Wartbarkeit | akzeptiert (Owner weiß: Raster schwerer zu editieren) |
| Media Accept | explizit `graphic_mode: asset` + Winner = refined PNG |
| H-Gfx | bei Risiko-Motiven / klinisch heikel optional Human |

Sonst bleibt **recreate/hybrid** der Default bei ≈ gleicher Idealnähe.

---

## 2. Stage M — Pädagogische Form Spec (der fehlende Detail-Block)

### 2.1 Zweck

Media beschreibt nicht nur „numbered protocol“, sondern eine **spezifizierbare Lernerfahrung**, aus der Graphics Free Vision und Recreate ableiten können — ohne Claims umzuschreiben.

### 2.2 Neues Artefakt: `*.form-spec.md` (oder Abschnitt im Brief)

**Empfehlung:** eigenes leichtes Artefakt  
`domains/medical/briefs/<slug>.form-spec.md`  
*oder* erweiterter Brief-Abschnitt `## Form Spec (Visual-Units)` — Entscheidung in Implementierung: **eigenes File** hält Brief lesbar und Graphics-Handoff klar.

Pro **Visual-Unit** (nicht pro ganzem Kapitel):

| Block | Inhalt (so detailliert wie möglich) |
|---|---|
| **Identity** | unit_id, content anchor, genre, recipe fn |
| **Learner context** | Actor (z. B. PT Erstkontakt), time pressure, scan budget (5–10 s / 30 s) |
| **Learner job** | stop / execute / choose / … (ein Primärjob) |
| **Load risks** | was schiefgeht bei flacher Liste / gleicher Lautstärke |
| **Cognitive design** | segmenting, contiguity, signaling, dual coding — nur layout-relevante Mayer/CL-Hebel |
| **Information architecture** | ordered zones: was ist Zone 1 (laut), Zone 2, Escape, Quiet trailing |
| **Must-see elements** | nummerierte Liste: „muss *sichtbar* sein, nicht nur irgendwo im Text“ |
| **Must-not** | English chrome, invented thresholds, BLS als Hauptstrang, … |
| **Claim pins** | Tabelle: Zone/Step → erlaubter deutscher Wortlaut (copy-through aus C/Pilot) |
| **Urgency encoding** | welche Schritte solid danger vs. neutral; Default-to-Danger loud? |
| **Branching / loops** | Invarianten (z. B. 4a loop only; genau 2 exits) |
| **Genre chrome** | notfall-karte vs. framework-OS vs. leitsymptom — explizit |
| **Success criterion** | „Unter Stress erkennt Lerner X und tut Y“ |
| **Hypothesis name** | pattern name (hard-stop protocol, split triage, OS dashboard, …) |
| **Ambition flag** | free-vision **required** / optional / skip |

### 2.3 Beziehung zu heutigem Media Brief

| Heute | Neu |
|---|---|
| unit → hypothesis (1 Zeile) | Form Spec füllt **Must-see + pins + zones** |
| section plan prose | bleibt; Form Spec = **Graphics-taugliche Verdichtung** |
| wishlist | bleibt; Form Spec priorisiert, was wirklich Visual-Unit ist |

Media **schreibt** Form Spec. Graphics **darf nicht** die pädagogische Form neu erfinden — nur visualisieren und realisieren.

### 2.4 Skill-Arbeit Stage M

- **`media-brief` erweitern:** Pflichtschritt „Form Spec für ambitionierte Units“; Template; Accept prüft, ob Form Spec und Winner matchen.
- **`references/design-reasoning.md`:** Link zu Guide-Theorie; Form-Spec-Felder erklären.
- Optional später: **`presentation-forms`** als *shared reference pack* (kein dritter Always-Skill), von media-brief und medical-graphics geladen.

---

## 3. Stage G — Graphics Playbook (Realisierung)

### 3.1 Playbook-Seiten (menschlich + Agent)

Neue Struktur (Vorschlag):

```text
domains/medical/skill/medical-graphics/
  SKILL.md                          # Orchestrator: wann welche Stage
  playbook/
    00-overview.md                  # Pipeline-Karte, Caps, Artefakte
    01-from-form-spec.md            # Visual-Units extrahieren
    02-free-vision.md               # (kann free-vision.md mergen/verlinken)
    03-claim-audit.md               # Checkliste + FAIL-Beispiele
    04-recreate-typst.md            # B1 Muster, Module, FA, tokens
    05-hybrid.md                    # Contiguity, place-map, unfair A/B
    06-refine-raster.md             # B2, Caps, wann Raster Endprodukt
    07-ab-compare.md                # Fairness, Rubrik
    08-accept-handoff.md            # Decision Note + Media Accept inputs
    09-form-recipes.md              # 4+ Skeletons aus Portfolio
  references/                       # existing + harden
  examples/                         # pointer index to gold units
```

**Playbook ≠ Guide:** Playbook ist „tu in dieser Reihenfolge, schreib dieses File“. Guide ist „warum Free-first, warum Contiguity“.

### 3.2 Realize ladder — iterative Runden (explizit)

| Round | Name | Input | Output | Cap |
|---|---|---|---|---|
| R0 | Free vision | Form Spec + claim pins | vision-free-0N.png | 2 gens |
| R0b | Claim audit | free PNG | audit pass/fail note | mandatory |
| R1 | Typst recreate | Form Spec + free look | `lib/*.typ` + spike | 1 solid + polish |
| R2 | Hybrid (optional) | SVG/base + pins | hybrid spike | 1 fair hybrid |
| R3 | AI refine | free + standards + notes | vision-refined-0N.png | 2 gens |
| R4 | Fair A/B | spikes | compare.pdf + scores | 1 matrix |
| R5 | Choose + document | all | graphics.md realize_path | — |

**Stop rules:**

- Claim FAIL on free → R1 recreate **before** accept-asset; R3 nur mit surgical „strip invention“.
- Idealnähe recreate ≈ free und maintainability zählt → **code**.
- Free/refined deutlich besser **und** claim PASS + DPI/gates → **asset** erlaubt.
- Hybrid nur wenn Contiguity erfüllt.

### 3.3 Form recipes (aus Eval-Portfolio)

Playbook `09-form-recipes.md` kodiert:

| Recipe id | When | Must-see | Default realize | Gold path |
|---|---|---|---|---|
| `branching-emergency` | BLS/CPR-like | dual lanes, loop honesty | hybrid oder code | III-2 |
| `leitsymptom-vertical-flow` | First-Look→RF→R/I/S→C | order + Default-to-Danger | code | IV-2, IV-4 |
| `hard-stop-protocol` | CES Sofortmaßnahmen | stop first, Verbote, short escape | code | III-5 |
| `framework-os-sequence` | R+I+S→C method | binary rule, not red wall; vertical/landscape | code (+ landscape mode) | II-1 |

Jede Recipe: claim-pin-template, layout invariants, anti-patterns, spike-layout, Accept-Hinweise.

---

## 4. Guides (Why-Schicht)

| Guide (neu / erweitern) | Inhalt | Encoded in skill |
|---|---|---|
| **`Guides/Medical-Graphics-Playbook.md`** (oder `Didactic-Content-Graphics.md`) | Narrative: Free-first Geschichte, Contiguity, Claim-Audit, Genre-Chrome, Hybrid fairness, Raster-als-Endprodukt-Policy, Lessons III-2…IV-4 | `medical-graphics` Background |
| **`Guides/Medical-Presentation-Forms.md`** | Pädagogische Formensprache: unit types, load risks, zone architecture, dual coding, stress scan — **ohne** Typst-API | `media-brief` + `medical-graphics` |
| Optional append | Lessons in `Working_With_Typst-…` nur für reine Typst-Layout-Fallen (place, FA version) | `typst-writer` |

Guides sind **nicht** die Step-Checkliste — die bleibt im Skill-Playbook.

---

## 5. Skills — Zielarchitektur

### 5.1 Kein Skill-Wildwuchs

| Skill | Rolle | Erweiterung |
|---|---|---|
| **`media-brief`** | Stage M + Accept | Form Spec Pflicht; Accept liest graphics winners + form-spec proximity |
| **`medical-graphics`** | Stage G0–G5 | Playbook-Ordner; multi-round ladder; raster-end policy; form recipes; claim audit mandatory |
| **`compose-chapter`** | Stage T | Handoff: embed accepted winner; kein Ideal neu erfinden |
| **`content-orchestrator`** (light) | Routing | Optional Route-Card: „Unit needs Form Spec → Graphics“ |

**Nicht** als Always-Skill: `presentation-forms` → **shared references** unter `domains/medical/skill/_shared/` oder in beiden Skills verlinkt.

### 5.2 `medical-graphics` SKILL.md Zielstruktur

```yaml
# frontmatter: ALWAYS after Media Brief for visual units; free vision; recreate; hybrid; refine; accept-asset
```

Body:

1. When / When not  
2. Pipeline diagram (Stages)  
3. ALWAYS/NEVER (claim audit, contiguity, structure-ref ban, German labels)  
4. Caps table  
5. Link playbook/00…09  
6. Artefakt-Pfade  
7. Gold examples index  
8. Boundary Media / Tech  

### 5.3 `media-brief` Ergänzungen

- Step: „For each ambitious unit → write Form Spec“  
- Template `form-spec.template.md`  
- Accept: check Form Spec Must-see vs. realized winner  
- Explicit: Graphics does not replace Form Spec authorship  

---

## 6. Templates & Example files

### 6.1 Templates

| Template | Path |
|---|---|
| Form Spec | `domains/medical/templates/form-spec.template.md` |
| Vision (erweitern) | pin Form Spec path; invariants block |
| Decision (erweitern) | multi-round log; end product mode; claim audit result |
| Claim audit | `domains/medical/templates/graphic-claim-audit.template.md` |
| Accept graphic section | snippet in accept-record template |
| Recreate module stub | `toolset/compose/spikes/graphics/_templates/lib-module.typ` |
| Spike recreate/compare/refine | `_templates/spike-*.typ` |

### 6.2 Example / gold corpus (pointer, keine Duplikate)

`domains/medical/skill/medical-graphics/examples/INDEX.md`:

| Example | Stages completed | End product | Paths |
|---|---|---|---|
| III-2 S4 | free→hybrid+code→refine→accept | hybrid preferred / code fallback | … |
| IV-2 S4 | free→recreate→refine→accept | code | … |
| III-5 S4 | free→recreate→accept | code | … |
| II-1 S8 | free→recreate vertical+landscape→accept | code (landscape optional) | … |
| IV-4 S6 | free FAIL claims→B2→recreate→accept | code; refined look | … |

Jeder Eintrag: 5–10 Zeilen „was man hier lernt“ + Link zu vision/graphics/accept/lib.

### 6.3 Worked example (ein kompletter Walkthrough)

Ein Playbook-Kapitel **`playbook/walkthrough-iv2.md`** (oder III-2):

1. Auszug Content → Form Spec (Beispieltext)  
2. Vision brief  
3. Free PNG path  
4. Claim audit table  
5. Recreate excerpt  
6. Compare  
7. Accept excerpt  

Damit Agents **pattern-matchen** statt nur abstrakte Rules.

---

## 7. Scripts & Tooling (minimal erweitern)

| Script | Status | Plan |
|---|---|---|
| `graphics-vision-agy.sh` | exists | + optional `--form-spec` attach (not structure SVG) |
| `graphics-refine-agy.sh` | exists | + claim-audit notes file support |
| Neu optional | — | `graphics-claim-audit.md` generator stub (checklist fill) |
| Neu optional | — | `scripts/graphics-spike-init.sh <slug> <recipe>` scaffolds lib+spikes |
| DPI | exists | document in refine-end-product gates |

Kein MCP in v1 des Playbook-Systems.

---

## 8. Governance & Boundaries

| Doc | Update |
|---|---|
| `ROLES-AND-FLOW.md` | Stage M Form Spec; Raster end product allowed under gates |
| `CREATIVE-COMPOSE.md` | realize ladder multi-round; form-spec handoff |
| `PRODUCT-BOUNDARIES` / CONSENSUS | Graphics ownership of realize; Media of Form Spec + Accept |
| `AGENTS.md` / CLAUDE skill gate | Form Spec + medical-graphics playbook |
| `KNOWLEDGE-MAP.md` | Guide ↔ skill mapping for new guides |

**Claims:** Form Spec pins only copy-through from C. Graphics never invents clinical content. Free vision invents composition, not thresholds.

---

## 9. Implementierungsphasen (Arbeitspakete)

### Phase P1 — Spec lock & skeleton (1–2 Tage)

- [ ] Diesen Plan reviewen / mit Stakeholder bestätigen (Raster-Endprodukt-Policy, Form-Spec als eigenes File)  
- [ ] `form-spec.template.md`  
- [ ] `playbook/00-overview.md` Skeleton  
- [ ] Decision/vision templates: Form Spec link + multi-round log fields  
- [ ] `examples/INDEX.md` mit 5 Gold-Units (nur Pointer)

### Phase P2 — Media Form Spec (pädagogische Detailtiefe)

- [ ] Guide `Medical-Presentation-Forms.md` (Theorie verdichtet + Form-Spec-Felder)  
- [ ] `media-brief` SKILL + design-reasoning: Form Spec step  
- [ ] Ein **Gold-Form-Spec** rückwirkend für IV-2 oder III-5 (Vorbild)  
- [ ] Accept template: Form Spec proximity check  

### Phase P3 — Graphics Playbook voll

- [ ] playbook 01–08 aus Learnings (Claim audit, hybrid fairness, refine, A/B)  
- [ ] `09-form-recipes.md` (4 Skeletons)  
- [ ] `medical-graphics` SKILL.md rewrite um Playbook zentriert  
- [ ] free-vision.md / decision-heuristics: Raster-end + multi-round + claim audit merge  

### Phase P4 — Guide harvest + Typst guide slice

- [ ] `Guides/Medical-Graphics-Playbook.md` (Why + narrative eval harvest)  
- [ ] Cross-links skill ↔ guide  
- [ ] Optional: Typst recreate conventions (FA6, tokens, module layout param) in Guide oder playbook/04  

### Phase P5 — Scaffolding & worked walkthrough

- [ ] `_templates/` Typst stubs + `graphics-spike-init.sh`  
- [ ] Full walkthrough doc (eine Unit)  
- [ ] Optional: second Form Spec + re-run pipeline on I-4 or V-Cauda as dogfood  

### Phase P6 — Harvest & close

- [ ] skill-creator validate  
- [ ] plan.md Harvested-into footer  
- [ ] Track archive when P1–P5 done und Skills grün  

**Reihenfolge strikt:** P1 → P2 → P3 (P4 kann parallel zu P3 Guide schreiben) → P5 dogfood → P6.

---

## 10. Acceptance criteria (System fertig)

1. Agent mit `media-brief` erzeugt für ambitionierte Unit eine **Form Spec**, die Must-see + claim pins enthält.  
2. Agent mit `medical-graphics` folgt Playbook 00→08 ohne ad-hoc Pfadfindung.  
3. Free Vision → claim audit → mindestens ein Realize-Pfad ist dokumentiert; **Raster-Endprodukt** ist nur mit Gates wählbar.  
4. Hybrid ohne Contiguity ist im Skill als **invalid A/B** markiert.  
5. Vier Form recipes + five gold examples verlinkt.  
6. Guide erklärt *why*; Skill/Playbook erklärt *what/how*.  
7. Mindestens ein Walkthrough end-to-end nachvollziehbar.  
8. Compose-chapter notes referenzieren Accept winners / Form Spec.

---

## 11. Offene Entscheidungen (vor Implementierung klären)

| # | Frage | Option A (empfohlen) | Option B |
|---|---|---|---|
| D1 | Form Spec eigenes File? | **Ja** `*.form-spec.md` | Abschnitt im Brief |
| D2 | Raster als Default-Endprodukt? | **Nein** — nur gated | Gleichrangig mit code |
| D3 | Landscape-Mode generisch? | Recipe-spezifisch (II-1) | Generisches `layout` param pattern in playbook |
| D4 | Shared form pack Skill? | **References only** | Dritter skill |
| D5 | Rückwirkend alle Welle-03 Form Specs? | **1–2 Gold + Template** | Alle 10 Kapitel |

---

## 12. Was wir *nicht* in diesem Plan bauen

- Automatische Claim-OCR auf PNGs  
- MCP-Server Graphics  
- bookkit-Foundation mit medizinischen Genre-Regeln  
- Content-Rewrite-Loops (Genesis)  
- Ersetzen von Media Accept durch Graphics allein  

---

## 13. Sofort nächster Implementierungs-Schritt (nach Plan-OK)

1. D1–D5 bestätigen.  
2. Phase P1: Template Form Spec + playbook/00 + examples INDEX.  
3. Phase P2: ein Gold-Form-Spec (IV-2 S4) als Muster.  

---

## Related

- Eval: `dist/spikes/graphics/_eval/eval-batch-2026-07-22.md`  
- Skill SoT: `domains/medical/skill/medical-graphics/`, `media-brief/`  
- Spec: `devtracks/medical-graphics/spec.md`  
- Knowledge: `docs/KNOWLEDGE-MAP.md`
