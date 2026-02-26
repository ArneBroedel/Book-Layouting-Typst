---
name: typst-writer
description: "Write correct, idiomatic Typst code and fix document layout issues. ALWAYS use this skill when creating, editing, or debugging any .typ file, when resolving Typst compile errors, when fixing visual defects like overlap, clipping, or content flying off the page, or when building reusable Typst components (themed blocks, chapter openers, grids, multi-column layouts). Also use when the user asks about Typst syntax, page setup, styling, or 'why does my Typst look wrong'. This skill covers everything from basic syntax to advanced layout patterns, the typst CLI, and how to look up Typst documentation via Context7."
---

# Typst Writer

Write robust, publication-ready Typst documents that compile cleanly and produce stable, visually correct page layout. This skill encodes battle-tested patterns from real multi-chapter book production — every rule here addresses a real failure mode.

## When to use

- Creating or refactoring `.typ` files
- Fixing compile errors (syntax, type mismatches, unknown parameters)
- Debugging visual defects: overlapping blocks, clipped text, frame overflow, content off-page
- Building reusable document components (`#let`, `#show`, themed boxes, chapter openers, cards)
- Setting up page geometry, headers/footers, margins for book or article layouts
- Working with multi-column layouts, grids, and complex positioning
- Any question about "how do I do X in Typst"

---

## 1 — Typst Syntax Essentials

Typst has three modes. Confusing them is the most common source of compile errors.

| Mode       | Trigger                    | Purpose                                                     |
| ---------- | -------------------------- | ----------------------------------------------------------- |
| **Markup** | Default in `.typ`          | Text, headings (`=`), lists (`-`, `+`), emphasis (`_`, `*`) |
| **Code**   | `#` prefix or `{ }` blocks | Function calls, variables, logic, loops                     |
| **Math**   | `$...$`                    | Equations; `$ x^2 $` (with spaces) renders as display block |

### Core syntax facts

- **Arrays**: `(a, b, c)` — parentheses, NOT brackets
- **Dictionaries**: `(key: value, key2: value2)` — also parentheses
- **Content blocks**: `[markup text]` — brackets create content values
- **Code blocks**: `{ let x = 1; x + 2 }` — braces for multi-statement code
- **Strings**: `"hello"` — double quotes only
- **Named arguments**: `function(param: value)` — colon syntax
- **Kebab-case**: `column-gutter`, `first-line-indent` — Typst convention for identifiers

### The `#` toggle

- In **markup context**, prefix code expressions with `#`: `#image("fig.png")`, `#text(red)[word]`
- In **code context** (inside `{ }`, function arguments), do NOT add `#`
- If you see `expected content` / `expected expression`, you likely have a missing or extra `#`

```typst
// Markup mode — need # to call functions
This has an inline #box(fill: yellow)[highlight].

// Code mode — no # inside the block
#let make-label(name) = {
  let color = blue  // no # here
  box(fill: color.lighten(80%), inset: 4pt)[#name]
}
```

---

## 2 — Parameter Ownership (Which Function Controls What)

Getting this wrong causes confusing errors or silent misbehavior. This table covers the most commonly misattributed parameters:

| What you want             | Correct function | Example                                | Common mistake                           |
| ------------------------- | ---------------- | -------------------------------------- | ---------------------------------------- |
| Line spacing              | `par`            | `set par(leading: 1.35em)`             | `set text(leading: ...)` — WRONG         |
| Space between paragraphs  | `par`            | `set par(spacing: 1.2em)`              | Confusing with `block(spacing: ...)`     |
| Font, size, color, weight | `text`           | `set text(font: "...", size: 11pt)`    | —                                        |
| Justification             | `par`            | `set par(justify: true)`               | —                                        |
| Internal padding          | `block`/`box`    | `block(inset: 8pt)`                    | Confusing `inset` with `spacing`         |
| External margin           | `block`          | `block(spacing: 12pt)`                 | `spacing` = space before/after the block |
| Page size & margins       | `page`           | `set page(paper: "a4", margin: (...))` | —                                        |
| Heading auto-numbering    | `heading`        | `set heading(numbering: "1.1")`        | —                                        |

---

## 3 — Layout Model: Containers and Flow

### Block vs Inline

