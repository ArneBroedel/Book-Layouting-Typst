# Spec: Compose Pipeline — Tech, Spike, Compose, Validate

## Objective

Die **technische Verlagsrolle** umsetzen: Media Briefs in Machbarkeit übersetzen, bei Bedarf
**Spikes** fahren, nach Media-Accept **bookkit-`.typ`** setzen und **deterministisch validieren** —
verlässlich, ohne YAML-Assembler und ohne Auto-Heal-Loops.

> Governing: [`CONSENSUS-v0.md`](../CONSENSUS-v0.md) **v0.1**.  
> Media-Rolle (freier Ideal-Entwurf + Accept): [`media-design`](../media-design/).

## Role in the ensemble

```text
Media Brief ──► [B] Feasibility ──► [C2] Spike? ──► Media Accept
                      │                    │              │
                      │                    └──────────────┤
                      ▼ accept                            │
                 [C1] Compose (.typ) ◄─────────────────────┘
                      │
                 [E] Validator → PDF + post-hoc intent
```

**Compose ist Setzer nach Redaktionsschluss**, nicht alleiniger Gestalter.  
Ohne Brief nur **dokumentierte Ausnahme** (Smoke/Legacy-Vergleich).

## Architecture

### B — Feasibility note (Tech, LLM oder Human)

Input: Media Brief + form-catalog.  
Output: pro Brief-Abschnitt:

| status | Bedeutung |
|---|---|
| `mapped` | 1:1 Katalog-Form |
| `approx` | nah dran; Kompromiss beschrieben |
| `gap` | fehlt → catalog-gap / planned form |
| `experiment` | Spike empfohlen |

### C2 — Spike (optional, budgetiert)

- Kleines `.typ`/Beispiel, Fokus eine Wunschform oder Annäherung.  
- Output: PDF/PNG + Kurznote für Media Accept.  
- Default-Budget Pilot: ≤1 Spike pro Kapitel (oder pro Welle, spezifizieren im Pilot-Report).

### C1 — Compose (Skill `compose-chapter`)

Input: Content MD + **accepted** Brief + Feasibility (Mapping) + catalog whitelist.  
Output: `chapter.typ` — nur bookkit-Forms + Basis; Claims copy-through.  
Intern CoT ok; **kein** paralleles Intent-YAML vom LLM.

### E — Validator (deterministisch)

- forms ⊆ catalog  
- genre minima / gatekeeper heuristic  
- critical-claims strict (normalized)  
- soft body similarity  
- typst compile  
- post-hoc intent extract from `.typ`  
- **Gate:** Accept-Record vorhanden (oder exception flag)

## Scope (in)

- Feasibility template + skill section or `tech-feasibility` procedures in compose skill pack.
- Spike workflow docs + optional script hooks.
- Skill `compose-chapter` (Brief-getrieben).
- Validator + durable tests (pass/fail fixtures).
- Pilot: Notfallkarten mit **vollem** A→B→D→C1→E Pfad vs. legacy converter.
- catalog-gap filing process → form-catalog `planned`.

## Scope (out)

- Freies Media-Ideal ersetzen (→ media-design).  
- YAML Presentation Plan Assembler.  
- Multi-Agent gap negotiation loops.  
- Self-healing re-prompt on compile/diff fail (default).  
- bookkit neu erfinden (Katalog kuratiert).  

## What Tech MUST / MUST NOT

| MUST | MUST NOT |
|---|---|
| Gaps ehrlich benennen | Media-Wünsche kleinreden zu „halt Tabelle“ ohne gap |
| Compose an Accept + Mapping binden | Didaktik-Ideal ignorieren und nur Katalog-Default setzen |
| Spikes für experiment markieren | Spike als stiller Production-Pfad |
| Fail-fast bei unknown forms | Auto-retry-Loops |

## Product boundary

- **Produkt A** engine: `toolset/compose/` (domain-agnostic).  
- Domain briefs: paths from **B** (`domains/medical/` or future repo).  
- Content paths: from **C** — never hardcode Kursbuch tree in validate core.  
- [`../PRODUCT-BOUNDARIES.md`](../PRODUCT-BOUNDARIES.md).

## Alignment

| Track | Beziehung |
|---|---|
| [`form-catalog`](../form-catalog/) | core whitelist + VERSION pin |
| [`media-design`](../media-design/) | Brief + Accept under domains/medical |
| [`platform-boundaries`](../platform-boundaries/) | engine vs domain split |
| `_archive/typst-toolset` | bookkit runtime |
| Legacy `pilots/kursbuch-welle-03/` | Baseline / consumer dogfood only |

## Acceptance

1. Feasibility-Template + Beispiel zu einem Gold-Brief.  
2. Compose skill verlangt Brief+Accept im Normalpfad (dokumentiert + Check).  
3. Validator + tests; post-hoc intent.  
4. Pilot PDF mit Media-Pfad; metrics (CONSENSUS) + side-by-side legacy.  
5. Mind. ein `gap` oder Spike im Pilot-Durchlauf **oder** begründete „keine Lücke“.  
6. Kein default auto-heal loop.  

## Risks

- Teams skippen Media und compose-only → Gate + Report.  
- Feasibility wird zum zweiten Brief → Status-Enum erzwingen.  
- Spike-Scope creep → Budget.
