# Spec: Content Maturity Loop — Content-Reife-Schleife (Produkt C)

**Status:** open · **Track-ID:** `content-maturity`  
**Date opened:** 2026-07-20  
**Optimized:** 2026-07-20 after Gemini Pro R1+R2 — see [`decisions.md`](decisions.md), [`reviews/gemini-r1-r2-2026-07-20.md`](reviews/gemini-r1-r2-2026-07-20.md)  
**Governing:** [`../CONSENSUS-v0.md`](../CONSENSUS-v0.md) (v0.2 baseline; this track proposes **v0.3** MVP + **v0.4** backlog) · [`../PRODUCT-BOUNDARIES.md`](../PRODUCT-BOUNDARIES.md)  
**Companion (done):** Media (B) + Compose (A) — see archived `media-design`, `compose-pipeline`

---

## 0. MVP v0.3 vs target architecture

This spec describes the **full target** loop (C0–C5). **Implementation priority is MVP v0.3**
per Gemini review consensus. Do not treat deferred items as missing DoD for track MVP exit.

| Slice | In scope | Deferred (v0.4+) |
|---|---|---|
| **Review depth** | Core developmental-edit + claims audit + thin safety-flags (flag/ask only) | Full medical pedagogical + clinical-risk profiles; genre-hooks |
| **Freeze** | Human-only; agent `ready_for_freeze` only | — |
| **Revision pin** | `git:<short>` \| `sha256:<filehash>` only | — |
| **Proof (C4)** | Human checklist template; machine claims report path | Agent PDF vision triage |
| **Imprimatur (C5)** | Optional stub template only | Hard release gate |
| **Patches / language** | Out of MVP | content-patch pipeline; language-proof |
| **A gate** | `--profile smoke` vs `--profile production` (hard freeze+pin) | — |
| **B gate** | `brief_class: exploration\|production` + freeze for production | — |

**Binding decisions:** [`decisions.md`](decisions.md) (D1–D11). On conflict, decisions.md wins for MVP.

---

## 1. Objective

Die **Content-Reife-Schleife** spezifizieren und implementierbar machen: alles, was im klassischen
Verlag **vor** (und teilweise **nach**) Mediendesign und Satz liegt — Entwicklungslektorat,
fachlich-pädagogisches Review, Content-Freeze, Fahnenkorrektur, Imprimatur — in einer
**agentischen, artefaktbasierten** Form.

Ziele im Einzelnen:

1. **Lücke schließen:** Heute startet der Flow oft stillschweigend bei „Content freigegeben → Media Brief“.
   Es fehlt ein verbindlicher, reviewbarer Weg, **schon gute** (auch medizinpädagogisch vorbereitete)
   Manuskripte systematisch zu heben, ohne Layout-Agenten den Inhalt umschreiben zu lassen.
2. **Weniger Rollen als der Verlag, klare Aufgabenteilung:** Eine Rolle **Content-Review**
   (Agent bereitet vor, Human entscheidet bei Blocks) statt getrennter Agenten-Armeen
   (Lektor + Gutachter + Korrektor als Dauer-Chat).
3. **Drei Qualitätsachsen trennen:** Q1 Fach · Q2 Lern-/Textqualität · Q3 Darstellung/Satz
   (Q3 bleibt Media+Tech; dieser Track besitzt Q1/Q2 und die Gates davor/danach).
4. **Split-first design:** Alles hier so erarbeiten, dass es **sauber aus dem Layout-Repo (A)**
   in ein **Content-Werk-Repo (C)** und ggf. Domain-Profile wandern kann — ohne Content-SoT
   dauerhaft in diesem Workspace zu verankern.

> **Leitidee (wie CONSENSUS):** Verlagsrollen behalten. Endlose Agenten-Meetings vermeiden.
> Austausch über **Artefakte und begrenzte Schleifen.** Kein Auto-Heal von Fachtext.

---

## 2. Problem statement

### 2.1 Was A/B bereits lösen (out of scope for reinvention)

| Achse | Owner heute | Mechanismus |
|---|---|---|
| Q3 Darstellungsideal | **Media (B)** | `media-brief`, Genre-Rezepte, Accept |
| Q3 Satz / Whitelist | **Tech (A)** | `compose-chapter`, form-catalog, compose |
| Q3 technische Integrität | **Validator (A)** | forms, genre minima, **claims strict copy-through**, compile |
| Prepress / Print | **A tooling** | print/UA/PDF-X Pipelines |

