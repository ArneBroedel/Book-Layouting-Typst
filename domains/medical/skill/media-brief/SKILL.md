---
name: media-brief
description: "ALWAYS use when drafting or revising a Media Brief, didactic media design intent, gold brief, accept record, freies Mediendesign, presentation intent for notfall-karte / lerntext / fallbasiert, or Media Accept after Tech feasibility/spike. Covers explore-then-constrain Media role (Produkt B). Do NOT use for writing production .typ, compose-chapter, bookkit API mapping as the only thinking step, claim rewrite, or form-id shopping."
---

# media-brief (Domain medical — Produkt B)

Executable procedure for the **Media** role: free didactic–media ideal → Media Brief artifact → Accept after Tech feasibility/spike.

**SoT of this skill:** `domains/medical/skill/media-brief/` (Produkt B).  
**Not** platform foundation; not a substitute for `compose-chapter` / Tech.

## When to use

- Authoring or revising a **Media Brief** for a chapter/section
- **Gold brief** examples under `domains/medical/briefs/`
- **Accept / revise / reject** after Tech feasibility note or spike
- Genre presentation intent (`notfall-karte`, `lerntext`, `fallbasiert`, …)
- Freies Mediendesign before any catalog mapping

## When NOT to use

| Situation | Use instead |
|---|---|
| Writing production `.typ` / bookkit calls | `compose-chapter` + `bookkit` + `typst-writer` (Wave 3 / Tech) |
| Choosing form ids as the *first* design step | Stay here — free ideal first; Tech maps later |
| Rewriting clinical claims or body content | Author / Content workspace (Produkt C) |
| Feasibility matrix, spikes, catalog gaps as implementer | Tech / `compose-pipeline` |
| Monologue design talk with no Brief/Accept file | Stop — produce an artifact |

## Role: Media (explore-then-constrain)

```text
Autor (C) ──► Media Brief (this skill) ──► Tech Feasibility / Spike
                     ▲                            │
                     └──── Accept / Revise ◄──────┘
                                │ accept
                                ▼
                          Compose + Validate (Tech — not this skill)
```

Media **thinks freely** about the best media/didactic presentation for learning/action goals.  
Tech **constrains** to catalog + spikes. Media **accepts** proximity to the ideal.

**MUST:** justify ideal presentation; surface wishlist beyond catalog; evaluate Tech proposals; ask Author targeted questions when needed.  
**MUST NOT:** set production layout to bypass whitelist; change Critical Claims; build the Brief as a pure form-id shopping list; exceed iteration caps without Human.

## Inputs

| Input | Required | Notes |
|---|---|---|
| Content path (Produkt **C**) | yes | Read-only; never copy as SoT into this repo |
| Genre recipe path | optional | Functional checklist, not exclusive form list — e.g. `domains/medical/recipes/notfall-karte.md` |
| Existing Brief / Feasibility / Spike | when accepting | Paths for Accept record |

Optional: `catalog_version_seen` for awareness only — **do not** limit ideation to it.

## Process (Brief)

1. **ALWAYS free ideal first** — overall presentation goal for the learner/actor (not a restatement of clinical facts; not bookkit APIs).
2. **Section plan in prose** — for each section: content anchor (heading/role), ideal presentation language, priority / page intent. Use genre recipe as **function checklist** (e.g. gatekeeper → recognition → action → measures → de-emphasized links/sources for `notfall-karte`).
3. **Wishlist outside catalog** — explicit `wishlist_outside_catalog[]` with why + severity. Visible gaps are success, not failure.
4. **Author questions** — only targeted Human questions; do **not** rewrite claims or invent clinical content.
5. **Explicit non-goals** — what this Brief is not trying to do.
6. **NEVER production Typst** — no `.typ`, no bookkit call sketches as the Brief body.
7. **Write the artifact** — Markdown using the template (below). Chat without a file update is incomplete.

## Output: Media Brief

**Template:** `domains/medical/templates/media-brief.template.md`

Fill all sections:

