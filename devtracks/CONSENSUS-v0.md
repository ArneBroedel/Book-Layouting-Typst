# Architektur-Konsens — Composition & Verlagsrollen

**Status:** **v0.2 accepted** (2026-07-20) — Rollen v0.1 + Produkt-/Repo-Grenzen  
**Supersedes within this file:** pure „nur Single-Shot Composition“ als *alleiniger* Qualitätsweg  
**Retains from v0:** no YAML-Assembler primary path; whitelist validation; fail-fast; no auto-heal loops  

**Related:** [`PRODUCT-BOUNDARIES.md`](PRODUCT-BOUNDARIES.md) · Track [`platform-boundaries/`](platform-boundaries/)

**Process:**  
- Gemini 3-Runden (Effizienz, Verlässlichkeit) → v0 lock  
- User-Iteration (Verlagsrollen, freie Mediendidaktik, Annäherung) → **v0.1**  
- User-Iteration (Generalisierbarkeit, Multi-Repo/Domain-Schichten) → **v0.2**  

**Provenance (Gemini):**  
- R1: `05262d54582ed660` · [link](https://gemini.google.com/app/7ee2ab86204a5963)  
- R2: `e530f30a8cec6c06` · [link](https://gemini.google.com/app/f11be152d3ddabf3)  
- R3: `d09150efdac561e5` · [link](https://gemini.google.com/app/5048222877f72ebf)  

---

## Leitidee (einfach)

**Verlagsrollen behalten. Endlose Agenten-Meetings vermeiden. Austausch läuft über Artefakte und begrenzte Schleifen.**

| Menschliches Verlagsteam | Agenten-taugliche Form |
|---|---|
| Autor | Content-Workspace (MD, Claims) — extern |
| Auditor / Lektor | Validator + optionale Human/Claim-Audits |
| Medizinpädagogik + Mediendesign | Rolle **Media**: freier Brief, Accept, Rückfragen an Autor |
| Technische Umsetzung | Rolle **Tech**: Feasibility, Spikes, Compose (bookkit) |

Kreativität lebt in **Media (frei denken)**.  
Verlässlichkeit lebt in **Tech + Validator (eng bauen)**.  
Lücken werden **gebaut oder bewusst verworfen**, nicht still zu „nur Tabelle“ degradiert.

---

## Rollen (verbindlich)

### Autor (Experte Inhalt) — *extern*

- Liefert und verantwortet Fachtext, Meta, Critical Claims.  
- Beantwortet gezielte Rückfragen aus dem Media-Brief (Human-in-the-loop).  
- **Nicht:** Typst, bookkit, Form-Whitelist.

### Media (Medizinpädagogik + Mediendesign) — Track [`media-design`](media-design/)

- Denkt **zuerst frei**: hypothetisch bestes Medien-/Didaktik-Konzept (lern-/handlungstheoretisch).  
- Darf Wünsche **außerhalb** des aktuellen Katalogs formulieren.  
- Produziert **Media Brief** (Soll-Darstellung, abschnittsweise).  
- Bewertet Tech-Vorschläge und Spikes: **accept / revise / reject**.  
- **Nicht:** Production-`.typ` setzen; Claims umschreiben; endlose Chat-Debatten ohne Artefakt.

### Tech (Technische Umsetzung) — Track [`compose-pipeline`](compose-pipeline/)

- Mappt Brief → Katalog (`mapped` / `approx` / `gap` / `experiment`).  
- Optional **Spike**: kleines Experiment für neue/unsichere Wege → PDF/PNG.  
- **Compose** nur nach Media-Accept (oder dokumentierter Pilot-Ausnahme): `.typ` mit bookkit-Whitelist.  
- **Nicht:** Didaktik-Ideal neu erfinden, wenn ein Brief existiert; freies Typst außerhalb Katalog in Produktion.

### Validator / Auditor (Maschine + optional Human)

- Deterministisch: whitelist, genre minima, claims strict, compile, post-hoc form-extract.  
- Human: kritische Accepts, medizinische/rechtliche Freigaben (Content-Workspace).  
- **Nicht:** Multi-Agent-Verhandlung; Auto-Correction-Loops (v0/v0.1 verboten als Default).

### Form-Catalog (Shared Spine) — Track [`form-catalog`](form-catalog/)

- Whitelist + Genre-Rezepte + `planned`-Lücken.  
- Wächst aus **akzeptierten Gaps** (Media+Tech), nicht nur aus dem, was Compose schon kann.

---

## Workflow (getaktete Schleifen, kein reines Einbahn-Fließband)

```text
[Autor] Content MD freigegeben
        │
        ▼
[A] MEDIA — Media Brief (FREI, kein bookkit-Zwang)
        │  optional: Rückfragen → Autor (Human)
        ▼
[B] TECH  — Feasibility note (mapped | approx | gap | experiment)
        │
        ├─► [C2] SPIKE (optional, budgetiert) → PDF/PNG
        │         │
        │         ▼
        └──────► [D] MEDIA — Accept / Revise / Reject
                      │ revise → zurück B oder A (max n Runden)
                      │ accept
                      ▼
                 [C1] TECH Compose — .typ (nur Katalog + Basis)
                      │
                      ▼
                 [E] VALIDATOR — fail-fast
                      │
                      ▼
                     PDF
```

### Iterationsregeln

| Schleife | Max (v0.1 Default) | Abbruch |
|---|---|---|
| Media ↔ Tech (B/C2/D) | **2** volle Runden | dann Human-Entscheidung |
| Media ↔ Autor | nach Bedarf, **Human** | kein Agent-Dauerchat |
| Compose → Validate fail | **kein** Auto-Heal-Loop | ein Schuss; neuer Lauf nur bewusst |

### Pflicht vs. Ausnahme

- **Normalfall Produktion:** A → B → (C2?) → D accept → C1 → E.  
- **Pilot/Smoke-Ausnahme:** C1 ohne Brief nur dokumentiert und **nicht** als Qualitätsmaßstab für „gutes Layout“.  
- **Kein Kapitel** gilt als didaktisch abgenommen, das nur C1+E hatte (außer explizite Ausnahme).

---

## Artefakt-Verträge (kurz)

| Artefakt | Owner | Inhalt (v0.1) | Nicht |
|---|---|---|---|
| Content MD + Claims | Autor | Fachtext | Layout-Anweisungen als Wahrheit |
| **Media Brief** | Media | Page/section intent, Soll-Formen in Prosa, Lernziel der Darstellung, offene Wünsche | Pflicht-YAML-Assembler; Copy des ganzen Fachtexts |
| **Feasibility note** | Tech | pro Abschnitt: mapped/approx/gap/experiment + Katalog-ID oder gap-name | endloses Prosa-Meeting |
| **Spike PDF/PNG** | Tech | gezielter Versuch | Production-SoT |
| **Accept record** | Media | accept/revise/reject + 1–3 Sätze | — |
| **chapter.typ** | Tech Compose | bookkit only, claims copy-through | paralleles Intent-YAML vom LLM |
| **post-hoc intent** | Validator | Forms aus `.typ` | vor dem Setzen „Plan“ |
| **catalog-gap** | Tech/Media | gewünschte Form, Begründung, Status planned | still schlucken |

Kein **YAML→Assembler** als Primary Path (v0 bleibt).  
Brief/Feasibility dürfen YAML/MD sein — sie steuern **Menschen/Agenten**, sie ersetzen nicht den Content und werden nicht maschinell in Typst „zurückübersetzt“ ohne Compose.

---

## ADR v0 (technisch, bleibt gültig)

1. Compose generiert Production-`.typ` **direkt** (bookkit), kein YAML-Assembler-Primary.  
2. Production: Forms ⊆ form-catalog whitelist (+ Mini-Basis heading/par/list/…).  
3. Genre-Rezepte: Mindestanforderungen (z. B. gatekeeper p1, min. distinct forms).  
4. Post-hoc Intent aus `.typ` für Audit/Regen-Hinweise.  
5. Diff-Guardrail: Claims **strict** (normalisiert); Body soft.  
6. Fail-fast Validation; **keine** autonomen gap-Negotiation-Agenten.  
7. **Keine** Self-Healing-Compile-Loops als Default (30-Tage-Geist: messbare Baseline).  
8. Catalog = Kuration existierender bookkit-APIs + `planned` gaps.  
9. Content-Unantastbarkeit: keine Claim-Paraphrase.

## ADR v0.1 (Rollen & Kreativität — neu)

10. **Explore-then-constrain:** Media denkt frei (Brief) *vor* Whitelist-Compose.  
11. **Kreativitätsraum Phase A:** Alltagssprache, Wunschmedien, lerntheoretische Begründung; Katalog ist **kein** Denkverbot.  
12. **Tech antwortet mit Machbarkeit**, nicht mit vorzeitiger Didaktik-Erfindung.  
13. **Media Accept** entscheidet „nah genug am Ideal“ — Compile grün reicht nicht.  
14. **Spikes** sind erstklassig für unprobiertes; budgetiert (z. B. ≤1 Spike/Kapitel oder /Welle im Pilot).  
15. **Katalog wächst aus Gaps** nach Accept-Bedarf, nicht nur aus Compose-Komfort.  
16. **Iteration getaktet** (max Runden), dann Human — Agenten sind Rollen auf Artefakten, kein Gremium.  
17. **Skills:** getrennt `media-brief` (Media) vs. `compose-chapter` / feasibility (Tech); nicht ein Monolith-Prompt für A+C1.  
18. Track-Schnitt v0.1: **`form-catalog`** + **`media-design`** + **`compose-pipeline`**.

## ADR v0.2 (Produkt- & Repo-Grenzen — neu)

19. **Drei Produkte:** A Layout-Plattform (dieses Repo) · B Domain-Media · C Content-Werk.  
20. **A bleibt generalisierbar:** keine Content-SoT; medizinische Spezialisierung nicht in Foundation-Pflicht.  
21. **B lebt Übergang in `domains/medical/`**, auslagerbar in eigenes Repo bei Split-Trigger.  
22. **C bleibt externes Content-Repo** (z. B. Kursbuch); Layout nur Consumer.  
23. **Kopplung** über versionierte bookkit/catalog-Pins + Rollen-Artefakte — nicht über Chat oder ungepinnte `main`.  
24. **Monorepo ok innerhalb von A** (`packages/*`, `toolset/*`); das ist Package-Monorepo, nicht All-in-One-Enterprise.  
25. **Multi-root Workspace** nur UX; kein viertes Produkt mit Business-Logik.  
26. Track **`platform-boundaries`** steuert vorbereitende Struktur und Split-Readiness.

---

## Was verworfen bleibt / was zurückkommt

| Idee | Status |
|---|---|
| YAML Presentation Plan → deterministischer Assembler | **verworfen** (Primary Path) |
| content-gap/layout-gap Multi-Agent-Ping-Pong | **verworfen** |
| Self-heal retry loops | **verworfen** (Default) |
| Nur Single-Shot MD→typst ohne Media Brief | **nur Ausnahme**, nicht Normalfall |
| Freies Media-Ideal vor Technik | **zurück / v0.1 Kern** |
| Media↔Tech Annäherung | **zurück**, als Artefakt-Schleifen |
| Spikes für Neues | **zurück**, budgetiert |
| form-catalog + genre recipes + fail-fast compose | **behalten** |

---

## Active tracks (v0.2 spine harvested; content loop open)

| Track | Rolle |
|---|---|
| [`content-maturity/`](content-maturity/) | **open** — Content-Reife-Schleife (C0–C5), Rolle Content-Review; transitional `domains/content-maturity/` → Split nach C; proposed CONSENSUS **v0.3** |
| [`_archive/platform-boundaries/`](_archive/platform-boundaries/) | Produkt A/B/C, Ordner, Split-Vorbereitung |
| [`_archive/form-catalog/`](_archive/form-catalog/) | Shared spine: core whitelist + (domain) recipes |
| [`_archive/media-design/`](_archive/media-design/) | Media-Rolle; **Implementierungspfad:** `domains/medical/` (B) |
| [`_archive/compose-pipeline/`](_archive/compose-pipeline/) | Tech-Rolle; **Engine:** `toolset/compose/` (A) |

> **v0.3 (planned in content-maturity):** Content-Review, Freeze vor Production-Media/Compose, Proof, Human Imprimatur; Media Accept ≠ Imprimatur.


---

## Success metrics (Pilot)

**Media:** Brief existiert; mind. ein Wunsch darf outside-catalog sein *oder* bewusst „keine Lücke“; Accept-Record vor Production-Compose.  
**Tech:** Feasibility deckt Brief-Abschnitte; Gaps benannt; Compose nur post-accept.  
**Validate:** compile 0; forms ⊆ whitelist; genre minima; claims pass.  
**Qualität:** weniger Table-only-Monotonie vs. Legacy-Converter (side-by-side); Media-Accept „adäquat“ dokumentiert.
