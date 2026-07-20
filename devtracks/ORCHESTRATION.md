# Implementation Orchestration — offene Devtracks bis Workflow-vollständig

**Zweck:** Steuerungsgrundlage für einen **Orchestrator-Agenten** (oder Menschen in derselben Rolle), der die offenen Devtracks und den **Publishing-Roles-Workflow (CONSENSUS v0.2)** bis zur Abnahme umsetzt.

**Status:** **complete** (2026-07-20) — Waves 0–5 exited; E1–E12 met (Phase 3 split deferred).  
Board: [`_orchestration/board.md`](_orchestration/board.md).  
**Nicht:** selbst die Feature-Implementierung — nur Reihenfolge, Kontexte, Subagents, Reviews, Exit-Kriterien.

---

## 1. Zielzustand („fertig“)

Der Orchestrator stoppt erst, wenn **alle** gelten:

| # | Exit-Kriterium |
|---|---|
| E1 | `toolset/form-catalog/core/forms.yaml` ≥12 `stable` Forms, vollständig gemappt; `VERSION` gesetzt |
| E2 | Genre-Rezept `notfall-karte` final + Validator-Minima angebunden |
| E3 | Skill `media-brief` + mind. 1 Gold-Brief (III-5) unter `domains/medical/` |
| E4 | Skill `compose-chapter` + Feasibility-Flow dokumentiert/templates genutzt |
| E5 | Validator unter `toolset/compose/validate/` (whitelist, claims, compile, post-hoc intent, accept-gate) |
| E6 | Durable Tests grün (fixtures, kein Live-Kursbuch nötig für Unit-Pfad) |
| E7 | **E2E-Pilot:** Content (C, read-only) → Brief → Feasibility → Accept → Compose → Validate → PDF |
| E8 | Side-by-side vs. Legacy-Converter (`pilots/kursbuch-welle-03`) dokumentiert |
| E9 | Product boundaries eingehalten (kein Content-SoT in A; Medizin unter `domains/medical/`) |
| E10 | platform-boundaries Phase 1+2 erledigt; Phase 3 Split **nur** bei Trigger (sonst deferred + Begründung) |
| E11 | Governance aktuell (AGENTS/CLAUDE/README tracks); Harvest-Footer wo Tracks closable |
| E12 | Mind. **2 unabhängige Reviews** (s. §6) ohne offene Blocker-P0 |

Governance-Quellen (immer gültig):

- [`CONSENSUS-v0.md`](CONSENSUS-v0.md)  
- [`PRODUCT-BOUNDARIES.md`](PRODUCT-BOUNDARIES.md)  
- [`ROLES-AND-FLOW.md`](ROLES-AND-FLOW.md)  

---

## 2. Offene Tracks & Abhängigkeitsgraph

```text
                    ┌─────────────────────────┐
                    │ platform-boundaries     │
                    │ (Discipline parallel)   │
                    └───────────┬─────────────┘
                                │ constrains paths
        ┌───────────────────────┼───────────────────────┐
        ▼                       ▼                       ▼
┌───────────────┐     ┌─────────────────┐     ┌──────────────────┐
│ form-catalog  │     │ media-design    │     │ compose-pipeline │
│ (A core)      │     │ (B domain)      │     │ (A engine)       │
└───────┬───────┘     └────────┬────────┘     └────────┬─────────┘
        │                      │                       │
        │    recipes/minima    │  brief+accept         │
        └──────────►───────────┴──────────►────────────┘
                         E2E pilot (needs all three)
```

| Track | Produkt | Blockiert durch | Parallel ok mit |
|---|---|---|---|
| **platform-boundaries** | meta | — (Phase 0 done) | allem (als Review-Disziplin) |
| **form-catalog** | A | — | media-design Phase 1 (templates/brief) |
| **media-design** | B | form-catalog recipe minima *hilfreich*, nicht hard-block für Draft-Brief | form-catalog Phase 1 |
| **compose-pipeline** | A | form-catalog seed (exists); full E2E needs media gold-brief + accept | validator scaffold parallel |

**Superseded — nicht implementieren:**  
`presentation-pipeline/`, `didactic-media/`, `plan-driven-layout/` (nur Provenienz).

---

## 3. Optimale Implementierungsreihenfolge (Waves)

