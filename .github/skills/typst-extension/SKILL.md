---
name: typst-extension
description: "Extend Typst with third-party packages, external data (JSON/CSV), CI/CD pipelines, and enterprise tooling. ALWAYS use this skill when importing or integrating any @preview/ package (CeTZ, Fletcher, codly, showybox, tablem, fontawesome, glossarium, etc.), when building data-driven documents that load JSON or CSV files, when setting up GitHub Actions or CI/CD for Typst, when configuring typst.toml package manifests, when debugging package conflicts or namespace collisions, when working with sys.inputs, Quarto integration, PDF/UA accessibility, or enterprise document generation pipelines. Also use when the user asks 'which Typst package should I use for X', 'how do I load data into Typst', or 'how do I set up CI for Typst'. This skill supplements typst-writer (which covers core syntax, layout, and components) with the integration and ecosystem layer."
---

# Typst Extension

Integrate third-party packages, external data sources, CI/CD tooling, and enterprise patterns into Typst documents. This skill encodes patterns verified through building real multi-chapter book projects with 10+ packages and multiple data formats.

## When to use

- Importing or configuring any `@preview/` package
- Building data-driven documents (JSON, CSV, YAML, TOML loading)
- Setting up CI/CD pipelines with GitHub Actions for Typst
- Creating `typst.toml` package manifests for team or enterprise use
- Debugging package conflicts, namespace collisions, or init-order issues
- Working with `sys.inputs` for parameterised builds
- Integrating Typst with Quarto for data-science workflows
- Generating accessible PDFs (PDF/UA compliance)
- Choosing which package to use for a specific task

**Boundary with typst-writer:** If the question is about core Typst syntax, layout primitives, grid/block/place, set/show rules, or component design, use typst-writer instead. If it involves a third-party package, external data, or build tooling, use this skill.

---

## 1 — Package Ecosystem Fundamentals

### Finding packages

The **Typst Universe** at https://typst.app/universe/ is the public package registry. Browse by category or search by name. Each package page lists:

- Version history and changelog
- Dependencies on other packages
- Import examples and documentation

If unsure which package exists for a task, use Context7 (see typst-writer section 14) to query the Typst docs, or search the Universe directly.

### Import syntax and version pinning

Always pin the full version. Unpinned imports resolve to whatever version is latest at compile time — a silent source of breakage across machines and CI runs.

```typst
// ✅ Pinned — deterministic, reproducible
#import "@preview/cetz:0.3.4": canvas, draw
#import "@preview/fletcher:0.5.7" as fletcher: diagram, edge, node

// ❌ Unpinned — will break when the package ships a new major version
#import "@preview/cetz": canvas, draw
```

### Selective vs wildcard imports

Prefer selective imports to avoid namespace collisions:

```typst
// ✅ Selective — only what you need enters scope
#import "@preview/cetz:0.3.4": canvas, draw

// ⚠️ Wildcard — every public name enters scope, may shadow built-ins
#import "@preview/cetz:0.3.4": *
```

### Package init patterns

Packages fall into two categories based on how they integrate:

| Pattern            | Example                    | How it works                                                            |
| ------------------ | -------------------------- | ----------------------------------------------------------------------- |
| **Show-rule init** | codly, glossarium          | `show: codly-init` installs a show rule that intercepts an element type |
| **Direct call**    | showybox, tablem, fletcher | Functions called directly where content should appear                   |

Show-rule initializers are the more dangerous pattern — they install rules **globally** from the point of invocation onward. See section 3 for scoping techniques.

---

## 2 — Popular Package Patterns

### CeTZ — Technical drawings and charts (`@preview/cetz:0.3.4`)

CeTZ provides a 2D canvas with its own coordinate system. The canvas is a self-contained drawing environment — Typst layout functions behave differently inside it.

