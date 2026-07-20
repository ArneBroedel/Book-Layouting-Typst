# Spec: Form Catalog — gemeinsames Darstellungsvokabular

## Objective

Das **geteilte Vokabular** stabiler (und geplanter) Darstellungsformen: IDs, Zweck, Genre-Rezepte,
Mapping auf bookkit, Status `stable` | `planned` | `deprecated`.

Der Katalog ist:

- **Denk-Leitplanke und Funktions-Checkliste** für Media (Rezepte) — **kein** Denkverbot in Phase A.  
- **Harte Whitelist** für Production-Compose und Validator (nur `stable` + erlaubte Basis).  
- **Wachstumsstelle** für Lücken aus Media Briefs (`planned` ← catalog-gap).

> Governing: [`CONSENSUS-v0.md`](../CONSENSUS-v0.md) v0.1.

## Background

Ohne Katalog: Eintönigkeit oder wildes Typst.  
Mit Katalog als *einziger* Ideengeber: Kreativitäts-Kollaps (nur Erprobtes).  
Deshalb: Media denkt frei; Tech mappt; Katalog wächst aus akzeptiertem Bedarf.

## Scope (in)

- **Form-Register:** ID, Zweck, Rollen, Parameter, bookkit-API/Snippet, status.  
- **Genre-Rezepte:** funktionale Mindestanforderungen (`notfall-karte` first; Stubs für weitere).  
  Rezept-Sprache: „braucht Gatekeeper-Warnung“, nicht nur „nur `#cave`“.  
- **Anti-Patterns** (Cave-Spam, Table-default, …).  
- Maschinenlesbar: **`toolset/form-catalog/core/forms.yaml`** + `VERSION`.  
- Medical genre recipes: **`domains/medical/recipes/`** (Produkt B) — nicht in core vermischen.  
- **Gap-Prozess:** `planned` aus compose/media catalog-gap; Promotion zu `stable` nach Implementierung.  
- Version field + rename policy (consumer pin).

## Scope (out)

- Media Briefs schreiben (→ media-design / domains/medical).  
- Compose/Validate (→ compose-pipeline / toolset/compose).  
- Klinische Regeln.  
- Alle bookkit-Funktionen in v0 whitelisten (Kuration > Vollständigkeit).

## Alignment

| Track | Beziehung |
|---|---|
| [`media-design`](../media-design/) | Domain recipes + wishlist → planned |
| [`compose-pipeline`](../compose-pipeline/) | loads core whitelist (+ optional domain overlay) |
| [`platform-boundaries`](../platform-boundaries/) | core vs domain paths, split |
| `_archive/typst-toolset` | bookkit Implementation |

### Reihenfolge

Katalog-v0 (stable set + notfall-karte recipe) **vor** Production-Compose.  
Media Gold-Briefs können parallel mit Rezept-Entwurf starten.

## Acceptance

1. ≥12 `stable` Forms kuratiert aus bookkit (+ didactics), gemappt.  
2. Jede stable Form: ID, Zweck, API, Wann-Beispiel.  
3. Volles Genre-Rezept `notfall-karte` (funktional + empfohlene Forms + minima für Validator).  
4. Anti-Patterns ≥5.  
5. `planned` + Gap-Doku-Prozess beschrieben.  
6. `version:` im Katalog.

## Risks

- Nur stable ohne planned → Lücken unsichtbar.  
- Rezept = starre Form-Liste → Media denkt nicht frei.  
- Wishlist nie gebaut → Katalog stagniert (messen in Pilot-Reports).

## Suggested initial form IDs (seed)

`chapter-opener`, `part-page`, `section-break`, `callout`, `memo`, `cave`, `learning-objectives`,
`summary-box`, `definition`, `clinical-pearl`, `ddx-box`, `clinical-case`, `styled-table`,
`decision-table`, `protocol-steps`, `feature-grid`, `key-concept`, `mc-question`, `pull-quote`,
`reference-list` — kuratieren.
