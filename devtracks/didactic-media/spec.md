# Spec: Didactic Media Layer — Experte 2 (Darstellungskonzept)

## Objective

Die **Mittelschicht** der Presentation Pipeline aufbauen: Inhalt analysieren und in ein
**didaktisch hochwertiges, katalogkonformes Darstellungskonzept** übersetzen — den
**Presentation Plan** — ohne Typst zu schreiben und ohne Fachclaims zu erfinden.

> Experte 2 entscheidet: *welche Form trägt diesen Inhalt optimal?*  
> Nicht: *wie kompiliert man bookkit?* und nicht: *ist der CES-Claim medizinisch korrekt?*

## Background

Der Kursbuch-MD→Typst-Converter war ein heuristischer Ersatz für diese Schicht und erzeugte
eintönige PDFs. Verlage trennen Developmental Edit / Art Direction von Composition — analog hier.

## Scope (in)

- **Presentation-Plan-Schema v0** (YAML oder JSON Schema): Pflichtfelder, Blockliste, Page-Intent,
  Genre, Source-Anker (Heading/Section), optionale Parameter pro Form.
- **Skill / Procedure** für Agenten (Arbeitstitel `didactic-media` oder `presentation-planner`):
  Wann triggern, Analyse-Schritte, Genre-Rezepte anwenden, Anti-Patterns, Output nur Plan.
- **Manuelle Gold-Pläne** für Pilot-Kapitel (mind. 2 Notfallkarten) als Regression und Vorbild.
- **Plan-Validator** (mit form-catalog): unbekannte Forms → Fail; Schema-Verletzung → Fail.
- **Feedback-Artefakte:** `content-gap` (zurück an Inhalt), ohne stillen Content-Rewrite.
- Beispiele und Do’s/Don’ts anhand Kursbuch-`typ:`-Werten (`notfall-karte`, später weitere).

## Scope (out)

- Typst, bookkit-Imports, `set page`, Compile (→ plan-driven-layout).
- form-catalog pflegen (→ form-catalog; hier nur konsumieren).
- Klinische Freigabe, Claim-Audit, Jurist.
- Automatisches „Schönheits-Layout“ ohne Plan.
- Vollautomatische Plan-Generierung in v0 *erforderlich* — manuelle Gold-Pläne + Skill-Regeln reichen
  für Abnahme; Automation ist Stretch.

## Alignment

| Track | Beziehung |
|---|---|
| [`form-catalog`](../form-catalog/) | **Pflicht:** nur dessen Form-IDs |
| [`plan-driven-layout`](../plan-driven-layout/) | Konsument der Pläne |
| [`presentation-pipeline`](../presentation-pipeline/) | Umbrella; E2E nutzt diese Pläne |
| Kursbuch Content | Input read-only; Experte 1 |

### Was dieser Experte **niemals** tut

- `#import`, `#let`, Compile-Flags schreiben  
- Critical Claims ändern oder „medizinisch verbessern“  
- Forms erfinden, die nicht im Katalog stehen (`planned` nur als Gap-Meldung)  
- Page geometry / Theme-Tokens setzen  

### Was dieser Experte **tut**

- Content-Typ / Meta lesen (`typ: notfall-karte`, …)  
- Abschnitte Rollen zuweisen (`gatekeeper`, `triage-table`, `protocol`, …)  
- Pro Rolle eine Katalog-Form wählen  
- Page-Intent setzen (`first_page_goal`, density, de-emphasize sources)  
- Reihenfolge der Blöcke für Lern-/Handlungspfad optimieren  

## Acceptance

1. Schema v0 dokumentiert + mind. 1 validiertes Beispielplan-File im Repo.
2. Skill (SKILL.md) mit klarer Description-Abgrenzung zu `bookkit` / `typst-writer`.
3. ≥2 Gold-Pläne Notfallkarte (z. B. III-5, III-2), validator-grün.
4. Validator lehnt unbekannte `form` und fehlende Pflichtfelder ab (Test oder Script im Repo).
5. Mind. ein dokumentierter Durchlauf: „roher Converter-Default vs. Plan-Intent“ (qualitativ).
6. Kein Typst in Plan-Dateien (automatischer Check: keine `#import` / `#set`).

## Risks

- Pläne zu grob (nur „mach Tabellen“) → Genre-Rezept + Gold-Beispiele erzwingen Vielfalt.
- Pläne zu fein (Mikro-Typografie) → Schema verbietet font/size; nur Form + Parameter.
- Skill driftet in Layout → Description + Eval-Stichprobe.

## Plan schema sketch (normative direction, finalize in implementation)

```yaml
version: "0.1"
chapter_id: "III-5"
genre: notfall-karte          # must exist in form-catalog recipes
source:
  path: "…/chapter-iii5-….md"  # or repo-relative pointer
  content_status: content-ready
page_intent:
  first_page_goal: "actionable-in-10s"
  density: high
  de_emphasize: [sources]
blocks:
  - id: gatekeeper
    role: gatekeeper
    form: cave                 # catalog form id
    source: { heading: null, excerpt: "intro" }  # anchor strategy TBD
    params: {}
  - id: triggers
    role: recognition-triggers
    form: protocol-steps       # or checklist form
    source: { heading: "Erkennungs-Trigger" }
  # ...
gaps:
  content: []
  catalog: []                  # forms needed but planned-only
```