```typst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *
  set-style(stroke: 0.6pt + luma(120))

  // Axes
  line((0, 0), (7.5, 0))        // x-axis
  line((0, 0), (0, 5.5))        // y-axis

  // Data points with named anchors
  rect((1, 0), (2, 3.8), fill: blue.lighten(70%), name: "bar1")
  circle((1.5, 3.8), radius: 0.08, fill: red)

  // Rotated label — use content() with angle, NOT Typst's rotate()
  content((0, 2.5), angle: 90deg, text(size: 8pt)[Y-Axis Label])

  // Reference named anchors
  content("bar1.north", anchor: "south", padding: 4pt, [3.8])
})
```

**Key pitfalls:**

- Inside `canvas({ import draw: * })`, CeTZ's `rotate` **shadows** Typst's `rotate`. To rotate text, use `content(pos, angle: 90deg, ...)` instead.
- Coordinates are canvas-internal (scaled by `length`), not page coordinates.
- Named anchors (`name: "id"`) enable semantic referencing: `"id.north"`, `"id.south"`, etc.

### Fletcher — Flowcharts and diagrams (`@preview/fletcher:0.5.7`)

Fletcher uses a grid-coordinate system where `(column, row)` specifies node positions and edges connect them.

```typst
#import "@preview/fletcher:0.5.7" as fletcher: diagram, edge, node

#diagram(
  spacing: (12mm, 14mm),
  node-stroke: 0.8pt + palette.border,
  node-inset: 8pt,

  // Nodes at grid positions
  node((0, 0), [Start], shape: fletcher.shapes.pill, fill: green.lighten(80%)),
  node((0, 1), [Decision?], shape: fletcher.shapes.diamond, fill: yellow.lighten(80%)),
  node((-1, 2), [Path A], fill: blue.lighten(80%)),
  node((1, 2), [Path B], fill: red.lighten(80%)),

  // Edges with arrow markers and labels
  edge((0, 0), (0, 1), "-|>"),
  edge((0, 1), (-1, 2), "-|>", label: [Yes], label-side: left),
  edge((0, 1), (1, 2), "-|>", label: [No], label-side: right),
)
```

**Key details:**

- Shapes: `fletcher.shapes.pill`, `fletcher.shapes.diamond` — always qualified with `fletcher.shapes`
- Edge markers: `"-|>"` for arrow, `"-"` for line, `"--|>"` for dashed arrow
- Rows grow downward (row 0 is top)

### Codly — Code block enhancement (`@preview/codly:1.2.0`)

Codly intercepts `raw` blocks via a show rule to add line numbers, zebra striping, and custom formatting.

````typst
#import "@preview/codly:1.2.0": codly, codly-init

// Init installs a global show rule for raw blocks
#show: codly-init

// Configure appearance
#codly(
  zebra-fill: luma(248),
  stroke: 0.5pt + luma(200),
  number-format: n => text(fill: luma(160), size: 8pt, str(n)),
)

// Any subsequent raw block gets codly styling
```json
{ "key": "value" }
````

````

**Known issue (as of v1.2.0):** The `pattern:` parameter was renamed to `tiling:`. Using the old name still works but emits deprecation warnings on every compile. These warnings are low-severity but mask real warnings at scale.

**Scoping:** If codly should only apply to specific code blocks (not all raw blocks in the document), wrap it in a block scope — see section 3.

### Showybox — Styled containers (`@preview/showybox:2.0.4`)

Showybox creates decorated, titled boxes with fine-grained frame control.

```typst
#import "@preview/showybox:2.0.4": showybox

#showybox(
  frame: (
    border-color: red,
    title-color: red.lighten(80%),
    body-color: red.lighten(95%),
    thickness: 2pt,
    radius: 4pt,
  ),
  title-style: (
    color: red.darken(20%),
    weight: "bold",
  ),
  title: [Warning],
)[
  This container has a colored frame, title bar, and body background.
]
````

Configuration is via two dictionaries: `frame` (visual border/fill) and `title-style` (title text formatting). No init pattern needed — pure function call.

