# Allowed non-catalog Typst (production compose)

Production compose may use **stable** form-catalog forms **plus** this mini-basis.
Anything else needs a catalog form (or a documented spike / pilot exception).

Keep this list short. Prefer a catalog form over inventing layout chrome.

## Allowed

| Construct | Notes |
|---|---|
| Headings via markup `=`, `==`, `===` or `#heading` | Structure only. **Do not** re-emit level-1 if `chapter-opener` already owns it. |
| Paragraphs, soft line breaks | Body prose |
| `#emph`, `#strong`, `#underline` (sparingly) | Inline emphasis |
| Lists: `-`, `+`, `1.` / `#list` / `#enum` | Simple lists only — prefer catalog `protocol-steps` for SOPs / algorithms |
| `#link`, `#ref`, `#label`, `#cite`, `#bibliography` | Cross-refs / literature engines (presentation may later get `reference-list`) |
| `#pagebreak` / `#colbreak` | Sparingly; prefer spread helpers for intentional double-pages |
| `#import` of `bookkit` / `bookkit-didactics` | Package surface only — pin versions in consumer |
| `#figure` + caption; alt text when meaningful | Images/diagrams; path conventions per package docs |
| `#table` **only inside** a catalog table form | Prefer `styled-table` / `long-table` / … wrappers |
| `#image` inside figures or form bodies | Assets; no full-bleed chrome unless a form provides it |
| Math `$...$` / `$$...$$` | Equations |
| Raw text `` ` `` / short ` ``` ` for inline snippets | Prefer `code-block` for multi-line display |
| `#set` / `#show` **local** to a form body | Do not redefine page chrome, headers, or theme tokens |
| Counters/state **read** for numbering | Do not invent parallel heading systems |

## Forbidden in production compose

Unless a **stable** form wraps them, or a pilot exception is recorded:

| Forbidden | Why |
|---|---|
| Raw `#rect` / `#circle` decorative chrome | Uncatalogued visual language |
| Ad-hoc `#place` page ornaments | Breaks headers/margins; use forms |
| Free `#grid` / `#stack` as **page layout** | OK *inside* a form body for small structure; not for chapter chrome |
| Uncatalogued full-bleed / background / watermark | Bookkit page-design lives outside this v0 whitelist until curated |
| Custom `#show heading` / page rules that fight `setup-pages` | Theme/styles own chrome |
| Direct medical hardcoding paths / Kursbuch content SoT | Content is Produkt C; recipes are Produkt B |
| Unpinned random `@preview` packages in production chapters | Extension packages only via deliberate form/API growth |
| Claim paraphrase or content rewrite | Content-unantastbar (CONSENSUS ADR) |

## Grey zone (document in feasibility)

- Small `#grid` for 2-column body layout inside a section → prefer `feature-grid` / layout forms when intent matches.
- Native `enum` for short procedures → acceptable interim; file `catalog-gap` if a true protocol form is needed.
- Diagrams (CeTZ/Fletcher) in showcase → production only after form id is `stable` or spike accepted.

## Related

- Forms whitelist: [`forms.yaml`](forms.yaml)
- Gap → planned → stable: [`GAP-PROCESS.md`](GAP-PROCESS.md)
- Anti-patterns: [`ANTI-PATTERNS.md`](ANTI-PATTERNS.md)
