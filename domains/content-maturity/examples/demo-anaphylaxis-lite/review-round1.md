# Content Review Report

```yaml
chapter_id: demo-anaphylaxis-lite
content_path: domains/content-maturity/fixtures/demo-anaphylaxis-lite/content.md
content_revision_reviewed: "sha256:ac36fcc625f82cd18d3d72772ca0802b14fce836b6bd63bcc127720c78068777"
profile: core
reviewer: content-review-gold
date: 2026-07-20
round: 1
```

## Summary

- **ready_for_freeze:** no
- **Narrative:** Das Fixture ist strukturell lesbar, enthält aber absichtliche
  Qualitätsmängel: absolute Sicherheitsformulierung, Redundanz und unklare
  Handlungsreihenfolge. Critical Claims sind vorhanden und prüfbar. Vor Freeze
  müssen die `block`-Findings vom Autor adressiert werden (mindestens die absolute
  „immer“-Aussage im Kerntext oder als bewusste Claim-Einschränkung).

## Counts

| severity | count |
|---|---|
| block | 1 |
| should | 2 |
| nit | 1 |

## Findings

| id | severity | tags | location | observation | recommendation | patch_ref |
|---|---|---|---|---|---|---|
| F1 | block | safety,sprache | Kerntext | Absolute Aussage „Adrenalin hilft immer sofort“ ohne Einschränkung | Autor: abschwächen/konditionieren oder als prüfbare Claim + Kontext; keine Dosis erfinden | — |
| F2 | should | struktur,didaktik | Kerntext | Handlungsreihenfolge (Lage/Notruf) unklar | Explizite Reihenfolge oder „parallel“ benennen | — |
| F3 | should | struktur | Kerntext | Redundanz „Anaphylaxie ist gefährlich“ ×2 | Kürzen | — |
| F4 | nit | didaktik | Lernziel | Lernziel betont Fiktivität (gut), wenig Handlungstransfer | Optional: ein messbares Lernziel ergänzen | — |

## Claims audit

| claim / gap | issue | recommendation |
|---|---|---|
| Dieses Kapitel ist ein synthetisches Fixture… | ok / testable | keep |
| Absolute Formulierungen wie „immer“… | ok / testable | keep; align body after F1 fix |

## Safety flags (identify only — do not invent guidelines or doses)

| flag | location | question for author |
|---|---|---|
| Absolute „immer“ re Adrenalin | Kerntext | Soll die Aussage gestrichen, konditioniert oder als typisches Missverständnis markiert werden? |
| Unklare Erstmaßnahmen-Reihenfolge | Kerntext | Welche Reihenfolge ist im Werkskontext verbindlich? (Quelle im Content-Repo, nicht Agent) |

## Open questions for author

1. Wie soll die absolute Adrenalin-Formulierung im finalen Text stehen?
2. Soll eine geordnete Erste-Hilfe-Sequenz Teil dieses kurzen Kapitels sein?

## Explicit non-actions

- Did **not** write production `.typ` / bookkit layout
- Did **not** silently edit Critical Claims or body SoT
- Did **not** invent clinical guidelines, doses, or citations