### Tablem — Markdown-style tables (`@preview/tablem:0.2.0`)

Tablem lets you write tables in markdown pipe syntax rather than Typst's `table()` function.

```typst
#import "@preview/tablem:0.2.0": tablem

#tablem[
  | Name    | Dose    | Status      |
  |---------|---------|-------------|
  | Patient | 100mg   | \<140/90    |
  | Other   | 50mg    | SpO\>95%    |
]
```

**Critical escape requirement:** Inside tablem content, `<` and `>` trigger Typst's label parser. Always escape: `\<` and `\>`. This is a common source of "unclosed label" compile errors.

### Fontawesome — Icons (`@preview/fontawesome:0.5.0`)

Use fontawesome for any UI-style icon. The `sym.*` namespace does **not** cover application icons — only math operators, Greek letters, arrows, and typographic marks.

```typst
#import "@preview/fontawesome:0.5.0": fa-icon, fa-eye, fa-chart-bar

// Named convenience functions
#fa-eye()  #fa-chart-bar()

// Or by icon name
#fa-icon("keyboard")  #fa-icon("bolt")
```

**When to use fontawesome vs `sym.*`:**

| Need an icon for...                 | Use                            |
| ----------------------------------- | ------------------------------ |
| Arrow, checkmark, math operator     | `sym.arrow.r`, `sym.checkmark` |
| Greek letter                        | `sym.alpha`, `sym.beta`        |
| UI icon (eye, keyboard, chart)      | `@preview/fontawesome`         |
| Typographic mark (pilcrow, section) | `sym.pilcrow`, `sym.section`   |

---

## 3 — Show Rule Scope Hygiene

Package initializers that use `show: pkg-init` install rules **globally from that point onward**. When two packages both intercept the same element type (e.g., `raw` blocks), the last init wins — earlier rules are silently overridden.

### Scoping to a region

Wrap the init and its content inside a code block:

````typst
// Only code blocks inside this block get codly formatting
#{
  show: codly-init
  codly(zebra-fill: luma(248))
  [
    ```json
    { "scoped": true }
    ```
  ]
}

// Code blocks after this point use default Typst raw formatting
````

### When scoping matters

- **Two packages compete over the same element.** Example: codly and another code-highlighting package both redefine `raw`.
- **A package's style should apply to one chapter only.** Wrap the chapter content in a scoped block.
- **A document uses different styles for different code blocks.** Scope each style to its content region.

### Init ordering

When multiple packages need global init, the order matters. The last `show:` rule wins for any element both packages target. Place the most important package's init last.

---

## 4 — Data-Driven Documents

### Loading JSON

```typst
#let data = json("data/patients.json")

// Dot-access for known keys
#data.department
#data.patients.len()

// Functional transforms
#let critical = data.patients.filter(p => p.status == "critical")
#let names = data.patients.map(p => p.name)
#let avg-age = data.patients.map(p => p.age).sum() / data.patients.len()

// Dynamic key access
#let key = "status"
#data.patients.first().at(key)
```

**Type behavior:** JSON integers arrive as Typst integers, strings as strings, arrays as arrays, objects as dictionaries. No conversion needed for numeric JSON fields.

### Loading CSV

```typst
#let raw = csv("data/results.csv")
#let headers = raw.first()      // first row = column names
#let rows = raw.slice(1)        // remaining rows = data

// Access by column index
#let best = rows.sorted(key: r => float(r.at(2))).last()
```

**Critical:** All CSV values are **strings** — even columns that contain numbers in the source file. Always convert with `int()` or `float()` before arithmetic:

```typst
// ❌ Fails or produces wrong result — comparing strings lexicographically
rows.sorted(key: r => r.at(2))

// ✅ Correct — parse to float first
rows.sorted(key: r => float(r.at(2)))
```

### Loading YAML and TOML

```typst
#let meta = yaml("data/meta.yml")
#let config = toml("data/config.toml")
```

Same dictionary access patterns as JSON. Useful for metadata, glossaries, and configuration that humans edit frequently.

