# Preferred Typst constructs (guidance — not an exclusive cage)

**Policy:** `toolset/compose/CREATIVE-COMPOSE.md` — **creative-first**.  
The form-catalog **stable** list is a **preferred, tested library**. Production compose may use the full Typst surface (bookkit, didactics, `@preview`, custom `#let`, layout primitives) when that is the **best** presentation of the Media ideal.

This file documents **common safe constructs** and **still-forbidden content rules**. It is **not** a ban on diagrams, custom chrome, or non-catalog forms.

## Preferred (known-good library)

| Construct | Notes |
|---|---|
| Stable form-catalog forms | Prefer when they **match** the ideal presentation |
| Headings via markup `=`, `==`, `===` or `#heading` | Structure only. **Do not** re-emit level-1 if `chapter-opener` already owns it. |
| Paragraphs, soft line breaks | Body prose |
| `#emph`, `#strong`, `#underline` (sparingly) | Inline emphasis |
| Lists: `-`, `+`, `1.` / `#list` / `#enum` | Simple lists — prefer `protocol-steps` or a true flowchart when order/branching is critical |
| `#link`, `#ref`, `#label`, `#cite`, `#bibliography` | Cross-refs / literature |
| `#pagebreak` / `#colbreak` | Sparingly; prefer intentional spreads when design needs them |
| `#import` of `bookkit` / `bookkit-didactics` | Package surface; pin consumer versions |
| `#figure` + caption; alt text when meaningful | Images/diagrams |
| `#table` inside catalog table forms **or** custom decision layouts | Prefer semantic table forms when they fit |
| `#image` inside figures or form bodies | Assets |
| Math `$...$` / `$$...$$` | Equations |
| Raw text / short code fences | Prefer `code-block` for multi-line display |
| Local `#set` / `#show` | Do not fight `setup-pages` theme without reason |
| Counters/state read for numbering | Do not invent parallel heading systems carelessly |

## Allowed when the ideal needs it (creative-first)

| Construct | Notes |
|---|---|
| CeTZ / Fletcher / other pinned `@preview` | Flowcharts, pathways, timelines — pin versions (`typst-extension`) |
| Custom `#let` helpers in chapter or pilot module | Document in feasibility; file catalog-gap if reusable |
| `#grid` / `#stack` / `#place` as **design** | OK for algorithms, dual-channel layouts, annotation |
| Decorative `#rect` / bands / lanes | OK when they encode urgency or structure — not random chrome |
| Page-design helpers from packages | Full-bleed, bands, etc. when the Brief ideal requires them |
| Planned catalog forms implemented ad-hoc | e.g. decision-table chrome before promotion to `stable` |

## Still forbidden (content / process — not “layout only”)

| Forbidden | Why |
|---|---|
| Critical Claim paraphrase / new clinical thresholds | Content-unantastbar (CONSENSUS ADR) |
| Copying Content SoT into platform as truth | Produkt C stays external |
| Unpinned random package versions | Reproducibility — pin full versions |
| Auto-heal compose loops | Fail-fast; conscious re-run only |
| Silent downgrade of Media ideal to table-only without note | Document fallback in feasibility |

## Grey zone

- Prefer catalog `protocol-steps` for linear SOPs; prefer a **real flowchart** for branching algorithms when the ideal says so.
- Prefer filing a catalog gap after a successful custom pattern so the preferred library grows.
- `strict` whitelist mode is **optional legacy audit only** — not the default quality path.

## Related

- Creative-first policy: [`../../compose/CREATIVE-COMPOSE.md`](../../compose/CREATIVE-COMPOSE.md)
- Forms library: [`forms.yaml`](forms.yaml)
- Gap → planned → stable: [`GAP-PROCESS.md`](GAP-PROCESS.md)
- Anti-patterns: [`ANTI-PATTERNS.md`](ANTI-PATTERNS.md)