Orchestrator arbeitet **wave-weise**. Innerhalb einer Wave: parallele Subagents wo unabhängig; **Review-Gate** vor Wave-Ende.

### Wave 0 — Orient & freeze scope (Orchestrator only)

**Dauer:** kurz  
**Kein Code außer Checklisten-Updates.**

1. Dieses Dokument + CONSENSUS + PRODUCT-BOUNDARIES + die 4 Track-`plan.md` lesen.  
2. Arbeitsboard anlegen (Todo): Waves 1–5, E1–E12.  
3. Explizit **nicht** starten: Repo-Split (Phase 3), Auto-heal-Loops, YAML-Assembler, Content-Kopien nach `src/`.  
4. Verify Scaffold existiert (`toolset/form-catalog/core/forms.yaml`, `domains/medical/`, `toolset/compose/`).

**Exit Wave 0:** Board + „out of scope“ Liste notiert.

---

### Wave 1 — Form Catalog Core (Foundation der Whitelist)

**Primary track:** `form-catalog` Phase 1 (+ Anfang Phase 2)  
**Parallel:** platform-boundaries Review-Disziplin (kein Feature-Code nötig)

| Step | Subagent-Typ | Aufgabe | Context pack (§5) |
|---|---|---|---|
| 1.1 | **catalog-curator** | bookkit + bookkit-didactics Public-APIs inventarisieren; `forms.yaml` auf ≥12 stable + mappings | CP-CATALOG |
| 1.2 | **catalog-curator** | `planned` (z. B. protocol-steps); BASIS.md final; VERSION bump policy | CP-CATALOG |
| 1.3 | **domain-recipe** | `domains/medical/recipes/notfall-karte.md` + optional minima.yaml für Validator | CP-DOMAIN |
| 1.4 | **reviewer** | Review: nur stable mit existierender API; keine Kursbuch-Pfade in core; Medizin-Rezepte nur unter domains/ | CP-REVIEW-BOUNDARIES |

**Exit Wave 1:** E1 teilweise/ganz; E2 Rezept Datei abnahmefähig; Review 1.4 ohne P0.

**Tests:** Schema-Sanity (YAML parse, every stable has `api`+`package`); optional script `toolset/form-catalog/scripts/check_forms.py` wenn sinnvoll.

---

### Wave 2 — Media Design (freier Brief + Skill)

**Primary:** `media-design`  
**Depends:** Wave 1 recipe vorhanden (Brief kann Draft parallel starten, Accept erst nach 1.3)

| Step | Subagent-Typ | Aufgabe | Context pack |
|---|---|---|---|
| 2.1 | **media-designer** | Templates final; Gold-Brief III-5 unter `domains/medical/briefs/` (frei, wishlist erlaubt) | CP-MEDIA |
| 2.2 | **media-designer** | Optional Gold-Brief III-2; Accept-Record-Beispiel (auch fictive feasibility ok) | CP-MEDIA |
| 2.3 | **skill-author** | Skill `media-brief` (SoT domain-owned; provision Symlinks) | CP-SKILL-MEDIA |
| 2.4 | **reviewer** | Review: kein Typst im Brief; Claims unangetastet; Pfade nur domains/medical; Abgrenzung compose | CP-REVIEW-MEDIA |

**Exit Wave 2:** E3; Review 2.4 grün.

**Nicht:** Production-`.typ` in diesem Wave.

---

### Wave 3 — Compose Engine + Validator

**Primary:** `compose-pipeline` Phase 1–2  
**Depends:** Wave 1 forms.yaml shape; Content fixtures (synthetic) für Tests

| Step | Subagent-Typ | Aufgabe | Context pack |
|---|---|---|---|
| 3.1 | **validator-engineer** | `toolset/compose/validate/`: whitelist parse, genre minima hook, claims strict, soft body, compile, post-hoc intent, accept-gate | CP-COMPOSE |
| 3.2 | **test-engineer** | Fixtures pass/fail; durable tests; **keine** hardcodierte Kursbuch-Absolute im Engine-Core | CP-COMPOSE-TEST |
| 3.3 | **skill-author** | Skill `compose-chapter` + Feasibility procedures; pin catalog VERSION in headers | CP-SKILL-COMPOSE |
| 3.4 | **reviewer** | Review: domain-agnostic engine; EXCEPTION_NO_BRIEF only smoke; no auto-heal; product boundaries | CP-REVIEW-COMPOSE |