### 2.2 Was fehlt

| Verlags-Schritt | Status in v0.2 |
|---|---|
| Entwicklungslektorat am **Manuskript** | fehlt |
| Fachgutachten / Safety-Risk-Scan | nur Human-Hinweis, kein Workflow |
| Medizinpädagogik am **Text** (nicht am Layout) | Media berührt Darstellung; verbessert Body/Claims **nicht** (by design) |
| Korrektorat (Sprache) | fehlt |
| Content-Freeze als Gate vor Production-Media/Compose | Feld `content_status` existiert lose; **nicht erzwungen** |
| Fahnenkorrektur am Umbruch | Claims-strict ≠ redaktioneller Proof |
| Imprimatur („so darf print“) | Media-Accept und Validate-grün **ersetzen das nicht** |

### 2.3 Warum das nicht in Media/Tech „mitlaufen“ darf

- Media/Tech-Skills **verbieten** Claim-Rewrite und Content-Paraphrase (CONSENSUS ADR, Skills).
- Sonst: SoT-Chaos, stille Verfälschung klinischer Aussagen, Vermischung Q2 und Q3.
- Layout-Repo darf **kein** Autoren-Workspace werden (`PRODUCT-BOUNDARIES`).

---

## 3. Product & repo placement (split-ready)

### 3.1 Produktzuordnung

| ID | Produkt | Dieser Track |
|---|---|---|
| **C** | Content-Werk (Autor, Review, Freeze, Proof, Imprimatur) | **Owner der Reife-Schleife** |
| **B** | Domain-Media | **Konsument** des Freeze; fragt Autor nur gezielt; ändert keinen Body |
| **A** | Layout-Plattform | **Minimale Gates** (optional enforce `content_status`, revision pins); **kein** Content-SoT |

### 3.2 Transitional home (dieses Monorepo — nur Vorbereitung)

Alles **Prozess** (Skills, Templates, Checklisten, synthetische Fixtures, Specs) lebt **übergangsweise** unter:

```text
domains/content-maturity/          # Produkt-C-Prozess, NICHT Kapitel-SoT
  OWNERSHIP.md
  README.md
  skill/
    content-review/                # Haupt-Skill
  templates/
    review-report.template.md      # MVP
    freeze-record.template.md      # MVP (Human sign)
    proof-record.template.md       # MVP (Human fill)
    scope-brief.template.md        # optional C0
    content-patch.template.md      # stub / v0.4
    imprimatur.template.md         # stub / v0.4
  checklists/
    core/                          # MVP
      developmental-edit.md
      claims-audit.md
      safety-flags.md              # flag/ask only — no guideline invention
      freeze-gate.md
      proof-gate.md
      language-proof.md            # v0.4
    profiles/
      medical/                     # mostly v0.4; DEFERRED.md ok in MVP
        pedagogical-review.md
        clinical-risk-scan.md
        genre-hooks.md             # v0.4 — avoid early B coupling
  fixtures/                        # synthetisch, anonym, keine Kursbuch-SoT-Kopie
  examples/                        # Gold-Review-Reports an Fixtures
```

**Verboten in diesem Tree:** echte Kursbuch-Kapitel als Source of Truth, Patienten-identifizierende Daten,
dauerhafte Spiegelung externer Content-Repos.

### 3.3 Ziel-Heimat nach Split

| Artefaktklasse | Ziel-Repo |
|---|---|
| Skill `content-review`, Templates, Freeze/Proof/Imprimatur | **C** (Content-Werk, z. B. Kursbuch-Repo) |
| Checklists `core/*` | **C** (generisch) oder shared „editorial-kit“ falls mehrere Werke |
| Checklists `profiles/medical/*` | **C** (wenn nur ein med. Werk) **oder** dünnes Profil-Paket neben B — **nicht** in `packages/bookkit` |
| Synthetische Fixtures | C CI / dieses Track bis Split; nie Produktionstext |
| A-seitige Enforce-Hooks | bleiben in **A** (`toolset/compose` CLI flags, Skill-Notes) |
| B-seitige Gate-Notes | bleiben in **B** (`media-brief`: Production braucht Freeze) |