| Container | Level       | Key fact                                                            |
| --------- | ----------- | ------------------------------------------------------------------- |
| `block`   | Block-level | Starts a new line, full width by default, can be `breakable: false` |
| `box`     | Inline      | Flows with text, no line break; use `baseline` param for alignment  |
| `grid`    | Block-level | Multi-column/row layout, children as positional args                |
| `stack`   | Block-level | Single-axis arrangement (`ttb`, `ltr`, `rtl`, `btt`)                |
| `columns` | Block-level | Flowing multi-column content within a scoped region                 |

### The grid: your primary layout tool

Use `grid()` for sidebars, cards, galleries, and any multi-column structure:

```typst
grid(
  columns: (200pt, 1fr),  // fixed sidebar + flexible main
  gutter: 16pt,
  sidebar-content,
  main-content,
)
```

**Critical**: Pass grid children as **positional arguments**, not inside a content block:

```typst
// ✅ CORRECT — each child = one cell
grid(columns: 2, [Cell A], [Cell B], [Cell C], [Cell D])

// ❌ WRONG — one content block, cells don't map properly
grid(columns: 2)[#[Cell A] #[Cell B]]
```

For dynamic content, use spread + map:

```typst
grid(
  columns: 3,
  gutter: 8pt,
  ..items.enumerate().map(((i, item)) => {
    let color = colors.at(calc.rem(i, colors.len()))
    block(fill: color.lighten(88%), inset: 8pt)[#item]
  })
)
```

### Track sizing

- `auto` — content-driven
- Fixed: `10pt`, `2cm`, `20% - 1cm`
- Fractional: `1fr`, `2fr` — share remaining space proportionally

---

## 4 — Multi-Column Layouts

### `columns()` function vs `set page(columns: ...)`

This distinction is **critical** — getting it wrong was our single most destructive bug.

| Approach                        | Scoped?                                 | Use case                                                |
| ------------------------------- | --------------------------------------- | ------------------------------------------------------- |
| `columns(2, gutter: 12pt)[...]` | ✅ Yes — ends when the block ends       | Magazine sections, paper bodies, any reusable component |
| `set page(columns: 2)`          | ❌ LEAKS — affects ALL subsequent pages | Document-level default only, never inside a component   |

**Rule: Never use `set page(columns: ...)` inside a reusable function.** It will make every page after the function call render in multi-column mode. Use the `columns()` function instead.

```typst
// ✅ CORRECT — scoped to this block
#let magazine-layout(body) = columns(2, gutter: 14pt)[#body]

// ❌ BROKEN — leaks to entire rest of document
#let magazine-layout(body) = {
  set page(columns: 2)
  body
}
```

Use `#colbreak()` to force a column break inside `columns()`.

---

## 5 — Placement and Positioning

### When `place()` is safe

`place()` removes content from normal flow and positions it relative to its container. It does NOT consume vertical space.

**Safe uses:**

- Decorative overlays on covers (circles, gradient bars)
- Labels pinned to known-size images
- Accent bars bleeding into margins: `place(dx: -22mm, block(width: 130%, ...))`

**Dangerous uses (avoid):**

- Side notes / margin notes → use `grid()` instead
- Pull quotes → use in-flow `block()` instead
- Anything that must interact with page breaks → placed content can land on wrong pages

### `place(float: true)` requires explicit alignment

```typst
// ❌ COMPILE ERROR — no alignment specified
place(float: true)[...]

// ✅ CORRECT — explicit top or bottom
place(float: true, top, scope: "parent")[...]
```

### Hardcoded offsets are fragile

`place(right, dx: 25mm)` will fly off the page if margins change. Prefer relative/grid-based layout for structural content. Only use `dx`/`dy` for decorative elements with known, fixed geometry.

---

## 6 — `set` and `show` Rules

### `set` rules — defaults for elements

```typst
#set text(font: "Linux Libertine", size: 11pt, lang: "de")
#set par(justify: true, leading: 1.35em, spacing: 1.2em)
#set page(paper: "a4", margin: (top: 20mm, bottom: 22mm, inside: 22mm, outside: 18mm))
```

`set` rules apply to all subsequent content in the current scope (`{ }` or `[ ]`).

**Critical scoping rule:** Most `set` rules are safely scoped inside functions. But `set page(...)` is special — page-level settings can leak beyond a function's scope into subsequent content. Keep `set page(...)` at the top level or in dedicated setup functions.

### `show` rules — transform element rendering

```typst
// Show-set: adjust defaults for a specific element
show heading: set text(fill: blue)

// Transform: completely redefine how an element renders
show heading.where(level: 1): it => block(width: 100%, breakable: false)[
  #text(size: 20pt, weight: 800)[#it.body]
  #v(4pt)
  #line(length: 100%, stroke: 1.2pt + blue)
]
```

