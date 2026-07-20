# Genre recipe: notfall-karte (Domain medical)

**Produkt B** — lives under `domains/medical/`; **not** part of form-catalog core.  
**Audience:** Media (checklist of *functions*), Tech (map to catalog forms), Validator (machine minima).  
**Nature:** functional requirements for presentation quality — **not** a closed exclusive form list.  
Media may wish beyond the catalog (`wishlist_outside_catalog`); Tech maps `mapped | approx | gap | experiment`.

**Machine minima:** [`notfall-karte.minima.yaml`](./notfall-karte.minima.yaml)  
**Catalog pin (reference):** form-catalog core `version` field in `toolset/form-catalog/core/forms.yaml` (ids only).

---

## Purpose

Action-first emergency card for the learner/actor: stop danger → recognize → act → measure → (short) differentiate → de-emphasized links/sources.  
Primary success is **usable under time pressure**, not essay completeness.

---

## Functional requirements

Media uses these as a **gatekeeper checklist** when writing the Media Brief. Tech maps each function to one or more catalog form ids (or a named gap).

| # | Function | What the reader must get | Typical form ids (non-exclusive) |
|---|---|---|---|
| F1 | **Gatekeeper / danger first** | Stop/act cue within the first screenful; cannot bury under prose or sources | `cave`, `memo` |
| F2 | **Recognition triggers** | Scannable cues (signs, red flags), not a wall of prose | `callout`, `memo`, list/basis, short `styled-table` |
| F3 | **Action / triage path** | Clear urgency → next action (branch or ordered path) | `styled-table`, `protocol-steps` *(planned)*, `callout` |
| F4 | **Immediate measures** | Ordered steps preferred over dense narrative | `protocol-steps` *(planned)*, numbered list/basis, `callout` |
| F5 | **Confusion / DDx (short)** | Brief “don’t confuse with …” — optional but preferred when clinically relevant | `ddx-box`, short comparison `styled-table` |
| F6 | **Cross-links** | Compact, **de-emphasized** vs. action content; never before action path | basis list/links, `section-break` then compact list |
| F7 | **Sources** | Compact; **de-emphasized** on early pages; never as opener | basis / trailing section |

### Priority / page intent (guidance)

1. Gatekeeper (F1) → Recognition (F2) → Action path (F3) → Measures (F4)  
2. Then optional DDx (F5)  
3. Cross-links (F6) and Sources (F7) last, visually quieter  

`chapter-opener` may own the chapter start; gatekeeper must still appear **early** in body content (see minima: early window).

---

## Validator minima (machine-actionable)

Authoritative machine file: **`notfall-karte.minima.yaml`**.  
Compose/validator (Produkt A) loads this YAML by genre id; this section documents the fields so humans and the engine stay aligned.

### Field schema

| Field | Type | Meaning |
|---|---|---|
| `genre` | string | Genre id; must match recipe slug (`notfall-karte`) |
| `schema_version` | string | Minima schema version (bump if field semantics change) |
| `catalog_version_hint` | string | Optional pin of form-catalog core version this recipe was written against |
| `distinct_forms_min` | int | Minimum count of **distinct catalog form ids** used in production `.typ` (basis elements do **not** count) |
| `early_gatekeeper_forms` | list[string] | At least one of these form ids must appear in the **early window** |
| `early_window` | object | How “early” is measured for the gatekeeper check |
| `early_window.mode` | string | `first_n_catalog_forms` (v0) — among the first *N* catalog-form invocations |
| `early_window.n` | int | Window size (v0 default: `3`) |
| `forbidden_sole_forms` | list[string] | If the set of catalog forms used is a **subset** of this list (plus zero other catalog forms), validation **fails** |
| `forbid_only_table_body` | bool | Convenience flag: equivalent to failing when body is only tables + basis (see rule below) |
| `recommended_forms` | list[string] | Soft map for Media/Tech; **not** enforced as exclusive whitelist |
| `planned_wishlist` | list[string] | Catalog ids with status `planned` that this genre often wants |

### Rules (v0 semantics for validator-engineer)

1. **distinct_forms_min ≥ 4**  
   Count unique catalog form ids extracted post-hoc from production `.typ`.  
   Basis (`heading`, `par`, `list`, `enum`, `table` raw, …) does **not** count.

2. **early_gatekeeper**  
   Among the first `early_window.n` catalog-form invocations (document order), at least one id ∈ `early_gatekeeper_forms` (`cave` \| `memo`).  
   Fail message should name missing gatekeeper function (F1), not only the ids.

3. **forbid_only_table_body / forbidden_sole_forms**  
   If every catalog form used is in `forbidden_sole_forms` (v0: only `styled-table`) — i.e. no non-table catalog form at all — **fail**.  
   Rationale: table-only monotony fails the genre even if distinct count is padded with repeated tables.