### 3.4 Split-Trigger (wann raus aus A-Repo)

Mindestens **eines**:

1. Content-Review-Skill + Templates sind stabil und in **≥1 echten C-Repo-Pilot** genutzt, **oder**
2. Zweites Content-Werk startet und soll denselben Prozess nutzen, **oder**
3. Layout-Releases werden durch Content-Review-Noise blockiert, **oder**
4. Human entscheidet „C-Prozess ist reif“ nach Phase-DoD dieses Tracks.

**Methode:** Ordnergrenze einhalten → `git subtree split` / history-sparse / manuelles Kopieren des
`domains/content-maturity/`-Trees nach C + Entfernen aus A + Verweise in CONSENSUS/PRODUCT-BOUNDARIES aktualisieren.

### 3.5 Multi-root Workspace (UX only)

Empfohlen später:

```text
workspaces/kursbuch-full.code-workspace
  - A: Book-Layouting-Typst
  - B: domains/medical (oder gesplittetes Media-Repo)
  - C: Kursbuch / Content-Werk
```

Kein viertes Produkt; keine Business-Logik in der Workspace-Datei.

---

## 4. Role model (compressed publishing)

### 4.1 Rollen

| Rolle | Primär Human/Agent | Produkt | Tut | Tut nicht |
|---|---|---|---|---|
| **Autor** | Human (+ optionale Schreibhilfe) | C | MD + Critical Claims verantworten; Review-Findings mergen | Layout, Katalog, stille Agent-SoT-Edits ohne Gate |
| **Content-Review** | Agent **vorbereitend**, Human bei `block` | C | Q1/Q2-Scan; Review-Report; Patch-**Vorschläge**; Gate-Empfehlung | Production-`.typ`; Claims still überschreiben; Media-Ideal ersetzen |
| **Media** | Agent | B | Darstellungsideal, Accept (Q3) | Body/Claims ändern; Lektorat ersetzen |
| **Tech** | Agent | A | Feasibility, Spike, Compose, Validate | Content „verbessern“; Didaktik-Ideal erfinden wenn Brief da |
| **Validator** | Maschine | A | Whitelist, claims strict, compile | redaktionell heilen |
| **Imprimatur** | **nur Human** | C (+ ggf. Verlag) | Druck-/Release-Freigabe | Agent-Autopilot |

### 4.2 Mapping Verlag → agentisch

| Verlag | Agentische Form |
|---|---|
| Entwicklungslektorat | Content-Review Checklist `developmental-edit` + `pedagogical-review` |
| Fachgutachten | `clinical-risk-scan` Findings mit Severity; Human sign-off bei `block` |
| Korrektorat | `language-proof` (Phase später priorisierbar) |
| Redaktionsschluss | **Content-Freeze** Record |
| Fahnen / Autorenkorrektur | **Proof** Record gegen PDF + Diff-Hilfen |
| Imprimatur | **Imprimatur** Record (Human-only) |
| Mediendesign / Satz | unverändert B/A |

---

## 5. End-to-end flow (target)

```text
[C0] Scope / Auftrag (optional, leicht)
        │
        ▼
[C1] Autor-Draft  (content_status: draft)
        │
        ▼
[C2] Content-Review  (content_status: review)
        │  Agent: Review-Report + optionale Patches
        │  Autor: merge / reject findings
        │  max n Runden → dann Human
        ▼
[C3] Content-Freeze  (content_status: frozen + content_revision)
        │  Claims + Body-Revision stabil
        │
        ├──────────────────────────────────────────────┐
        ▼                                              │
[B]  Media Brief (Production-Qualität)                 │
        │                                              │
        ▼                                              │
[A]  Feasibility ↔ Spike → [B] Accept                  │
        │                                              │
        ▼                                              │
[A]  Compose → Validate → PDF                          │
        │                                              │
        ▼                                              │
[C4] Proof am Umbruch  (content_status: proofed)  ◄────┘
        │  Claims-strict (Maschine) + redaktionelle Checkliste + Autor
        ▼
[C5] Imprimatur (Human)  →  Prepress/Print (A)
```

### 5.1 Parallelisierung (erlaubt vs. verboten)