Inside a show rule, `it.body` gives the heading text (without numbering). Use `counter(heading).display()` for the number.

### Selector targeting

```typst
show heading.where(level: 2): ...             // only h2
show heading.where(level: 1, outlined: true): ... // only outlined h1
```

---

## 7 — Heading Systems

### Never mix auto-numbering with manual chapter numbers

If your chapter opener shows "03" manually AND you have `set heading(numbering: "1.1")`, you get ugly duplicates like "1 03 Layout-Techniken".

**Choose one approach:**

- Pure auto-numbering: `set heading(numbering: "1.1")`, no manual numbers
- Pure manual: Handle numbers in your opener component, don't set heading numbering

### Headings inside component bodies

When you pass `= Heading` inside a component body, it's still a global level-1 heading and triggers the global show rule. Inside a two-column paper component, this looks wrong.

**Fix:** Use `== Level 2` inside component bodies, or add a scoped show rule inside the component to override the global style.

### Avoid duplicate headings

If `#chapter-opener("Title")` is your visual heading, don't also write `= Title` — that creates two level-1 headings on the page.

---

## 8 — Page Setup for Books

### Inside/outside margins for binding

```typst
set page(margin: (
  top: 20mm, bottom: 22mm,
  inside: 22mm,   // binding side — auto-mirrors for odd/even
  outside: 18mm,
))
```

### Chapter starts on odd pages

```typst
pagebreak(to: "odd", weak: true)
```

`weak: true` prevents a double break if already on an odd page.

### Suppressing headers on special pages

For covers or chapter openers, use `set page(header: none, footer: none)`. Re-apply your normal page setup function afterward.

### Full-bleed cover + restore pattern

A book cover needs zero margins and no headers/footers. After the cover, normal page geometry must be restored. This requires careful sequencing with `#show:`:

```typst
// components/spreads.typ
#let book-cover(title: [], subtitle: [], author: []) = {
  set page(margin: 0pt, header: none, footer: none)
  // Full-page gradient background
  block(width: 100%, height: 100%, fill: gradient.linear(
    rgb("#0a3d4f"), rgb("#0d7377"), angle: 135deg,
  ))[
    // Use place() for decorative overlays and text positioning
    #place(center + horizon)[#text(fill: white, size: 28pt)[#title]]
    #place(center + bottom, dy: -40mm)[#text(fill: white)[#author]]
  ]
}

// main.typ — sequencing matters!
#show: setup-typography()       // typography wraps everything
#include "chapters/00-cover.typ" // cover has its own set page(margin: 0pt)
#pagebreak()
#show: setup-pages()            // restores margins, headers, footers
#outline(title: [Inhaltsverzeichnis], depth: 3)
#include "chapters/01-intro.typ"
```

**Why this works:** The cover's `set page(margin: 0pt)` is scoped to its content. After `#pagebreak()`, the `#show: setup-pages()` reapplies normal margins. If setup-pages isn't re-invoked, the cover's zero margins leak into subsequent pages.

### Context-aware headers

```typst
header: context {
  let headings = query(selector(heading.where(level: 1)).before(here()))
  if headings.len() > 0 {
    // render with headings.last().body
  }
}
```

`context` is required for `here()`, `query()`, and `counter().display()`. Odd/even detection: `calc.even(here().page())` inside a `context` block.

---

## 9 — Color Manipulation

| Method                 | What it does     | Best for                                 |
| ---------------------- | ---------------- | ---------------------------------------- |
| `.lighten(90%)`        | Mix toward white | Light backgrounds, tints                 |
| `.darken(20%)`         | Mix toward black | Text on light bg                         |
| `.transparentize(80%)` | Add alpha        | Decorative overlays, watermarks          |
| `.mix(other)`          | Blend two colors | Less predictable — prefer lighten/darken |

Define semantic colors in a central theme file and import them everywhere:

```typst
#let palette = (
  ink: rgb("#101418"),
  paper: rgb("#ffffff"),
  accent: rgb("#1a6b8a"),
  info: rgb("#1b6ca8"),
  info-light: rgb("#e0f2fe"),
  // ...
)
```

---

## 10 — Reusable Component Design

### Function signature pattern

The **body** (trailing content argument) must be last:

```typst
#let card(body, title: none, accent: palette.accent) = block(
  width: 100%,
  breakable: false,
  stroke: (left: 3pt + accent),
  inset: 12pt,
)[
  #if title != none { strong[#title]; v(4pt) }
  #body
]
```