- Meta: `chapter_id`, `genre`, `content_source` (C path), `content_status`, `author_media`, `date`, optional `catalog_version_seen`
- **Overall presentation goal**
- **Section plan** table (prose ideal — no required form ids)
- **Wishlist outside current catalog**
- **Author questions**
- **Explicit non-goals**

**Suggested write path:** `domains/medical/briefs/<chapter-or-slug>.brief.md` (pilot/gold) or the path agreed with the orchestrator.  
**Gold examples:** when present, study files under `domains/medical/briefs/` (e.g. Notfallkarte pilot) before inventing structure.

### Genre recipes as checklist (not cage)

- Recipe says *what functions* the reader needs (e.g. F1 gatekeeper), not “only form X”.
- Typical form ids in recipes are **hints for Tech**, not Media’s ideation vocabulary.
- Anti-pattern: Brief that is only a list of catalog ids with no prose ideal / no wishlist (violates explore-then-constrain).

## Accept-record procedure (after Feasibility / Spike)

When Tech returns a feasibility note and optional spike PDF/PNG:

1. Read Brief + Feasibility (+ spike visuals if any).
2. Per overall + strittige Abschnitte: **`accept` | `revise` | `reject`** + 1–3 sentence note.
3. If **revise**: state what Tech must change before compose (artifact, not chat-only).
4. Check **Production compose authorized?** only on accept path.
5. Write Accept record from **`domains/medical/templates/accept-record.template.md`**.

Suggested path: `domains/medical/briefs/<slug>.accept.md` (or next to feasibility).

**Compose may run only after Media accept** (or a documented pilot exception — not the quality bar).

## Iteration caps

| Loop | Max (v0.1 default) | Then |
|---|---|---|
| Media ↔ Tech (feasibility / spike / accept) | **2** full rounds | **Human** decision |
| Media ↔ Author | as needed, **Human** | no agent endless chat |
| Compose → validate fail | N/A here | Tech; no Media auto-heal |

Do not open a third Media↔Tech round without Human.

## ALWAYS / NEVER

| ALWAYS | NEVER |
|---|---|
| Free ideal and prose section plan **before** any form-id mapping | Production `.typ` / bookkit layout in this skill |
| Visible wishlist for out-of-catalog wishes | Critical Claim rewrite or clinical paraphrase |
| Emit Brief or Accept **file** from templates | Design monologue without artifact update |
| Treat recipes as functional checklists | Brief = form-id shopping list only |
| Stop at 2 Media↔Tech rounds → Human | Skip Accept under time pressure for “real” production |
| Point Tech at Brief path; stay out of compose | Implement feasibility/spike yourself |

## Boundary vs Tech / `compose-chapter`

| Media (`media-brief`) | Tech (`compose-chapter` / feasibility) |
|---|---|
| Ideal presentation, section prose, wishlist, author Qs | Map Brief → `mapped` / `approx` / `gap` / `experiment` |
| Accept / revise / reject | Spike PDF/PNG; production compose after accept |
| Domain B (`domains/medical/`) | Platform A (`toolset/compose/`, form-catalog core, bookkit) |
| Does not own whitelist enforcement | Validator fail-fast; no auto-heal loops |

If both roles appear in one session: **finish Brief (or Accept) as a file first**; switch skills explicitly for Tech work.

## Related paths

| Artifact | Path |
|---|---|
| Brief template | `domains/medical/templates/media-brief.template.md` |
| Accept template | `domains/medical/templates/accept-record.template.md` |
| Recipes | `domains/medical/recipes/` |
| Briefs / gold | `domains/medical/briefs/` |
| Ownership | `domains/medical/OWNERSHIP.md` |
| Governance | `devtracks/CONSENSUS-v0.md` (ADR 10–17), `devtracks/media-design/spec.md`, `devtracks/PRODUCT-BOUNDARIES.md` |

## Product note

Produkt **B** transitional home: `domains/medical/`. Split-ready; do not fold medical genre logic into `packages/bookkit` foundation.