### `sys.inputs` — Parameterised builds

Pass values at compile time via `--input`:

```shell
typst compile --input mode=final --input date=2026-02-15 main.typ
```

Inside the document:

```typst
#let build-mode = sys.inputs.at("mode", default: "draft")
#let report-date = sys.inputs.at("date", default: datetime.today().display())

#if build-mode == "draft" {
  // Show draft watermark or callout
}
```

**All `sys.inputs` values are strings.** Even `--input n=5` produces `"5"` (string), not `5` (integer). Convert explicitly:

```typst
#let count = int(sys.inputs.at("count", default: "10"))
#let verbose = sys.inputs.at("verbose", default: "false") == "true"
```

### Rendering data in loops

```typst
#for patient in data.patients {
  let color = if patient.status == "critical" { red }
              else if patient.status == "stable" { green }
              else { blue }

  card(title: [#patient.name], accent: color)[
    *Diagnosis:* #patient.diagnosis \
    *Age:* #str(patient.age) // int → string for content mode
  ]
}
```

Note `str(patient.age)` — when an integer needs to appear in markup, convert it explicitly. Typst does not auto-coerce integers to content.

### Computed analysis from data

```typst
#{
  let total = data.patients.len()
  let critical-count = data.patients.filter(p => p.status == "critical").len()
  let avg-age = calc.round(
    data.patients.map(p => p.age).sum() / total,
    digits: 1,
  )
  let med-count = data.patients.map(p => p.medications.len()).sum()

  // Render statistics grid
  grid(
    columns: (1fr, 1fr, 1fr),
    gutter: 12pt,
    stat-card[Total: #str(total)],
    stat-card[Critical: #str(critical-count)],
    stat-card[Avg Age: #str(avg-age)],
  )
}
```

### Spreading data into table rows

To render CSV or JSON data into a `table()`, use the spread operator:

```typst
#table(
  columns: headers.len(),
  ..headers.map(h => strong(h)),    // header row
  ..rows.flatten(),                  // data rows flattened into cells
)
```

---

## 5 — Common Pitfalls Reference

### Escape characters in content mode

| Sequence       | Problem                         | Fix             |
| -------------- | ------------------------------- | --------------- |
| `@preview/...` | Parsed as `@label` reference    | `\@preview/...` |
| `<140/90`      | Parsed as `<label>` declaration | `\<140/90`      |
| `>95%`         | Closes an unclosed label        | `\>95%`         |
| `_#expr_`      | Unclosed emphasis delimiter     | `_#{expr}_`     |

The `_#{expr}_` pattern: when embedding an inline expression inside `_emphasis_`, the parser sees `_#expr` and treats the trailing `_` as part of the expression, never closing the emphasis. Using the block form `_#{expr}_` explicitly terminates the code expression before the closing underscore.

### Content vs value type mismatches

Typst distinguishes between **content** (`[markup]`) and **values** (strings, integers, arrays). Many utility functions like `str()` accept only values, not content.

```typst
// ❌ Runtime error — str() cannot convert content
#let label = [Chapter 8]
#str(label)

// ✅ Pass a value type
#let label = "Chapter 8"
#str(label)

// ✅ Or pass an integer
#str(8)  // → "8"
```

If a reusable component calls `str()` internally — for example to format a chapter number — pass an integer, not a content block:

```typst
// ❌ chapter-opener calls str() on this internally → error
#chapter-opener(number: [8])

// ✅ Pass raw integer
#chapter-opener(number: 8)
```

### Namespace collisions

When a package defines a function with the same name as a Typst built-in, the package version shadows the built-in silently:

```typst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas({
  import draw: *
  // CeTZ's rotate() is now in scope, shadowing Typst's rotate()

  // ❌ This is CeTZ rotate, not Typst layout rotate
  rotate(90deg, text("label"))

  // ✅ For rotated content inside canvas, use CeTZ's content() with angle
  content((0, 1), angle: 90deg, text("Y-Axis"))
})
```

