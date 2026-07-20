> **SUPERSEDED** (v0.1) — see `SUPERSEDED.md` and `devtracks/CONSENSUS-v0.md`.

> **SUPERSEDED** — siehe `devtracks/CONSENSUS-v0.md` und `SUPERSEDED.md`.

# Plan: Presentation Pipeline (Umbrella)

Siehe [spec.md](spec.md). Status: **geplant / nicht begonnen.**

Lifecycle: Child-Tracks zuerst harvesten; dieser Umbrella zuletzt (E2E + Governance), dann
`git mv` nach `devtracks/_archive/presentation-pipeline/`.

Child-Tracks:

| Track | Aufgabe |
|---|---|
| [`form-catalog`](../form-catalog/) | Form-Vokabular + bookkit-Mapping |
| [`didactic-media`](../didactic-media/) | Experte 2 / Presentation Plan |
| [`plan-driven-layout`](../plan-driven-layout/) | Experte 3 / Assembly + QA |

## Phasen (Umbrella)

| Phase | Datei | Ziel | Hängt ab von |
|---|---|---|---|
| **0** | [phase0-architecture.md](phase0-architecture.md) | Verträge, Gates, Skill-Schnitt, Ordner-Konventionen | — |
| **1** | — | Child: form-catalog v0 abnehmen | Phase 0 |
| **2** | — | Child: didactic-media v0 (Schema + ≥1 manueller Plan) | form-catalog |
| **3** | — | Child: plan-driven-layout v0 (Assembler baut aus Plan) | Plan-Schema |
| **4** | [phase4-e2e-harmony.md](phase4-e2e-harmony.md) | E2E Notfallkarten, Vergleich Baseline, Governance, Harvest | Phase 1–3 |

Phasen 1–3 werden **in den Child-Tracks** ausgeführt; hier nur Checklisten-Abnahme und
Blocker-Eskalation.

## Checkliste

- [ ] **Phase 0** — Architektur + Collaboration Protocol final im Track (spec bereits Entwurf).
- [ ] **form-catalog v0** — abgenommen, verlinkt.
- [ ] **didactic-media v0** — abgenommen, verlinkt.
- [ ] **plan-driven-layout v0** — abgenommen, verlinkt.
- [ ] **Phase 4 E2E** — Pilot + Harmony-Checks + Governance.
- [ ] **Harvest / Archive** — Ensemble.

## Arbeitsprinzipien

1. **Ein Medium pro Schicht** — Inhalt / Plan / Typst nicht vermischen.
2. **Katalog ist Gesetz** — keine Ad-hoc-Forms in Production-Plänen.
3. **Harmony > Einzelperfektion** — lieber 12 stabile Forms als 40 ungenutzte.
4. **Feedback ist Artefakt** (`content-gap`, `layout-gap`), kein stilles Umschreiben fremder Schicht.
5. **Baseline ehrlich** — alter Converter-Pfad bleibt zum Vergleich, bis E2E grün; dann deprecated.

## Definition of Done

Acceptance aus `spec.md`; alle Child-Tracks v0 done oder begründet deferred; E2E-Report liegt;
Governance aktualisiert.