| Parallel | Erlaubt? | Bedingung |
|---|---|---|
| Draft-Media-Brief während `draft`/`review` | ja | **nur** Exploration; **kein** Production-Accept/Compose-Qualitätsanspruch |
| Production Media Brief | nein vor Freeze | braucht `frozen` + revision pin |
| Compose Production | nein vor Media-Accept | wie CONSENSUS v0.2; **plus** ideally Freeze |
| Spike | ja auf Draft-Content | Spike nicht als Production-SoT; Content kann sich noch ändern |
| Imprimatur vor Validate-grün | nein | Maschine zuerst, dann Human |

### 5.2 Iterationsregeln

| Schleife | Max (v0.3 Default) | Abbruch |
|---|---|---|
| Content-Review ↔ Autor (C2) | **2** volle Runden | Human-Entscheidung (ship freezes with known nits / rewrite / escalate) |
| Media ↔ Tech | **2** (unverändert v0.1) | Human |
| Media ↔ Autor | Human, gezielt | kein Agent-Dauerchat |
| Compose → Validate fail | **kein** Auto-Heal | bewusst neuer Lauf |
| Proof ↔ Autor | **1–2** Runden | Human / Imprimatur delayed |

---

## 6. Quality axes & severity

### 6.1 Achsen

| ID | Name | Frage | Primär-Checklisten |
|---|---|---|---|
| **Q1** | Fach / Safety | Stimmt es? Ist es sicher genug für den Kontext? | `clinical-risk-scan` |
| **Q2** | Lern- & Textqualität | Lernt/handelt man gut damit? Struktur, Klarheit, Load | `developmental-edit`, `pedagogical-review` |
| **Q3** | Darstellung / Satz | Wie auf der Seite? | **nicht** dieser Track (B/A) |

### 6.2 Finding severity

| Severity | Bedeutung | Gate-Wirkung |
|---|---|---|
| `block` | Freeze / Production-Compose / Imprimatur **nicht** empfohlen | hält C3 bzw. C5 |
| `should` | stark empfohlen vor Freeze | Freeze nur mit Human-Override + Begründung |
| `nit` | kosmetisch / nice-to-have | hält **nicht**; sammeln |

### 6.3 Finding taxonomy (tags)

Jeder Finding-Eintrag trägt **mindestens ein Tag**:

`fach` · `didaktik` · `struktur` · `sprache` · `konsistenz` · `claims` · `rechte` · `safety` · `quellen` · `scope`

---

## 7. Content status machine

Canonical field: `content_status` (YAML frontmatter und/oder Freeze-Record).

| Status | Bedeutung | Media Production | Compose Production | Print |
|---|---|---|---|---|
| `draft` | Arbeitstext | nur Exploration-Brief | nein (außer EXCEPTION) | nein |
| `review` | C2 läuft | Exploration ok | nein | nein |
| `frozen` | C3: Revision fest für B/A-Lauf | **ja** | ja nach Accept | nein bis proof/imprimatur policy |
| `proofed` | C4 am Umbruch erledigt | — | — | bereit für Imprimatur |
| `released` / `imprinted` | C5 Human-Freigabe | — | — | ja |
| `superseded` | neuere Revision existiert | alte Pins invalid | invalid | invalid |

### 7.1 Content revision (binding — D2)

Production pins **must** use content-addressed forms only:

| Form | Example | When |
|---|---|---|
| `git:<short-hash>` | `git:a1b2c3d` | C content file is in a git repo (preferred) |
| `sha256:<hex>` | `sha256:e3b0c44…` | Non-git SoT (export, Word→MD); hash of **pinned file bytes** |

**Invalid for production pins:** bare dates (`YYYYMMDD`), free-floating semver without hash, “latest”.

- Jede Freeze setzt genau eine `content_revision` in valid form.
- Media Brief, Feasibility, Accept, `chapter.typ` Header **pinnen** `content_path` + `content_revision`.
- Validator A: **`--profile production`** → hard fail if freeze missing or pin mismatch; **`--profile smoke`** → freeze not required (D3).
- Residual risk: sha256 breaks on whitespace re-export → C should normalize before hash (v0.4 harden).

---

## 8. Artifact contracts