**Diagnostic:** When a layout primitive behaves unexpectedly inside a package context, check for shadowed names first. Use `import pkg: specific-name` instead of `import pkg: *` when possible.

### `sym.*` — what doesn't exist

The `sym` module is a curated subset of Unicode, not a comprehensive icon library. These commonly-guessed paths do **not** exist:

`sym.keyboard`, `sym.eye`, `sym.chart.bar`, `sym.magnifier`, `sym.bolt`, `sym.checkmark.double`, `sym.square.stroked`, `sym.diamond.stroked`, `sym.document`

Use `@preview/fontawesome` for UI/application icons. Reserve `sym.*` for math operators (`sym.plus`, `sym.times`), arrows (`sym.arrow.r`), Greek letters (`sym.alpha`), and typographic marks (`sym.pilcrow`, `sym.section`).

---

## 6 — CI/CD and Build Tooling

### GitHub Actions with `setup-typst`

```yaml
name: Build Document
on: [push, pull_request]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: typst-community/setup-typst@v4
        with:
          typst-version: latest
      - run: typst compile --root . main.typ output.pdf
      - uses: actions/upload-artifact@v4
        with:
          name: document
          path: output.pdf
```

For font-heavy projects, add `--font-path fonts --ignore-system-fonts` to ensure reproducible builds across environments.

### Typstyle — Code formatting

```shell
# Format a file in-place
typstyle -i src/main.typ

# Check formatting without modifying (CI mode)
typstyle --check src/main.typ
```

Integrates with Tinymist in VS Code for format-on-save.

### Tinymist — Language server profiling

The `tinymist.profileCurrentFile` command identifies which functions or layout passes cause slow compilation. Use it when compile times exceed ~500ms on a document.

### Performance flags for high-volume generation

```shell
# Skip system font scanning — saves 5–100ms per compile
typst compile --font-path ./fonts --ignore-system-fonts main.typ out.pdf

# Pass data at compile time (avoids file I/O for small payloads)
typst compile --input patient='{"name":"Smith","id":42}' main.typ out.pdf
```

For generating millions of documents, integrate Typst as a Rust library (`typst` crate) to eliminate process-spawn overhead entirely.

---

## 7 — PDF/UA Accessibility

### Tagging is on by default (Typst ≥ 0.14)

Since Typst 0.14, every PDF is **tagged/accessible by default** — no flag required. Pass
`--no-pdf-tags` only if you explicitly need an untagged PDF.

### Enforcing strict PDF/UA-1 conformance

```shell
typst compile --pdf-standard ua-1 main.typ accessible.pdf
```

Use `ua-1` for PDF/UA-1 (accessibility). This is **independent** of PDF/A archival profiles
(`a-1b`, `a-2b`, `a-3b`, `a-2a`, …) — `a-2b` is a PDF/A profile, **not** PDF/UA. Since Typst 0.15
a single compile can target several compatible standards at once, e.g.
`--pdf-standard ua-1,a-2a`. The strict `ua-1` flag surfaces errors for missing accessibility data.

### What Typst auto-tags

| Typst element                   | PDF tag              |
| ------------------------------- | -------------------- |
| `= Heading` (level 1–6)         | H1–H6                |
| `- List` / `+ Enum`             | L, LI                |
| `table()` with `table.header()` | Table, TH, TD        |
| `figure()` with `alt:`          | Figure with Alt text |
| `link()`                        | Link                 |
| `footnote()`                    | Note                 |

### What you must provide manually

- **Image alt text:** `image("photo.png", alt: "Description for screen readers")`
- **Table headers:** Use `table.header(...)` as the first row — Typst maps this to `<TH>` tags
- **Figure captions:** `figure(caption: [...])` — the caption becomes the figure's accessible name
- **Language:** `set text(lang: "de")` — correct language tagging enables proper screen reader pronunciation

---

## 8 — Enterprise Patterns

