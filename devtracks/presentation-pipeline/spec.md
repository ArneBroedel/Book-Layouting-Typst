# Spec: Presentation Pipeline — mehrschichtiger Content→Layout-Workflow

## Objective

Einen **verlagsreifen, mehrschichtigen Workflow** etablieren, in dem Inhalt, didaktisch-mediale
Darstellung und technische Typst-Umsetzung **klar getrennte Aufgabenbereiche** haben — aber über
gemeinsame Verträge (Form-Katalog, Presentation Plan, Gates) **zuverlässig harmonisieren**.

Motivation (Ist nach Toolset-MVP / Kursbuch-Converter-Pilot):

- bookkit kann viele mediale Formen; der naive MD→Typst-Pfad nutzt sie kaum.
- Ergebnis: sauber, aber eintönig (Tabellen + wenige Boxen) — **didaktisch unterausgelastet**.
- Ursache: fehlende Mittelschicht („wie *soll* dieser Inhalt dargestellt werden?“), nicht fehlende
  Runtime-Komponenten.

Zielbild (Drei Experten + geteiltes Rückgrat):

```text
┌─────────────────────┐
│  Experte 1: Inhalt  │  Fach, Claims, MD/Meta   (Content-Workspace, z.B. Kursbuch)
└──────────┬──────────┘
           │ freigegebener Inhalt (format-ok o.ä.)
           ▼
┌─────────────────────┐
│ Experte 2: Didaktik │  Analyse → Presentation Plan   ← Track didactic-media
│ / Medien            │  (Formen wählen, Page-Intent)
└──────────┬──────────┘
           │ plan-ok (geschlossenes Vokabular aus form-catalog)
           ▼
┌─────────────────────┐
│ Experte 3: Typst /  │  Plan → bookkit APIs → PDF     ← Track plan-driven-layout
│ Layout              │  (kein didaktisches Erfinden)
└──────────┬──────────┘
           │ layout-ok
           ▼
        Druck-/Screen-PDF (+ optional Prepress später)
```

**Geteiltes Rückgrat:** Track [`form-catalog`](../form-catalog/) — das einzige erlaubte Form-Vokabular
und die Mapping-Tabelle Plan-Form → bookkit-API.

Dieser Track (**presentation-pipeline**) ist der **Umbrella**: Architektur, Zusammenarbeitsprotokoll,
Gates, E2E-Abnahme. Er implementiert die Fachschichten nicht selbst, sondern **orchestriert** die
Child-Tracks und definiert „fertig, wenn das Ensemble harmoniert“.

## Background / why now

- Toolset-MVP (`bookkit`, Facetten, Skills, CLI) ist geharvestet — Runtime und Agent-Layout-Know-how
  existieren (Experte 3 hat ein Zuhause).
- Kursbuch-Pilot-Welle zeigt: ohne Darstellungskonzept bleibt die Oberfläche flach.
- Verlagspraxis (Editorial Design / Dev Edit → Composition) bestätigt die Schichtung; wir wollen sie
  agenten- und dateifähig machen, nicht als vage Prompt-Rolle.

## Scope (in) — dieser Umbrella-Track

- **Architektur & Verträge:** Schichten, erlaubte Inputs/Outputs, was jede Schicht *nicht* tut.
- **Collaboration Protocol:** Reihenfolge, Feedback-Schleifen (Plan ↔ Inhalt, Layout ↔ Plan),
  Change Control (kein Content-Edit im `.typ`).
- **Gate-Modell:** `content-ready` → `plan-ok` → `layout-ok` (+ optionale Stichproben-Kriterien).
- **E2E-Pilot-Koordination:** mind. ein Content-Typ (Empfehlung: `notfall-karte`) durch alle Schichten;
  Qualitätsvergleich gegen den alten Converter-Pfad.
- **Governance:** Verweis in `AGENTS.md` / `KNOWLEDGE-MAP`; Skill-Grenzen (welcher Skill gehört welcher
  Schicht).
- **Abhängigkeits- und Harvest-Orchestrierung** der Child-Tracks.

## Scope (out)

- Inhaltliche Kursbuch-Autorenschaft, Claim-Audits, Jurist (bleibt Content-Workspace / Human).
- Implementierung des Form-Katalogs im Detail → [`form-catalog`](../form-catalog/).
- Didaktik-Analyse-Skill und Plan-Generator → [`didactic-media`](../didactic-media/).
- Plan-Assembler, Converter-Ablösung, Layout-QA-Automation → [`plan-driven-layout`](../plan-driven-layout/).
- Neue schwere bookkit-Facetten „auf Vorrat“ (nur wenn Form-Katalog eine Lücke meldet).
- Prepress/PDF-X → `_archive/prepress-pdfx` / späterer Hook; nicht Blocker.
- CMS, RAG, GUI, MCP-first.

## Related tracks (alignment)