**Exit Wave 3:** E4, E5, E6; Review 3.4 grün.

**Parallel möglich:** 3.1/3.2 nach Wave 1; 3.3 nach 3.1 API stabil.

---

### Wave 4 — E2E Pilot (voller Workflow)

**Primary:** Integration aller Tracks  
**Depends:** Waves 1–3

| Step | Subagent-Typ | Aufgabe | Context pack |
|---|---|---|---|
| 4.1 | **tech-feasibility** | Feasibility note zu Gold-Brief III-5 (mapped/approx/gap/experiment) | CP-E2E-TECH |
| 4.2 | **media-designer** | Accept-Record (oder revise→max 2 Runden mit tech) | CP-E2E-MEDIA |
| 4.3 | **composer** | Compose `.typ` aus MD (C read-only path) + brief + feasibility; nur catalog forms | CP-E2E-COMPOSE |
| 4.4 | **validator-engineer** | Validate + PDF; fix **nur** validator/composer bugs (kein claim rewrite) | CP-E2E-COMPOSE |
| 4.5 | **pilot-reporter** | Report: metrics E7/E8, form diversity vs legacy, gaps filed | CP-E2E-REPORT |
| 4.6 | **reviewer** (integration) | Full-path review + boundaries + CONSENSUS compliance | CP-REVIEW-E2E |

**Exit Wave 4:** E7, E8; optional second chapter III-2 if time; Review 4.6 ohne P0.

**Iteration:** Media↔Tech max 2 Runden (CONSENSUS); dann Human-Flag an Orchestrator.

---

### Wave 5 — Platform finish, docs, harvest readiness

| Step | Subagent-Typ | Aufgabe | Context pack |
|---|---|---|---|
| 5.1 | **docs-engineer** | README „Using platform from another repo“; pin policy; pilots consumer note | CP-DOCS |
| 5.2 | **boundaries-auditor** | platform-boundaries Phase 1+2 abhaken; Phase 3 deferred+reason unless trigger | CP-REVIEW-BOUNDARIES |
| 5.3 | **reviewer** (final) | E1–E12 checklist; P0/P1 triage | CP-REVIEW-FINAL |
| 5.4 | **orchestrator** | Track plans checkboxes; harvest footers if closing; summary for user | — |

**Exit Wave 5:** E9–E12; Orchestration complete.

---

## 4. Orchestrator-Protokoll

### 4.1 Verantwortlichkeiten

Der Orchestrator:

1. **Plant** die nächste Wave und wählt Subagent-Typen.  
2. **Schreibt Context Packs** (kurz, vollständig, keine unnötigen Mega-Dateien).  
3. **Startet Subagents** (parallel nur wenn graph-unabhängig).  
4. **Integriert** Ergebnisse (keine widersprüchlichen Pfade).  
5. **Triggert Reviews** vor Wave-Exit.  
6. **Stoppt** bei P0-Blockern; eskaliert an Human wenn Media↔Tech > max Runden oder Claim-Konflikt.  
7. **Hält** product boundaries heilig.

Der Orchestrator **implementiert nicht** große Feature-Blöcke selbst, außer trivialen Fixes nach Review (< ~20 Zeilen) oder Wave-0-Docs.

### 4.2 Subagent-Lebenszyklus

```text
Orchestrator
  → spawn(subagent_type, context_pack, acceptance_for_this_step)
  → collect artifact paths + summary
  → if fail: one focused rework spawn (same type) OR re-scope
  → spawn reviewer with DIFF + acceptance
  → merge or rework
  → update board / plan.md checkboxes
```

### 4.3 Parallelisierung

| Parallel | Seriell |
|---|---|
| catalog-curator ‖ media-designer (draft brief) | E2E nach Engine |
| validator-engineer ‖ domain-recipe (nach forms seed) | Accept vor Production compose |
| test-engineer nach validate API freeze | Final review nach E2E |

### 4.4 Verbotene Orchestrator-Muster

- Ein Subagent „bau alles“ ohne Context-Grenzen.  
- Auto-heal: Compile-Fehler 10× an denselben Agent zurück.  
- Content-MD nach `src/` oder `packages/` kopieren.  
- Medical logic in `packages/bookkit` Foundation.  
- Superseded tracks wiederbeleben.  
- Split-Repo ohne Trigger (Wave 5: deferred ok).