### Package manifest (`typst.toml`)

For reusable team packages:

```toml
[package]
name = "corp-brand"
version = "1.2.0"
entrypoint = "lib.typ"
authors = ["Design Team <design@example.com>"]
description = "Corporate design system"

[package.repository]
url = "https://github.com/org/corp-brand"
```

Install locally to `{data-dir}/typst/packages/local/corp-brand/1.2.0/` and import with `#import "@local/corp-brand:1.2.0"`.

### Multi-layer architecture

Enterprise document systems benefit from three distinct layers:

1. **Foundation** — Low-level utilities, math shorthands, global set rules for baseline typography
2. **Brand** — Colors, fonts, logos, standard show rules for headings and blocks
3. **Templates** — High-level document-type functions (`invoice()`, `report()`, `memo()`) that compose Foundation + Brand

Each layer is a versioned package. Template authors import Brand; Brand imports Foundation. End users import only Templates.

### Quarto integration for data science

Quarto orchestrates R/Python computation and renders final PDFs via Typst:

```yaml
# _quarto.yml
format:
  typst:
    keep-typ: true # preserve intermediate .typ for debugging
```

Styling flows through `_brand.yml`:

```yaml
color:
  primary: "#1a6b8a"
  secondary: "#6c757d"
typography:
  base:
    family: "Linux Libertine"
    size: 11pt
```

Quarto maps CSS properties (color, font-size, border) to Typst equivalents automatically. For deeper customisation, use template partials to inject raw Typst code into the document header.

---

## 9 — Version Upgrade Checklist

When upgrading a package version:

1. Read the changelog on Typst Universe for breaking changes
2. Check if transitive dependencies need updating too
3. Update the version pin in all `#import` statements
4. Compile the full document — not just the changed chapter
5. Visually verify pages that use the package (PNG export recommended)
6. Commit the version bump as its own change, separate from content edits

**Real example:** `@preview/codly` renamed `pattern:` to `tiling:` in v1.2.0. Documents using the old parameter name compiled with deprecation warnings (not errors), which became noisy at scale and masked real warnings. The fix: update the parameter name when upgrading.

---

## 10 — Harvested Gotchas (figures, version bumps, PDF/UA)

Distilled from completed devtracks (image-flow, tool-updates, pdf-ua-compliance, capability-roadmap). Long-form rationale: `Guides/Working_With_Typst-Theory_To_Practice.md`.