Use named parameters with defaults for optional arguments — this keeps the API stable when you add features.

### Two-content components

For sidebar + main, or main + note:

```typst
#let side-note(main, note) = grid(
  columns: (1fr, 140pt), gutter: 16pt,
  main,
  block(fill: luma(95%), inset: 8pt)[#set text(size: 9pt); #note],
)
```

### Breakability

For decorative blocks that look terrible when split, always add `breakable: false`: cards, pull-quotes, admonitions, decision boxes.

### Positional vs named arguments in custom functions

Typst's function parameters have a critical distinction: **positional parameters cannot be passed by name at the call site**. This was one of the most frequent errors in multi-chapter projects.

```typst
// Function definition — body, hero, and sidebar are positional
#let magazine-layout(hero, body, column-count: 2) = {
  hero
  columns(column-count)[#body]
}

// ❌ WRONG — positional args can't use name: syntax
#magazine-layout(hero: [...], body: [...])
// Error: "unexpected argument: hero"

// ✅ CORRECT — pass positionally, in order
#magazine-layout([hero content], [body content])

// ✅ Also correct — trailing content for last positional arg
#magazine-layout([hero content])[body content]
```

**Rule of thumb**: If a function parameter has no default value and isn't followed by `:`, it's positional. At the call site, just pass the values in order without labels. Named parameters (those with defaults like `column-count: 2`) use the `name: value` syntax.

### Inline elements

Use `box` (not `block`) with `baseline` alignment:

```typst
#let badge(body, color: blue) = box(
  inset: (x: 6pt, y: 2pt), radius: 999pt,
  fill: color.lighten(85%),
  baseline: 20%,   // aligns with surrounding text
)[#set text(size: 8pt, weight: "bold", fill: color.darken(20%)); #body]
```

`outset: (y: 2pt)` extends the fill beyond the box boundary — useful for highlight effects.

---

## 11 — The `sym.` Namespace

The `sym.` namespace provides named Unicode symbols, but it's a **curated subset** — not every Unicode symbol has an alias.

```typst
sym.arrow.r         // → works
sym.checkmark       // ✓ works
sym.circle.filled   // ● works

sym.lightning       // ❌ DOES NOT EXIST
sym.lightbulb       // ❌ DOES NOT EXIST
sym.checkmark.double // ❌ DOES NOT EXIST (checkmark has no sub-variants)
```

When a `sym.` name doesn't exist, paste the Unicode character directly or use a text-based fallback. If unsure whether a symbol exists, look it up in the Typst docs via Context7 (see section 14). Don't guess — incorrect `sym.` names cause hard compile errors.

---

## 12 — Compile, Verify, Fix Workflow

### Step 1: Compile

```powershell
# Basic compile (from project that has src/main.typ)
typst compile --root . src/main.typ dist/book.pdf

# Or for a standalone project
typst compile main.typ

# With custom fonts
typst compile --root . --ignore-system-fonts --font-path fonts src/main.typ dist/book.pdf
```

Fix all hard errors before any visual tuning.

### Step 2: Visual verification via PNG export

```powershell
# All pages to PNG (200 PPI)
typst compile --format png --ppi 200 main.typ "png_output/page-{0p}-of-{t}.png"

# Single page only (e.g., page 5)
typst compile --format png --ppi 200 --pages 5 main.typ "png_output/page-{0p}-of-{t}.png"
```

Inspect problematic pages first, then adjacent pages for regressions.

### Step 3: Watch mode for iterative editing

```powershell
typst watch --root . src/main.typ dist/book.pdf
```

Recompiles on each file save. Useful during active development.

### Step 4: Root-cause decision tree

| Symptom                            | Root cause                                  | Fix                                                     |
| ---------------------------------- | ------------------------------------------- | ------------------------------------------------------- |
| Items overlap text                 | `place()` used for structural content       | Replace with `grid`, `stack`, or `block`                |
| Content cut off                    | `clip: true` or undersized container        | Remove clip, increase height, add inset                 |
| Full-page background breaks layout | `set page(background: ...)` interactions    | Use contained hero block instead                        |
| Columns leak to following pages    | `set page(columns: 2)` in a function        | Replace with `columns(2)[...]` function                 |
| Heading appears twice              | Chapter opener + `= Heading` duplicated     | Remove the `= Heading` line                             |
| Pull quote flies off page          | `place(dx: ...)` with hardcoded offset      | Replace with in-flow `block` or `grid`                  |
| Block splits across columns uglily | Default `breakable: true`                   | Add `breakable: false`                                  |
| Orphaned heading                   | `pagebreak()` placed after heading          | Move `pagebreak()` before the heading                   |
| Only 1 page renders                | Setup function returns content, not closure | Return `body => { set ...; body }`, apply with `#show:` |
| "unexpected argument" error        | Positional arg passed with name label       | Remove the `name:` label, pass positionally             |
| Font warnings / wrong glyphs       | Font not available on system                | Run `typst fonts` to verify, update font stack          |