---

## 5. Subagent-Typen & Context Packs

Jeder Subagent bekommt **nur** sein Pack (+ explizit genannte Dateien). Weniger = bessere Fokus-Qualität.

### 5.1 Typen

| Typ | Rolle | Output |
|---|---|---|
| **catalog-curator** | form-catalog core füllen | `forms.yaml`, BASIS, VERSION notes |
| **domain-recipe** | medical recipes / overlay | `domains/medical/recipes/*` |
| **media-designer** | Briefs, accept, free ideal | `domains/medical/briefs/*`, accept records |
| **skill-author** | SKILL.md + provision notes | skill-pack / domains/.../skill |
| **validator-engineer** | validate engine | `toolset/compose/validate/*` |
| **test-engineer** | fixtures + tests | tests + fixture files |
| **tech-feasibility** | Feasibility notes | feasibility md |
| **composer** | Production/pilot `.typ` | chapter.typ |
| **pilot-reporter** | E2E report | reports/*.md |
| **docs-engineer** | consumer/pin docs | README sections |
| **boundaries-auditor** | product boundary audit | checklist status |
| **reviewer** | adversarial quality gate | review md: P0/P1/P2 + verdict |

Optional später: **explore** (read-only codebase map) vor großen Waves.

### 5.2 Context Packs (was mitgeben)

| ID | Immer mitgeben | Typisch dazu | Explizit **nicht** |
|---|---|---|---|
| **CP-CATALOG** | CONSENSUS §ADR whitelist; PRODUCT-BOUNDARIES; form-catalog spec/plan; `packages/bookkit/lib.typ` + didactics lib; existing `forms.yaml` | theme only if needed | Kursbuch full chapters; art/legal packages |
| **CP-DOMAIN** | PRODUCT-BOUNDARIES; media-design spec; `domains/medical/**`; notfall recipe; forms.yaml ids only | CONSENSUS media role | full bookkit source dumps |
| **CP-MEDIA** | CONSENSUS media role; media-design spec/plan; templates; recipe; **one** chapter MD (read-only path) | INDEX of pilots if needed | compose validator code; full packages tree |
| **CP-SKILL-MEDIA** | skill-creator lite rules; media-design NEVER/ALWAYS; existing skill-pack patterns (bookkit SKILL as style ref) | — | implementation of validator |
| **CP-COMPOSE** | CONSENSUS tech+validate; compose-pipeline spec/plan; form-catalog core; BASIS; toolset/compose README; bookkit public API | — | writing gold briefs from scratch |
| **CP-COMPOSE-TEST** | validate module API; fixture policy; PRODUCT-BOUNDARIES (no hardcoded C paths) | — | live medical content |
| **CP-SKILL-COMPOSE** | compose-chapter duties; bookkit skill; form ids; accept-gate rule | — | media pedagogy essays |
| **CP-E2E-TECH** | gold brief; forms.yaml; feasibility template; recipe minima | chapter MD path | redesign bookkit |
| **CP-E2E-MEDIA** | brief; feasibility; accept template; CONSENSUS iteration max | spike PDF if any | rewriting claims |
| **CP-E2E-COMPOSE** | accept; feasibility; chapter MD; forms; compose skill; validate CLI | bookkit packages | free creative redesign outside brief |
| **CP-E2E-REPORT** | legacy pilot paths; new PDF paths; metrics E7/E8 list | — | new features |
| **CP-DOCS** | PRODUCT-BOUNDARIES; VERSION; package README patterns | — | track archive |
| **CP-REVIEW-*** | track acceptance; DIFF of wave; CONSENSUS constraints; this ORCHESTRATION exit for wave | prior review if rework | implementing fixes (reviewer reports only) |
| **CP-REVIEW-FINAL** | E1–E12; all wave reports; boundaries checklist | — | new scope |

### 5.3 Reviewer-Prompt-Minimum

Jeder Reviewer liefert Markdown:

```markdown
## Verdict: APPROVE | APPROVE_WITH_NITS | REWORK
## P0 (must fix before wave exit)
## P1 (should fix soon)
## P2 (optional)
## Boundaries check (A/B/C)
## CONSENSUS check (no assembler, no auto-heal, accept-gate, …)
## Test evidence seen
```

**P0-Beispiele:** Content-SoT im Platform-Repo; stable form ohne API; Validator hardcodiert Kursbuch; Compose ohne Accept im Normalpfad; Claim-Paraphrase; Auto-heal-Loop.

---

## 6. Review-Rhythmus

| Zeitpunkt | Review-Typ | Subagent |
|---|---|---|
| Ende Wave 1 | Catalog + boundaries | reviewer + CP-REVIEW-BOUNDARIES |
| Ende Wave 2 | Media skill/brief | reviewer + CP-REVIEW-MEDIA |
| Ende Wave 3 | Engine + tests | reviewer + CP-REVIEW-COMPOSE |
| Ende Wave 4 | Integration E2E | reviewer + CP-REVIEW-E2E |
| Ende Wave 5 | Final gate | reviewer + CP-REVIEW-FINAL |
| Nach jedem REWORK | Delta-review (nur Diff) | same reviewer pack + previous review |

Zusätzlich **ad-hoc Review**, wenn:

- >2 Dateien in `packages/bookkit` geändert (unexpected),  
- neuer `@preview` Import,  
- Domain-Code unter `packages/` gelandet.

---

## 7. Board-Template (Orchestrator Scratch)

```markdown
## Orchestration board
- Wave: _
- Active agents: _
- Blocked: _
### Checklist E1–E12
- [ ] E1 … 
### Wave exits
- [ ] W0 [ ] W1 [ ] W2 [ ] W3 [ ] W4 [ ] W5
### Open P0
- 
### Human escalations
- 
```

Optional: `devtracks/_orchestration/board.md` (gitignore ok) während Lauf.

---

## 8. Mapping Wave → Track plan.md Checkboxes

Orchestrator **aktualisiert** die jeweiligen `plan.md` Checkboxes wenn Steps done:

| Wave | primär checkboxen in |
|---|---|
| 1 | `form-catalog/plan.md` Phase 1–2; platform-boundaries Phase 1 items as touched |
| 2 | `media-design/plan.md` Phase 1–2 |
| 3 | `compose-pipeline/plan.md` Phase 1–2 |
| 4 | `compose-pipeline/plan.md` Phase 3; media accept artifacts |
| 5 | `platform-boundaries/plan.md` Phase 2; Phase 3 deferred note |

---

## 9. Definition of Done — Orchestration run

- Alle Waves 0–5 exited.  
- E1–E12 erfüllt oder Phase 3 Split **schriftlich deferred**.  
- Letzter Review FINAL = APPROVE oder APPROVE_WITH_NITS (Nits getrackt, keine P0).  
- User-facing summary: was gebaut, wo PDFs/Reports, was deferred.  
- Keine stillen Scope-Erweiterungen (Facets art/legal, prepress, MCP).

---

## 10. Schnellstart-Prompt für den Orchestrator (Copy-Paste)

```text
Du bist Orchestrator für Book-Layouting-Typst.
Lies und folge strikt: devtracks/ORCHESTRATION.md
Governance: devtracks/CONSENSUS-v0.md, devtracks/PRODUCT-BOUNDARIES.md
Offene Tracks: form-catalog, media-design, compose-pipeline, platform-boundaries.
Superseded tracks nicht implementieren.

Arbeite Wave 0 → 5. Nutze Subagents mit den Context Packs aus §5.
Nach jeder Wave: Reviewer-Subagent. P0 blockiert Wave-Exit.
Ziel: E1–E12. Kein Auto-heal-Loop, kein YAML-Assembler, kein Content-SoT in diesem Repo.
Aktualisiere plan.md-Checkboxes und gib am Ende eine Abschluss-Summary.
```

---

## 11. Risiken für den Orchestrator

| Risiko | Mitigation |
|---|---|
| Context bloat | nur Context Packs; keine full-repo dumps |
| Agent baut Monolith-Skill | getrennte media-brief vs compose-chapter |
| E2E vor Engine | Wave-Reihenfolge erzwingen |
| Review theater | Reviewer muss DIFF + tests evidence nennen |
| Boundary leak | every review has A/B/C section |
| Endlos iteration Media/Tech | max 2; then Human |

---

## 12. Dokument-Historie

| Version | Datum | Note |
|---|---|---|
| 1.0 | 2026-07-20 | Initial orchestration for v0.2 tracks |
