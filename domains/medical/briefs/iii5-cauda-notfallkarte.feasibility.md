# Feasibility note

- **chapter_id:** III-5 / `cauda-notfallkarte`
- **brief_path:** `domains/medical/briefs/iii5-cauda-notfallkarte.brief.md`
- **catalog_version:** `0.1.0-dev` (pin from `toolset/form-catalog/VERSION`)
- **bookkit_version:** `0.1.0`
- **bookkit-didactics:** `0.1.0` (facet used for `cave` / `memo` / `ddx-box`)
- **genre:** `notfall-karte` (recipe + minima: `domains/medical/recipes/notfall-karte.*`)
- **content_source (C, read-only):** `/home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-07-welle-03-final-10/chapter-iii5-cauda-notfallkarte.md`
- **author:** tech-feasibility (Wave 4.1 E2E pilot III-5)
- **date:** 2026-07-20

## Sections

| brief_section_id | status | form_id or gap_name | notes |
|---|---|---|---|
| **S0** Kapitelstart / Titel | `mapped` | `chapter-opener` | Stable. Owns H1 + optional lead (Genre „Handlungskarte“, Rollenbezug Erstkontakt MSK). No learning-objectives / exam chrome. |
| **S1** Gatekeeper (F1) | `mapped` | `cave` | **Early gatekeeper** — single strong stop box in the first screenful (first ≤3 catalog forms per minima). Alternative stable id: `memo` if Media prefers merksatz tone over warning chrome; default for CES-Notfall = `cave`. One gatekeeper only — no cave-spam. Master-Verweis dezent inside or immediately after body of the box, not competing. |
| **S2** Erkennungs-Trigger + Safety Questions (F2) | `approx` | `callout` (+ BASIS list/enum) | Stable `callout` (tone warning/info) holds scannable trigger bullets; Safety Questions as nested **BASIS enum/list** (ja/nein-tauglich) under or beside triggers. No dedicated `safety-question-check-strip` form — wishlist only; approx is acceptable for pilot. Do not use prose wall. |
| **S3** Handlungstabelle (F3) | `mapped` | `styled-table` | Stable. Criteria → urgency → action columns from content claims (copy-through). Default-to-Danger / „ein Flag reicht“ as explicit row(s), not buried. Schwellen-Hinweis (keine ml / keine PT-Stunden) as table footnote or short BASIS note under table — not a new prose block before action. Urgency-lane visual weight is **approx** within generic table chrome; dedicated `decision-table` / triage-strip remains **planned** (see gaps) — not required for first pilot if Media Accepts table mass + row emphasis. |
| **S4** Sofortmaßnahmen vor Ort (F4) | `approx` | BASIS `enum` + `callout` (hard stops optionally `cave`) | Ideal form **`protocol-steps` is `planned` → named gap** (not stable; cannot compose as catalog form). Production interim: numbered BASIS enum for 1…n steps; wrap or precede with `callout` (or single extra `cave` only for absolute technique bans) so stops are not plain bullets. BLS escape → III-2 as short final step / side line, not new main strand. **Media must Accept this approx** or wait for `protocol-steps` promotion. |
| **S5** Häufige Verwechslungen (F5) | `mapped` | `ddx-box` | Stable. Short „sieht aus wie … / Notfall wenn …“ only — no DDx essay. Alternative if two-column layout preferred: short `styled-table` / `comparison-table` (both stable); prefer `ddx-box` for genre signal and minima diversity. |
| **S6** Master- & Pfad-Verweise (F6) | `approx` | `section-break` + BASIS list | Stable `section-break` de-emphasizes trailing zone; compact link list is BASIS (no stable `reference-list` yet — that id is planned, not needed here). Never before F1–F4. |
| **S7** Quellen minimal (F7) | `approx` | BASIS heading + list/par | Trailing only. No stable literature shortlist form (`reference-list` planned). Audit-readable density; not page-1. |
| **S8** Critical Claims + HiL-Hinweis | `mapped`* | non-body / optional trailing BASIS | *Not didactic card body.* Default: leave in Content/Audit workspace (no compose). If Print-Bundle requires claims: trailing appendix only (BASIS table or plain list), **after** F1–F7, clearly labeled Audit — never competes with gatekeeper/action path. No claim paraphrase. Author Q3 may drop entirely from product PDF. |

### Distinct-forms forecast (minima check)

Production path with Accept on approx would use at least:

`chapter-opener`, `cave`, `callout`, `styled-table`, `ddx-box`, `section-break`

→ distinct catalog forms ≥ 4; early window can place `cave` first or second; body is not table-only. Satisfies `notfall-karte.minima.yaml` v0 without inventing forms.

## Catalog gaps to file

| gap / planned id | severity | why not silent substitute | pilot disposition |
|---|---|---|---|
| **`protocol-steps`** (already `planned` in `forms.yaml`) | **high** (F4; supports F3) | Numbered protocol with visual step weight; plain enum lacks step chrome; not a second table. | **Named gap** on S4; compose uses **approx** (enum + `callout`/`cave`) only after Media Accept of compromise. Do not pretend mapped. |
| **`decision-table`** / urgency triage-strip (already `planned` as `decision-table`) | medium | Multi-lane urgency (112 vs. gleichtags vs. ambulant vs. Default-to-Danger) may look equal-loud in generic `styled-table`. | **Not blocking** first pilot: S3 stays **`mapped` → `styled-table`**. Revisit only if Accept/spike later shows visual failure. |
| safety-question check strip | medium (wishlist) | No core id; F2 still scannable via `callout` + list. | No new catalog id filed this round; remain wishlist. |
| single gatekeeper banner | low–medium (wishlist) | `cave` / `memo` already stable for F1 early window. | No gap file; use `cave`. |

Gap process reference: `toolset/form-catalog/core/GAP-PROCESS.md`. `protocol-steps` and `decision-table` already listed `planned` — no duplicate invention; feasibility records use against this pilot.

## Spike recommended?

- [x] **no**
- [ ] yes — goal:

**Rationale:** First notfall-karte pilot. S1/S3/S5 have clean stable maps; S2/S4/S6/S7 compromises are standard recipe interim patterns (callout+list, enum+callout, section-break+BASIS). Approx quality is Accept-visible without a spike. Budget a spike later only if Media rejects S4 step weight or S3 urgency equality after first compose preview.

## Ready for Media Accept?

- [x] **yes**
- [ ] no — blockers:

**Accept focus for Media:** (1) S4 approx without `protocol-steps`; (2) S3 urgency via `styled-table` without dedicated lanes; (3) S2 Safety Questions as list under `callout` not a separate strip; (4) single early `cave` as gatekeeper. Clinical claims unchanged — Tech does not rewrite content.

## Compose binding (post-Accept only)

Stable whitelist for production map (no free layout; no planned ids as if stable):

| Section | Compose form(s) |
|---|---|
| S0 | `chapter-opener` |
| S1 | `cave` (or Accept-switched `memo`) |
| S2 | `callout` + BASIS lists |
| S3 | `styled-table` |
| S4 | BASIS `enum` + `callout` (± limited `cave` for hard bans) |
| S5 | `ddx-box` |
| S6 | `section-break` + BASIS list |
| S7 | BASIS trailing |
| S8 | omit or trailing Audit BASIS only |

Header pins when composing: `catalog_version: 0.1.0-dev`, brief/feasibility/accept/content paths. No production `.typ` in this feasibility step.