4. **Production whitelist** remains form-catalog core (`stable` + allowed basis).  
   Genre minima are **additional** constraints; they do not expand the whitelist.  
   `planned` forms (e.g. `protocol-steps`) **cannot** pass production compose until promoted `stable` — Media may still list them as wishlist.

### Current values (must match YAML)

```yaml
genre: notfall-karte
schema_version: "0.1"
distinct_forms_min: 4
early_gatekeeper_forms: [cave, memo]
early_window: { mode: first_n_catalog_forms, n: 3 }
forbidden_sole_forms: [styled-table]
forbid_only_table_body: true
```

---

## Recommended stable form map (starting map — not exclusive)

Media **must not** treat this as the only allowed ideation set. Tech uses it as default mapping hints.

| Function | Preferred stable ids | Notes |
|---|---|---|
| Chapter start | `chapter-opener` | Owns H1 / opener spread |
| Gatekeeper (F1) | `cave`, `memo` | Prefer single strong cue; avoid cave-spam |
| Recognition (F2) | `callout`, `memo` | Short bullets ok via basis |
| Action / triage (F3) | `styled-table` | Decision/urgency columns preferred over prose |
| Measures (F4) | *(planned)* `protocol-steps`; interim: basis enum + `callout` | See wishlist |
| DDx (F5) | `ddx-box` | Keep short |
| Structure | `section-break` | Separate action block from hintergrund/links |
| Optional pearl | `clinical-pearl` | One max on a card; not instead of gatekeeper |
| Optional recap | `summary-box` | Only after action path, if space |

**Also available (stable, situational):** `definition`, `learning-objectives`, `clinical-case` — usually **not** primary on a pure emergency card; prefer other genres (`lerntext`, `fallbasiert`) when those dominate.

### Catalog status of recommended ids (snapshot)

| id | status (core) |
|---|---|
| `chapter-opener` | stable |
| `section-break` | stable |
| `callout` | stable |
| `memo` | stable |
| `cave` | stable |
| `styled-table` | stable |
| `ddx-box` | stable |
| `clinical-pearl` | stable |
| `summary-box` | stable |
| `protocol-steps` | **planned** (wishlist) |

---

## Planned / wishlist forms

| id | Why this genre wants it | Severity |
|---|---|---|
| `protocol-steps` | Numbered action protocol with visual step weight (not plain bullets) | high for F3/F4 |
| *(future)* decision-table or triage-strip | Explicit urgency lanes if `styled-table` proves too generic | medium — only if pilots show gap |

Gaps become `catalog-gap` artifacts → core `planned` → `stable` after implementation. Until then: **approx** with Media Accept (e.g. enum + `callout`).

---

## Anti-patterns (domain-specific)

Fail review / Media Accept if these dominate — even when compile is green:

1. **Table-only body** — entire card is one giant `styled-table` (+ prose). No gatekeeper box, no scannable measures form. (Matches validator `forbidden_sole_forms`.)  
2. **Cave spam** — `cave` on every paragraph; dilutes stop-signal. Prefer **one** early gatekeeper, escalate only for true hard stops.  
3. **Sources / links first** — literature or “siehe auch” before action path; buries F1–F4.  
4. **Prose wall for recognition** — red flags buried in long paragraphs instead of scannable triggers.  
5. **Catalog-only Brief** — Media Brief that is only a list of form ids with no prose ideal / no wishlist allowed. Violates Explore-then-constrain.  
6. **Exam chrome on emergency card** — `learning-objectives` / `mc-question` as the opening frame when the reader needs act-now cues.  
7. **DDx essay** — full differential dissertation instead of short confusion box; wrong genre weight.

(Minimum required by track acceptance: ≥3; this recipe documents more for pilot quality.)

---

## How roles use this recipe

| Role | Use |
|---|---|
| **Media** | Functional checklist for Brief sections; free ideal language first; may exceed recommended map |
| **Tech** | Map Brief sections → form ids; mark `gap` for `protocol-steps` until stable |
| **Validator** | Load `*.minima.yaml`; enforce distinct/gatekeeper/sole-form rules; do **not** enforce recommended map as exclusive |
| **Author** | Owns clinical content/claims — not form choice |

---

## Related paths

- Minima YAML: `domains/medical/recipes/notfall-karte.minima.yaml`  
- Core whitelist: `toolset/form-catalog/core/forms.yaml`  
- Brief template: `domains/medical/templates/media-brief.template.md`  
- Governance: `devtracks/CONSENSUS-v0.md`, `devtracks/PRODUCT-BOUNDARIES.md`