Alle Artefakte: **Markdown** (YAML-Frontmatter optional), menschen- und agentenlesbar.
**Kein** YAML→Assembler für Layout. **Keine** automatische Claim-Mutation.

### 8.1 Scope Brief (C0, optional)

| Feld | Pflicht | Inhalt |
|---|---|---|
| `work_id` / `chapter_id` | ja | Identität |
| Zielgruppe, Lern-/Handlungsziel | ja | Scope |
| Genre-Hinweis | optional | z. B. notfall-karte |
| Out-of-scope | ja | was nicht geliefert wird |
| Deadline / Priorität | optional | Steuerung |

### 8.2 Content (C1) — extern SoT

Unverändert Produkt C:

- Kapitel-Markdown
- Critical Claims Sektion (prüfbare Aussagen)
- Meta (Titel, IDs, Quellen nach C-Konvention)

Dieser Track definiert **Konventionen** (Claims-Header-Namen, Status-Frontmatter), **nicht** die Fachinhalte.

### 8.3 Review Report (C2) — Owner Content-Review

Template: `review-report.template.md`

| Abschnitt | Inhalt |
|---|---|
| Meta | `chapter_id`, `content_path`, `content_revision_reviewed`, `profile` (core / medical), `reviewer` (agent id), `date`, `round` |
| Summary | 3–8 Sätze; ready-for-freeze? `yes` / `no` / `yes_with_nits` |
| Counts | n block / should / nit by tag |
| Findings[] | id, severity, tags[], location (heading/anchor), observation, recommendation, optional patch_ref |
| Claims audit | fehlende / unprüfbare / weiche Claims; Vorschläge **als Text**, Merge nur Autor |
| Open questions for author | gezielte Liste |
| Explicit non-actions | was Review **nicht** getan hat (kein Layout, keine Leitlinien-Erfindung) |

### 8.4 Content Patch (C2) — **deferred v0.4**

Template may exist as stub. **Not** MVP exit criteria.

- Vorschlag **unified-diff-ähnlich** oder Before/After-Blöcke pro Finding.
- Status pro Patch: `proposed` | `accepted_by_author` | `rejected` | `deferred`.
- **Agent merged nie still** in die SoT; Apply nur nach Autor/Human-Policy in C-Repo.

### 8.5 Freeze Record (C3) — **Human sign-off mandatory** (D1)

Template: `freeze-record.template.md`

| Feld | Pflicht |
|---|---|
| `content_status: frozen` | ja |
| `content_revision` | ja (`git:…` or `sha256:…` only) |
| `content_path` | ja |
| Review report path(s) | ja |
| Agent `ready_for_freeze` | yes/no (recommendation only) |
| Open `should`/`nit` accepted? | ja (Liste oder „none“) |
| `block` remaining | muss **0** sein (sonst kein Freeze) |
| **Freezer (Human name + date)** | **ja — never agent-only** |
| Notes | optional |

### 8.6 Proof Record (C4) — MVP = **Human-only** (D5)

Template: `proof-record.template.md` (short checklist).

| Input | Quelle | MVP |
|---|---|---|
| PDF path | A compose output | yes |
| content_revision pin | Freeze | yes |
| Machine: claims check | Validator production report path | yes (link only) |
| Checklist | human checkboxes | **Human fills** |
| Agent PDF vision / auto-triage | — | **out of MVP** |

Outcome: `content_status → proofed` or return with reasons.

**Triage-Regel (Human in MVP):**

| Problem am PDF | Route |
|---|---|
| Claim/Body falsch im **Manuskript** | zurück C2/C3 (Content) |
| Claim ok, **Satz/Form** falsch | Media revise oder Tech recompose (B/A) — **kein** Content-Rewrite |
| Unklar | Human |

### 8.7 Imprimatur Record (C5) — **deferred v0.4 as hard gate** (D6)

Long-term: Human-only release stamp. **MVP** may ship a stub template for forward-compat; **MVP production handoff** is:

`frozen` + Media Accept (production) + validate `--profile production` green (+ recommended human proof).

Template (v0.4): `imprimatur.template.md` — Freeze pin match, Accept, validate green, proof ok, zero `block`, Human name.

---

## 9. Skill: `content-review`

### 9.1 Placement

