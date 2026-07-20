# Spec: Media Design — Medizinpädagogik & Mediendesign (Rolle Media)

## Objective

Die **freie didaktisch-mediale Zielvorstellung** für Buchinhalte erarbeiten und gegen technische
Vorschläge **abnehmen** — analog zu einem spezialisierten Verlags-Mediendesigner mit medizindidaktischem
Hintergrund — **ohne** Production-Typst und **ohne** den Form-Katalog als Denkgrenze.

> Governing: [`CONSENSUS-v0.md`](../CONSENSUS-v0.md) **v0.1** (Explore-then-constrain, Verlagsrollen).

## Role in the ensemble

```text
Autor (extern) ──► Media Brief (dieser Track) ──► Tech Feasibility / Spike
                          ▲                              │
                          └──────── Accept / Revise ◄────┘
                                         │ accept
                                         ▼
                                   Compose + Validate (compose-pipeline)
```

## Scope (in)

- **Skill** `media-brief` (oder gleichwertig): wann triggern, freie Konzeptarbeit, Output-Format Brief.
- **Media Brief Schema v0** (Markdown oder YAML — **leicht**, nicht Assembler-Input):
  - Buch-/Kapitel-Ebene: Genre, Gesamt-Lern-/Handlungsziel der Darstellung
  - Abschnittsliste: Rolle (gatekeeper, protocol, ddx, …), **Soll-Darstellung in Prosa**,
    Blickpfad/Priorität, optional Bezug Heading
  - `wishlist_outside_catalog[]` — explizit erwünscht
  - optionale `author_questions[]` für Human/Autor
- **Accept-Record Schema:** `accept` | `revise` | `reject` + Kurzbegründung pro strittigem Punkt / Spike.
- **Genre-Awareness:** nutzt form-catalog **Rezepte als Checkliste der Funktionen**, nicht als
  geschlossene Ideenkiste (Rezept = „Notfallkarte braucht Gatekeeper-Funktion“, nicht „nur Form X“).
- **Gold-Briefs** für Pilot (z. B. III-5, III-2) als Vorbild.
- Regeln gegen Werkzeug-Denken: Brief ohne vorheriges „welche bookkit-API?“-Mapping.

## Scope (out)

- `.typ` / bookkit-Calls schreiben (→ compose-pipeline).
- Feasibility/Spike implementieren (→ compose-pipeline Tech).
- Klinische Claim-Freigabe (Autor/Auditor Content-Workspace).
- Endlose Multi-Agent-Debatte ohne Artefakt-Update.
- YAML→Typst-Assembler.

## What Media MUST do

1. Idealzustand der Darstellung begründen (warum diese Medienform dem Lern-/Handlungsziel dient).  
2. Wünsche auch jenseits erprobter Forms erlauben und **sichtbar** machen.  
3. Tech-Vorschläge und Spikes bewerten (Accept-Schleife).  
4. Bei Bedarf Autor gezielt fragen (nicht den Inhalt umschreiben).  

## What Media MUST NOT do

1. Production-Layout „schnell selbst setzen“, um die Whitelist zu umgehen.  
2. Critical Claims ändern.  
3. Brief nur aus Katalog-IDs zusammenklicken (das ist Tech-Mapping).  
4. Mehr als die erlaubten Iterationsrunden ohne Human (siehe CONSENSUS).  

## Product boundary

- **Produkt B** (Domain Media). Pfad: **`domains/medical/`**.  
- Perspektivisch eigenes Repo — [`../PRODUCT-BOUNDARIES.md`](../PRODUCT-BOUNDARIES.md).  
- Nicht unter `packages/` als Foundation-Pflicht.

## Alignment

| Track | Beziehung |
|---|---|
| [`form-catalog`](../form-catalog/) | core whitelist; domain recipes as functional checklist |
| [`compose-pipeline`](../compose-pipeline/) | Empfänger Brief; Feasibility/Spike; Compose nach Accept |
| [`platform-boundaries`](../platform-boundaries/) | Split-readiness |
| Content (Kursbuch) | Produkt C, read-only |
| Legacy `didactic-media/` | SUPERSEDED |

## Acceptance

1. Brief-Schema + mind. 1 Gold-Brief (Notfallkarte) im Repo.  
2. Skill `media-brief` mit klarer Abgrenzung zu `compose-chapter`.  
3. Accept-Record-Beispiel an Feasibility oder Spike.  
4. Mind. ein dokumentierter Fall: Brief-Wunsch → gap → (geplant) Katalog-Erweiterung **oder** bewusstes approx + Media-Accept.  
5. Kein Production-Compose im Happy Path ohne Accept (Test/Checkliste).  

## Risks

- Brief wird zur versteckten Form-ID-Liste → Review-Regel: Prosa-Soll + wishlist.  
- Media Accept wird übersprungen unter Zeitdruck → Gate in compose-pipeline.  
- Zu vage Briefs → Abschnittstemplate im Schema erzwingen.