### Step 5: Completion checks

- Compiles with 0 errors
- User-reported pages are visually fixed
- No new overflow/overlap on adjacent pages
- Changes are minimal and localized

---

## 13 — Common Gotchas Quick Reference

| Gotcha              | Wrong                                            | Right                                                                      |
| ------------------- | ------------------------------------------------ | -------------------------------------------------------------------------- |
| Line spacing        | `set text(leading: 1.35em)`                      | `set par(leading: 1.35em)`                                                 |
| Float placement     | `place(float: true)[...]`                        | `place(float: true, top)[...]`                                             |
| Scoped columns      | `set page(columns: 2)` in function               | `columns(2)[...]`                                                          |
| Side notes          | `place(right, dx: 25mm)`                         | `grid(columns: (1fr, 140pt))`                                              |
| Grid children       | `grid(...)[#a #b]`                               | `grid(..., a, b)`                                                          |
| Heading numbering   | `set heading(numbering: "1.1")` + manual numbers | Choose one approach                                                        |
| Symbol names        | `sym.lightning`                                  | Check Typst docs; use Unicode char directly if no alias                    |
| Non-breaking block  | `block(...)` (breakable by default)              | `block(breakable: false, ...)`                                             |
| Array syntax        | `[a, b, c]`                                      | `(a, b, c)`                                                                |
| LaTeX habits        | `\section{...}`, `\begin{...}`                   | `= Heading`, `#function[...]`                                              |
| Positional as named | `sidebar-layout(main: [...], sidebar: [...])`    | `sidebar-layout([...], [...])` — positional args have no name at call site |
| Setup functions     | `#setup-typography()` (plain call)               | `#show: setup-typography()` — must use `#show:` with closure pattern       |

---

## 14 — Looking Up Typst Documentation via Context7

When you're unsure about a Typst function, parameter, or feature, use the **Context7 MCP** to search the official Typst documentation.

### How to use Context7

1. **Resolve the library ID** (only needed once per session):
   - Call `mcp_context7_resolve-library-id` with query `"typst"`
   - The result is `/typst/typst`

2. **Query the docs** for the specific topic:
   - Call `mcp_context7_query-docs` with `libraryId: "/typst/typst"` and a descriptive `topic`

### When to use Context7

- Before using a function or parameter you haven't verified
- When you hit an unexpected compile error and need to check correct syntax
- When you're unsure if a `sym.` name exists
- When the user asks "can Typst do X?" and you're not 100% certain
- When you need to check the exact parameter names/types for a function

### Examples

```
// Check if place() supports a certain parameter
topic: "place function parameters float scope"

// Look up grid cell spanning
topic: "grid cell colspan rowspan"

// Verify symbol existence
topic: "sym symbols list available"

// Check page margin syntax
topic: "page margin inside outside binding"
```

### Important

Context7 queries the live Typst documentation at https://typst.app/docs/. This is the authoritative source. If the guide files in the workspace conflict with the official docs, trust the official docs.

---

## 15 — Project Architecture Patterns

### Token-based design system

Centralize all design tokens (colors, spacing, type scale) in a single theme file. Every other file imports from it — never hardcode colors or sizes.

```
styles/
  theme.typ        ← Pure data: palette, space, type dictionaries
  typography.typ   ← set/show rules for text, par, headings
  page.typ         ← set page rules (margins, header, footer)
components/
  blocks.typ       ← card, callout, blockquote, side-note, pull-quote
  layouts.typ      ← sidebar, magazine, scientific paper helpers
  grids.typ        ← Gallery grid, data-driven layouts
  inline.typ       ← badge, highlight, icon
  spreads.typ      ← Full-page: cover, chapter opener
```

Components import only from theme — never from each other (prevents circular deps).

### Setup function closure pattern

Setup functions that apply `set` rules to the rest of the document **must** return a closure and be applied via `#show:`. This was the single most critical architectural pattern — getting it wrong caused the entire document to render as a single blank page.