| Phase | Pfad |
|---|---|
| Transitional | `domains/content-maturity/skill/content-review/SKILL.md` |
| Discovery (A-Repo only, symlinks) | `.github/skills/content-review` → domain path (wie media-brief) |
| Nach Split | SoT in **C-Repo**; A behält höchstens einen **Stub** „Content-Review lives in C“ |

### 9.2 When to use

- Manuskript vor Media-Production reviewen
- Freeze-Empfehlung aussprechen
- Patch-Vorschläge erzeugen
- (Optional later) Proof-Checkliste am PDF unterstützen — **nicht** Layout redesignen

### 9.3 When NOT to use

| Situation | Stattdessen |
|---|---|
| Media Brief / Accept | `media-brief` (B) |
| Feasibility / Compose / Validate | `compose-chapter` (A) |
| bookkit API | `bookkit` |
| Claims still in `.typ` umschreiben | verboten — Autor + Review-Patches in C |
| Layout-Monotonie beheben | Media/Tech |

### 9.4 Process (normativ)

1. Inputs laden: Content path, optional Genre, optional profile (`medical`), optional prior review round.
2. **Nicht** zuerst Katalog/Forms denken.
3. Checklisten der Reihe nach (core → profile).
4. Findings mit severity + tags schreiben.
5. Claims-Sektion separat auditen (Vollständigkeit, Prüfbarkeit) — Textvorschläge, kein silent edit.
6. Optional Patches für `block`/`should`.
7. Summary + `ready_for_freeze` recommendation.
8. Artefakt speichern; Chat ohne Datei = unvollständig.
9. Runde zählen; bei Round > max → Human.

### 9.5 ALWAYS / NEVER

| ALWAYS | NEVER |
|---|---|
| Review-Report als Datei | Production-`.typ` schreiben |
| Severity + Location + Recommendation | Critical Claims still mutieren |
| Profile deklarieren | Layout-Form-IDs als Lektorat ausgeben |
| Offene Fachfragen an Autor | Leitlinien/Dosierungen erfinden und als Fakt setzen |
| Q1/Q2 von Q3 trennen | Media-Brief ersetzen |
| Bei `block`: Freeze verweigern | Auto-Heal-Loops über Compose |

---

## 10. Checklists (normative outline)

Ausführliche Checkbox-Texte entstehen in Phase 1–2 der Implementierung; Spec fixiert **Pflichtthemen**.

### 10.1 `core/developmental-edit.md`

- Zielgruppe und Auftrag (C0) abgedeckt?
- Roter Faden / Abschnittsreihenfolge
- Redundanz, Widersprüche intern
- Abschnittslänge / Cognitive Load (qualitativ)
- Überschriften-Hierarchie sinnvoll
- Definitionen vor Gebrauch
- „Ein Gedanke pro Block“ wo sinnvoll
- Call-to-action / Takeaway am Kapitelende (werkabhängig)

### 10.2 `core/language-proof.md` (Phase 2+ priorisierbar)

- Orthografie/Interpunktion (DE)
- Terminologie-Konsistenz
- Abkürzungen eingeführt
- Ton: professionell, werk-konform
- Inklusive / klare Sprache (Policy C)

### 10.3 `profiles/medical/pedagogical-review.md`

- Lern-/Handlungsziele vs. Textabdeckung
- Progressive Disclosure (was zuerst, was Vertiefung)
- Genre-Funktionen **inhaltlich** (Verweis B-Rezept als Function-Checklist, **nicht** Form-IDs):
  - z. B. Notfallkarte: Gatekeeper → Erkennen → Handeln → Maßnahmen → Links de-emphasized
- Transfer / Anwendung vs. reines deklaratives Wissen
- Merkhilfen nur wenn didaktisch sinnvoll (kein Gimmick-Zwang)
- Prüfungstauglichkeit wo Werk es verlangt
- Stress-/Zeitdruck-Szenarien (Notfall-Genres): „30-Sekunden-Nutzbarkeit“

### 10.4 `profiles/medical/clinical-risk-scan.md`

- Absolute Formulierungen („immer/nie“) markieren
- Algorithmus-Reihenfolge / ABCDE etc. konsistent?
- Kontraindikationen / Red Flags erwähnt wenn Thema es verlangt
- Dosierungen: nur wenn im SoT; **nie** Agent-erfundene Dosis
- Differenzialdiagnose-Fallen
- Quellen-/Leitlinien-Bezug: Lücken als **Fragen**, nicht Fake-Zitation
- Safety-critical Claims in Critical-Claims-Sektion?
- Off-label / rechtliche Grauzonen → Human