| Track | Rolle | Abhängigkeit |
|---|---|---|
| **[`form-catalog`](../form-catalog/)** | Shared spine: Form-IDs, Genre-Rezepte, bookkit-Mapping, Anti-Patterns | **Zuerst** (Phase 0/1 des Ensembles) |
| **[`didactic-media`](../didactic-media/)** | Experte 2: Inhalt → Presentation Plan | braucht form-catalog v0 |
| **[`plan-driven-layout`](../plan-driven-layout/)** | Experte 3: Plan → Typst/PDF | braucht form-catalog v0 + Plan-Schema aus didactic-media |
| **`_archive/typst-toolset`** | Runtime bookkit + Skills + CLI | Voraussetzung (fertig) |
| Content-Workspace (Kursbuch) | Experte 1 | extern, read-only Quellen für Pilots |

### Empfohlene Reihenfolge

```text
presentation-pipeline Phase 0 (Verträge, Gates)
        │
        ▼
form-catalog v0 ─────────────────────────────────┐
        │                                        │
        ▼                                        │
didactic-media (Schema + Skill + Pilot-Pläne)    │  parallel ok nach Katalog-v0:
        │                                        │  plan-driven-layout Scaffold
        ▼                                        │  (Assembler liest Plan-Stub)
plan-driven-layout (Assembler + QA) ◄────────────┘
        │
        ▼
presentation-pipeline Phase E2E (Notfallkarten-Vergleich, Gates grün, Harvest)
```

## Collaboration Protocol (verbindlich)

### Was fließt wohin

| Von → Nach | Artefakt | Darf enthalten | Darf **nicht** |
|---|---|---|---|
| Inhalt → Didaktik | freigegebene Kapitel-MD + Meta | Fachtext, Claims, `typ:` | Typst, Farben, `set page` |
| Didaktik → Layout | **Presentation Plan** (YAML/JSON) | `form`-IDs, Rollen, Page-Intent, Source-Anker | freie Prosa „mach schön“; erfundene Forms außerhalb Katalog |
| Layout → PDF | `.typ` + Build | bookkit-Calls, Theme | klinische Claim-Änderungen; neue Didaktik-Formen ohne Katalog-PR |
| Layout → Didaktik (Feedback) | `layout-gap` / QA-Notes | „Form X fehlt“, „Tabelle bricht Seite“ | Content-Rewrite |
| Didaktik → Inhalt (Feedback) | `content-gap` | „Abschnitt unklar für Checkliste“ | eigenmächtige Fachkorrektur im Plan |

### Change Control

1. Nach `plan-ok`: Inhaltsänderungen erfordern **Plan-Update** (oder explizites Re-Plan).
2. Nach `layout-ok`: nur Proof-Korrekturen; Strukturänderungen zurück zu Plan.
3. Generated `.typ` sind **Build-Produkte** (oder klar markierte hand-tuned Ausnahmen), nicht SoT für Inhalt.

### Harmony-Kriterien (Ensemble)

- Dieselbe `form-id` mappt **deterministisch** auf dieselbe bookkit-API (Katalog).
- Didaktik-Skill listet nur Katalog-Forms; Layout-Skill implementiert nur Katalog-Forms.
- E2E-Pilot zeigt messbar weniger „Eintönigkeit“ als Converter-Baseline (siehe Acceptance).

## Acceptance (Umbrella / Ensemble)

1. **Verträge dokumentiert:** Schichten, Artefakte, Gates, Feedback-Pfade in diesem Track + Kurzverweis Governance.
2. **Child-Tracks abgenommen** (oder explizit „v0 done“ mit verlinkten Reports): form-catalog, didactic-media, plan-driven-layout.
3. **E2E-Pilot:** ≥2 Kapitel eines Typs (z. B. Notfallkarten III-2, III-5) mit Plan-getriebenem Layout;
   Combined oder Einzel-PDFs grün; **sichtbarer** Qualitätsunterschied zur Converter-Baseline
   (Dokumentation: Seite-1-Intent, genutzte Form-Vielfalt, weniger reiner Tabellen-Default).
4. **Trennung bewiesen:** Didaktik-Artefakt enthält kein Typst; Layout-Assembly erfindet keine Forms
   außerhalb Katalog (Checkliste oder automatischer Validator).
5. **Skills geschnitten:** mind. getrennte Agent-Procedures (didactic-media skill vs. bookkit/plan-assembly);
   kein Monolith-Prompt „sei alles“.
6. **Harvest:** Learnings in Skills/Guides/Katalog; Child-Tracks + dieser Umbrella archive-ready.

## Risks

- Over-process: zu viele Gates vor erstem Nutzen → **Mitigation:** v0 nur Notfallkarte + manuelle Pläne ok.
- Katalog wird zur Bloat-Liste → **Mitigation:** Forms nur mit Genre-Rezept und bookkit-Mapping.
- Agenten vermischen Schichten trotzdem → **Mitigation:** harte Skill-Descriptions + Validator am Plan.
- Form fehlt in bookkit → **Mitigation:** `status: planned` im Katalog; Layout meldet gap, baut nicht wild.

## Non-goals reminder

Kein CMS, kein Content-Autor in diesem Repo, kein PDF-X-Zwang, kein „ein Agent für alles“.