```typst
// ❌ BROKEN — set rules apply only inside the function's own { } block
#let setup-typography() = {
  set text(font: "Libertinus Serif", size: 10.5pt)
  set par(justify: true, leading: 0.65em)
  // nothing is returned — these rules die here
}

// ✅ CORRECT — returns a closure that wraps ALL subsequent content
#let setup-typography() = body => {
  set text(font: "Libertinus Serif", size: 10.5pt)
  set par(justify: true, leading: 0.65em)
  body  // ← passes through everything that follows
}
```

**Apply via `#show:`**, never as a plain function call:

```typst
// main.typ
#import "styles/typography.typ": setup-typography
#import "styles/page.typ": setup-pages

#show: setup-typography()   // wraps all subsequent content
// Cover goes BEFORE page setup (zero margins)
#include "chapters/00-cover.typ"
// Restore normal pages after cover
#pagebreak()
#show: setup-pages()        // re-wraps from here onward
#include "chapters/01-intro.typ"
```

**Why `#show:` works:** When you write `#show: func`, Typst passes all subsequent content as the argument to `func`. If `func` returns a closure `body => { ... body }`, the set rules inside it wrap everything that follows. Without the closure, the function returns `none` and the document is empty.

### Chapter file pattern

```typst
#import "../styles/theme.typ": palette, space, type
#import "../components/spreads.typ": chapter-opener
#import "../components/blocks.typ": card, side-note

#chapter-opener("Chapter Title", number: "01")
// Content starts directly — NO duplicate = heading
== First Section
...
```

---

## 16 — Anti-Patterns to Avoid

- **`place()` for structural layout** — use grid/block for anything in reading flow
- **`set page(...)` inside components** — leaks to all subsequent pages
- **Mixing auto + manual heading numbers** — creates duplicates
- **Hardcoded positioning** (`dx: 25mm`) — breaks when margins change, prefer relative sizing
- **Content block as grid children** — `grid[#a #b]` merges into one cell, use positional args
- **Deeply nested `place()` calls** — fragile cascade of misalignment
- **LaTeX-style commands** — `\section`, `\begin{figure}` — Typst has its own syntax
- **Assuming `sym.name` exists** — check first, use Unicode directly as fallback
- **Iterating variadics directly** — use `.pos()` on `..args` before looping
- **Setup functions as plain calls** — `#setup-typography()` does nothing; must use `#show: setup-typography()` with closure pattern
- **Naming positional args at call sites** — `func(param: val)` only works for named parameters (those with defaults); positional args must be passed in order without labels

---

## 17 — Typst CLI Reference

```powershell
# Compile to PDF
typst compile main.typ                       # → main.pdf
typst compile main.typ output.pdf            # → explicit output path
typst compile --root . src/main.typ dist/book.pdf  # → with project root

# Compile to PNG
typst compile --format png --ppi 200 main.typ "png_output/page-{0p}-of-{t}.png"
typst compile --format png --ppi 200 --pages 5 main.typ "page5.png"  # single page

# Watch mode (recompile on save)
typst watch main.typ
typst watch --root . --font-path fonts src/main.typ dist/book.pdf

# Custom fonts (ignore system fonts, use project fonts/)
typst compile --ignore-system-fonts --font-path fonts main.typ

# PDF/UA-1 accessibility standard
typst compile --pdf-standard ua-1 main.typ

# List available fonts
typst fonts
typst fonts --font-path fonts  # project fonts only

# Query document metadata
typst query main.typ "<label>"
typst query main.typ "heading"
```

### Output format placeholders

In output paths, these placeholders are available:

- `{p}` — page number (1-based)
- `{0p}` — zero-padded page number
- `{t}` — total page count

### This project's build script

The workspace includes `scripts/build.ps1` with modes:

- `fast` — compile PDF to `dist/book.pdf`
- `watch` — watch mode, auto-recompile
- `ua` — compile to PDF/UA-1 standard

```powershell
pwsh -NoProfile -ExecutionPolicy Bypass -File scripts/build.ps1 -Mode fast
```

---

## 18 — Reference Links

- **Official Typst docs**: https://typst.app/docs/reference/
- **Typst guide (layout)**: https://typst.app/docs/guides/guide-for-latex-users/
- **Introspection/query**: https://typst.app/docs/reference/introspection/query/
- **Typst packages (Universe)**: https://typst.app/universe
- **Context7 MCP library ID**: `/typst/typst` (use with `mcp_context7_query-docs`)