### 10.5 `profiles/medical/genre-hooks.md`

Mapping-Tabelle: Genre-Rezept (B) Function-ID → **inhaltliche** Prüffrage (C).  
Kein bookkit, keine form_ids als Review-Output.

### 10.6 Gates

- `freeze-gate.md` — ableitbar aus Statusmaschine §7  
- `proof-gate.md` — PDF vs. Content, Kästen, Reihenfolge, Legenden, offene approx  
- `imprimatur-gate.md` — §8.7 Checkboxen  

---

## 11. Interfaces to A and B (coupling contracts)

### 11.1 → Media (B)

| Contract | Detail |
|---|---|
| Input to Production Brief | `content_status == frozen` + `content_revision` |
| Brief meta fields | `content_source`, `content_status`, `content_revision` (erweitern) |
| Author questions | bleiben; Content-Review **ersetzt** sie nicht für Darstellungsfragen |
| Exploration Brief | darf auf `draft`/`review` — markiert `brief_class: exploration` |

Skill-Delta (B): `media-brief` dokumentiert Production vs Exploration; Accept für Production prüft Freeze-Pin.

### 11.2 → Tech / Validator (A)

| Contract | Detail |
|---|---|
| Compose header pins | `content:` path + `content_revision:` (`git:…` or `sha256:…`) |
| Validate profiles (D3) | `--profile smoke` — freeze not required; `--profile production` — hard freeze + pin match |
| Claims check | unverändert strict; Review verbessert Claims **in C vor Freeze** |
| EXCEPTION_NO_BRIEF | remains smoke/platform only |
| Keine Content-Review-Engine in A | A bleibt domain-agnostisch; no medical checklists in validate |

### 11.3 ← Proof feedback

Proof-Record triagiert zurück nach C vs. B/A (§8.6).

### 11.4 Version pins (full production set)

```text
content_revision     (C freeze)
catalog_version      (A form-catalog)
bookkit_version      (A)
brief_path + accept  (B)
```

---

## 12. Alignment with existing ADRs

### 12.1 Retained from CONSENSUS v0–v0.2

- No YAML-Assembler primary  
- No auto-heal compose loops  
- No content SoT in A  
- Explore-then-constrain for **Media** (Q3)  
- Claims copy-through in compose  
- Product A/B/C boundaries  

### 12.2 Proposed ADR additions (v0.3 MVP — land in CONSENSUS when accepted)

27. **Content-Review is a first-class role** (C), separate from Media and Tech.  
28. **Content-Freeze is Human-only**; agent may recommend `ready_for_freeze` only (D1).  
29. **Production Media Brief + production compose/validate** require freeze + valid `content_revision` pin; smoke profile exempt (D3, D9).  
30. **`content_revision`** must be `git:<short>` or `sha256:<filehash>`; date pins invalid (D2).  
31. **Content-maturity process** lives transitional under `domains/content-maturity/`; split to C on trigger (D10).  
32. **Q1/Q2 checklists never live in `packages/bookkit` foundation.**  
33. **MVP proof** is human checklist only; agent PDF vision deferred (D5).  
34. **MVP review depth** is core + claims audit + safety-flags; full medical profile deferred (D4).  
35. **Imprimatur hard gate** deferred to v0.4; Media Accept ≠ print release authority (D6).  
36. **C2 circuit breaker:** max 2 rounds then Human triage (D8).

---

## 13. Scope

### In

- Spec + plan + phases for the full C0–C5 loop  
- Transitional tree under `domains/content-maturity/`  
- Skill `content-review` + templates + checklists (core + medical profile)  
- Synthetic fixtures + ≥1 gold review example  
- CONSENSUS/PRODUCT-BOUNDARIES/ROLES/AGENTS deltas (process only)  
- Minimal A/B skill/CLI **hooks** (gates, pins, docs) — no content engine in A  
- Split-readiness checklist + migration notes  
- Optional pilot: **read-only** external content path → review artifacts written under transitional tree or pilot folder **without** claiming C SoT  

### Out

