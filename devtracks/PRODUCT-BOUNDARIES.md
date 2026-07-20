# Produkt- & Repo-Grenzen (v0.2)

**Status:** accepted direction (2026-07-20)  
**Ergänzt:** [`CONSENSUS-v0.md`](CONSENSUS-v0.md) (Rollen/Workflow)  
**Track (archived):** [`_archive/platform-boundaries/`](_archive/platform-boundaries/) · Phase 3 deferred note there

---

## Ziel

- **Dieses Repo** = generalisierbare **Layout-Plattform** (Typst/bookkit/compose/catalog-core).  
- **Spezialisierung** (Medizindidaktik, Kursbuch-Medien) = **Schicht darüber**, austauschbar.  
- **Content** (Autor) = **eigenes Produkt**, SoT nie hier.  
- Trennung der Aufgaben **ohne** Micro-Repo-Chaos und **ohne** Alles-in-einem-Brei.

---

## Drei Produkte

| ID | Produkt | Default-Heimat (Ziel) | Heute (Übergang) |
|---|---|---|---|
| **A** | Layout-Plattform | **dieses Repo** | dieses Repo |
| **B** | Domain-Media (z. B. Medizin) | eigenes Repo *später* | `domains/medical/` hier (auslagerbar) |
| **C** | Content-Werk | Kursbuch-Repo (extern) | extern; nur read-only Inputs |

Optional: Multi-root **Workspace-Datei** nur als UX (kein viertes Produkt).

---

## Was wohin gehört

| Artefakt / Track | Produkt | Pfad-Konvention (Übergang) |
|---|---|---|
| `packages/bookkit*`, CLI, showcase | A | `packages/`, `scripts/`, `src/` |
| form-catalog **core** (generische Forms, Schema) | A | `toolset/form-catalog/core/` |
| compose validator engine, `compose-chapter` skill | A | `toolset/compose/`, `toolset/skill-pack/compose-chapter/` |
| Genre-Rezepte Medizin, Gold-Briefs, `media-brief` skill | B | `domains/medical/` → später eigenes Repo |
| Kapitel-MD, Claims, Audits | C | Kursbuch-Repo |
| pilots die **nur** Plattform dogfooden | A | `pilots/` (austauschbar, nicht Content-SoT) |
| Kursbuch-Layout-Outputs | A oder B | `pilots/kursbuch-*` = **consumer dogfood**, Content bleibt C |

---

## Schnittstellen (Kopplung)

1. **SemVer bookkit** + **form-catalog `version`** — Consumer pinnen.  
2. **Artefakte:** Brief, Feasibility, Accept, `.typ`, PDF (siehe CONSENSUS).  
3. **Content-Pfade:** absolute/konfigurierbare Inputs aus C; keine Kopie als SoT in A.  
4. **Skills:** A-skills generisch; B-skills domain; Workspace provisioniert beide.  
5. **Gaps:** Domain meldet `catalog-gap` → PR/Issue nach A (`planned` → `stable`).

---

## Was dieses Repo **nicht** ist

- Autor-Workspace für medizinische Kapitel  
- Dauerhafte SoT für Kursbuch-Markdown  
- „Ein Agent sieht alles und macht alles“ ohne Rollen-Artefakte  

---

## Auslagerungs-Trigger (Repo B abspalten)

Domain-Media in eigenes Repo ziehen, wenn **eines** gilt:

- zweites Werk / zweite Domäne startet, **oder**  
- `domains/medical/` hat stabile Skills + ≥2 Gold-Briefs + eigene CI-Bedürfnisse, **oder**  
- Plattform-Releases werden durch Domain-Noise blockiert.

Methode: `git subtree split` / history sparse — vorbereiten durch **klare Ordnergrenze ab jetzt**.

---

## Workspace-UX (optional)

Beispiel: `workspaces/kursbuch-layout.code-workspace` (Multi-root A+C[+B]).  
Nur Checkout-Hilfe — **keine** Business-Logik im Workspace-Repo nötig.