### Image & text-flow packages
Typst has no native text-wrap-around-image (typst/typst#553). Stack:

- **`@preview/wrap-it`** — `wrap-content(figure, body, align: top + right, column-gutter: …)`. Simple, rectangular, left/right only. The figure's width must be a definite length (see the `layout()` rule in **typst-writer §19**), not a `box(width: 46%)` wrapper.
- **`@preview/meander`** — contour-wrap engine: `reflow({ placed(align, boundary: contour.margin(..) + contour.grid(div:, fn), img); container(width: 48%); container(align: right, width: 48%); content[..] })`. Centered "circle-hole" = `center + horizon` + two containers. Bound it inside `block(height: …)` so it does not claim the whole page. Put the caption OUTSIDE the obstacle (wrap the whole reflow in `figure`), else text floods the cut-out. The image needs a **transparent background** for a true contour, else its rectangular bbox shows.
- **`@preview/subpar`** — sub-figures (a)(b). It sets the SUPER-figure numbering itself and does NOT inherit a global `set figure(numbering: …)` — pass `numbering:` to `subpar.grid` explicitly.
- **`@preview/i-figured`** — AVOID for per-chapter numbering when `subpar` is present: it renumbers subpar sub-figures ((a)(b) → (b)(d)). Use native numbering (typst-writer §19) instead.
- **`@preview/magnifying-glass:0.1.0`** — BROKEN on Typst 0.15 (old `scale()` signature → `expected content, found float`). Build the magnifier yourself: `box(width: 2r, height: 2r, radius: 50%, clip: true, move(dx:, dy:, image(width: w * zoom)))` + a connector `line`.

### Version-bump gotchas (verify against `packages.typst.org/preview/index.json`)
- Phantom versions are silent: `codly:1.3.1`, `biceps:0.2.0` do NOT exist (latest `1.3.0` / `0.0.1`). A bad pin only fails when actually compiled.
- **Compiler gates:** `codly` needs compiler ≥ 0.13.1; check a package's `typst.toml` `[package] compiler` before bumping. Pin the compiler FIRST (highest-leverage step), and pin ≥ 0.14.2 — it fixes a WASM use-after-free relevant to any WASM plugin (diagraph, ctxjs, badformer, soviet-matrix).
- **Breaking changes:** `ctxjs` 0.3.x→0.5.0: `new-context(module)` + `ctx.eval()` returns a `(context, value)` tuple to destructure (update live call-sites AND displayed snippets). `fletcher` 0.5.7→0.5.8 halves `node-inset` internally → adjust hardcoded `8pt`→`4pt`. `tablem` 0.3.0 auto-detects `|---|` header rows — re-verify tables. `fontawesome:0.6.1` bundles FA6 and needs `fa-version("6")`.
- Audit first: many "outdated" imports live only inside ` ```typ ` code blocks (never compiled, zero risk). Separate compiled imports from documentation-only ones. Run two independent research sources and diff — disagreements are where the real risk lives.

### PDF/UA-1 (`--pdf-standard ua-1`)
- The accessibility flag is `ua-1` (PDF/UA-1), NOT `a-2b` (PDF/A archival). Tagging is on by default since 0.14; `ua-1` adds the UA layer; UA-1 + PDF/A-2a can combine.
- `tidy.show-module` default style hard-aborts UA (`heading title could not be determined` — its "Parameters" heading is a `context` expr). Fix: a local style wrapping `tidy.styles.minimal` that overrides `show-parameter-list` to drop the heading, called as `show-module(.., style: ua-style, show-module-name: false)`.
- `diagraph`/Graphviz: set `fontname="Libertinus Serif"` in the DOT source — `fontname="sans-serif"` warns under `--ignore-system-fonts`.
- The `set figure(alt:)` global fallback and emoji→fontawesome rules live in **typst-writer §19**.

### Medical / didactic capability set
- The full didactic box family (objectives, summary, memo, definition, pearl, cave, excursus, mnemonic, DDx, case) needs NO package — native `box` + icon + design token. Medical charts (bar/box/KM/ROC/forest/percentile) and a genetics pedigree are best hand-built in **`@preview/cetz`** for one consistent visual language; reach for `@preview/lilaq` only when a chart is genuinely hard in raw CeTZ.
- `@preview/marginalia` for collision-free margin notes (coordinate with `page.typ` binding geometry). `@preview/in-dexter` `index[…]` markers in chapters → collected in `main.typ` back matter. `@preview/unify` (or `@preview/zero` for decimal alignment) for `qty`/units.

### Template packages & document-engineering patterns
- **Full-page template packages override global geometry.** `@preview/touying` (slides) and `@preview/ilm` redefine `set page` / global show rules. In a book that owns its `setup-pages`/`setup-typography`, do NOT invoke them live — demonstrate them as a code block + explanatory caption, or inside a tightly scoped container, so they cannot blow up the surrounding geometry.
- **Data separation is a spectrum:** `@preview/brilliant-cv` (structured YAML → opinionated layout) at one end; raw JSON/CSV → fully custom rendering (your own `grid`/`table`) at the other. Choose by how much the data shape should drive layout vs how much control you need.
- **Pattern families worth knowing** (demonstrated in the book's Teil V, harvested from studying Universe templates): dynamic content extraction (`query`/`context`), margin architectures (`measure`+`place`+`state` or `marginalia`), thematic overrides (scoped `show`), data separation. The native-Typst mechanics live in **typst-writer §19**.