- Autoren von Fachkapiteln ersetzen / Kursbuch-Inhalte hier pflegen  
- Automatisches Merge von Patches in externe Repos ohne Policy  
- Ersetzen von Media-Brief oder Compose  
- YAML layout assembler / auto-heal  
- Marketing, Vertrieb, Rechteverwaltung als Vollprodukt (nur Tag `rechte` als Finding-Hinweis)  
- Sofortiges Anlegen des C-Git-Remotes (kann parallel, nicht Track-Pflicht)  
- Juristische Freigabeprozesse jenseits Imprimatur-Checkbox  
- Bildrechte-Vollworkflow (nur Findings/Fragen)  

---

## 14. Acceptance criteria

### 14.1 MVP v0.3 (track primary exit)

1. Spec + plan + decisions.md accepted; Gemini review linked.  
2. `domains/content-maturity/` with OWNERSHIP, MVP templates, core checklists (developmental-edit, claims-audit, safety-flags, freeze-gate, proof-gate).  
3. Skill `content-review` produces Review-Report from synthetic fixture.  
4. Gold: fixture → Review-Report → Freeze-Record (Human fields); **no** invented guidelines in gold report (Human spot-check).  
5. CONSENSUS v0.3 MVP ADRs 27–36 documented.  
6. `media-brief` + `compose-chapter` document freeze pins + `brief_class`.  
7. A validate **`--profile production`** hard freeze+pin (preferred implemented; smoke exempt).  
8. Split checklist / migration notes credible for process tree.  
9. No Kursbuch-MD SoT under packages/src/content-maturity.  
10. v0.4 backlog explicit (medical full, imprimatur hard, patches, language, genre-hooks, agent PDF).  
11. Harvest list before archive.

### 14.2 Full target (v0.4+, not required for MVP archive)

C5 imprimatur hard gate; full medical profiles; patch pipeline; language-proof; genre-hooks; agent-assisted proof with safe triage rules.  

---

## 15. Risks & mitigations

| Risk | Mitigation |
|---|---|
| Content-Review wird zweites Media | Skill boundary table; forbid form_ids as primary output |
| Agent erfindet Klinik | clinical-risk: questions only; block on invented doses |
| Freeze wird übersprungen | A/B production gates; EXCEPTION only smoke |
| SoT sickert ins Layout-Repo | OWNERSHIP + review gate; fixtures only |
| Scope creep (Voll-Lektorat-KI) | severity + round caps; Human for blocks |
| Zu frühe Kopplung an Kursbuch-Pfade | fixtures; CLI paths caller-supplied |
| Double work Review vs Media author Qs | Review = Q1/Q2; Media Qs = Darstellung/Inhalt nur wenn Brief blockiert |
| Split nie ausgeführt | triggers + checklist in plan; archive blocked until harvest **or** explicit „stays transitional“ Human note |

---

## 16. Success metrics (pilot)

| Metric | Target |
|---|---|
| Review-Report completeness | all template sections filled on gold fixture |
| Block hygiene | zero silent freezes with open `block` |
| Axis separation | ≥90% findings tagged; no finding that is pure Q3 layout |
| Freeze→Brief pin | production brief meta includes content_revision |
| Round discipline | ≤2 C2 rounds before Human on pilot |
| Split readiness | OWNERSHIP + no imports from packages/bookkit in C-process tree |

---

## 17. Related paths

| Resource | Path |
|---|---|
| Consensus | `devtracks/CONSENSUS-v0.md` |
| Boundaries | `devtracks/PRODUCT-BOUNDARIES.md` |
| Roles short | `devtracks/ROLES-AND-FLOW.md` |
| Media skill | `domains/medical/skill/media-brief/` |
| Compose skill | `toolset/skill-pack/compose-chapter/` |
| Medical recipes (function checklists for Q3; hooks for Q2) | `domains/medical/recipes/` |
| Archived media/compose tracks | `devtracks/_archive/media-design/`, `compose-pipeline/` |

---

## 18. Open questions

**Resolved for MVP** → [`decisions.md`](decisions.md).

**Still Human (non-blocking):**

1. Name of `CONTENT_WORK_REPO` for split.  
2. Whether multi-work shared editorial-kit is extracted later (vs. kit lives only in one C repo).
