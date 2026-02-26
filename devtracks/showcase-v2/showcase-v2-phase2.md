# Showcase-v2: Phase 2 — Page Setup

## Objective

Define page geometry, binding-aware margins, and context-aware running headers and footers. This phase transforms the document from a plain text dump into a proper book layout.

## Dependencies

- Phase 0 complete (tokens)
- Phase 1 complete (typography — needed for header/footer text styling)

## Tasks

### 2.1 Page Geometry (`styles/page.typ`)

Create a `setup-pages()` function that defines the standard book page:

```typst
#import "theme.typ": palette, type-scale, space, fonts

#let setup-pages() = {
  set page(
    paper: "a4",
    margin: (
      inside: 25mm,      // Binding side — generous gutter
      outside: 20mm,     // Outer edge
      top: 25mm,         // Space for running header
      bottom: 25mm,      // Space for footer + page number
    ),
    // header and footer defined in 2.2 and 2.3
  )
}
```

> **Key pattern**: `inside`/`outside` margins auto-mirror on odd/even pages, creating proper binding gutters.

### 2.2 Running Headers

Context-aware headers that show the current chapter title, alternating position on odd/even pages:

```typst
set page(
  header: context {
    // Skip header on first page of each chapter
    let current-page = here().page()

    // Find the most recent level-1 heading before this point
    let headings = query(heading.where(level: 1).before(here()))

    if headings.len() == 0 {
      // No heading yet — empty header (front matter)
      return
    }

    let chapter-title = headings.last().body
    let is-even = calc.even(current-page)

    set text(size: type-scale.small, fill: palette.text-muted, font: fonts.sans)

    if is-even {
      // Even page: title on left
      chapter-title
      h(1fr)
    } else {
      // Odd page: title on right
      h(1fr)
      chapter-title
    }
    v(-4pt)
    line(length: 100%, stroke: 0.4pt + palette.border-light)
  },
)
```

> **GUARD**: Use `query(heading.where(...).before(here()))` with `.last()` for safety. Always check `headings.len() == 0` for the fallback case (pages before any heading).

### 2.3 Running Footers

Page numbers with position alternating on odd/even:

```typst
set page(
  footer: context {
    let current-page = here().page()
    let is-even = calc.even(current-page)

    set text(size: type-scale.small, fill: palette.text-muted, font: fonts.sans)

    if is-even {
      // Even page: page number on left
      counter(page).display()
      h(1fr)
    } else {
      // Odd page: page number on right
      h(1fr)
      counter(page).display()
    }
  },
)
```

### 2.4 Header Suppression on Chapter Starts

The header should be suppressed on pages that start a new chapter (the chapter opener page). This can be handled by checking if the current page has a level-1 heading that starts on it:

```typst
// Inside the header context block, add this check:
let chapter-starts = query(heading.where(level: 1))
let on-chapter-start = chapter-starts.any(h => {
  h.location().page() == current-page
})
if on-chapter-start { return }
```

### 2.5 Compose into `setup-pages()` Function

Combine 2.1–2.4 into a single `setup-pages()` export function in `page.typ`. The function should use `set page(...)` with all parameters in one call:

```typst
#let setup-pages() = {
  set page(
    paper: "a4",
    margin: (inside: 25mm, outside: 20mm, top: 25mm, bottom: 25mm),
    header: context {
      // ... header logic from 2.2 + 2.4
    },
    footer: context {
      // ... footer logic from 2.3
    },
  )
}
```

### 2.6 Update `main.typ`

Call `setup-pages()` and `setup-typography()` at the top of `main.typ`:

```typst
#import "styles/typography.typ": setup-typography
#import "styles/page.typ": setup-pages

#show: doc => {
  setup-typography()
  setup-pages()
  doc
}
```

Or, if using the simpler pattern:

```typst
#setup-typography()
#setup-pages()
```

> **Note**: The `#show: doc => { ... doc }` pattern wraps the entire document in the rules. Both approaches work; the `#show` pattern is more explicit about scope.

### 2.7 Page Test Content

Add test content to verify layout:
- At least 3 pages of body text to verify margin behavior
- At least 2 level-1 headings to verify header chapter-title switching
- Check odd/even header position alternation
- Verify page numbers appear and alternate correctly

```typst
= Erstes Kapitel

#lorem(200)

= Zweites Kapitel

#lorem(200)

== Abschnitt 2.1

#lorem(100)
```

### 2.8 Compile Gate

```sh
cd typst_showcase_v2
typst compile main.typ
typst compile --format png --ppi 200 main.typ "png_output/page-{0p}-of-{t}.png"
```

Visually verify:
- [ ] Inside margins are wider than outside margins (binding gutter)
- [ ] Margins alternate correctly on odd/even pages
- [ ] Running header shows chapter title
- [ ] Header alternates left/right on even/odd pages
- [ ] Header is suppressed on chapter-start pages
- [ ] Page numbers alternate left/right
- [ ] Subtle header rule line is visible
- [ ] No content overlaps with headers/footers

## Deliverables

- [ ] `styles/page.typ` with `setup-pages()` function
- [ ] Context-aware running headers with chapter title and odd/even alternation
- [ ] Context-aware footers with page numbers and odd/even alternation
- [ ] Header suppression on chapter-start pages
- [ ] Updated `main.typ` calling both setup functions
- [ ] Multi-page test content for verification

## Acceptance Criteria

- Page margins create visible inside/outside asymmetry
- Headers show the most recent level-1 heading title
- Headers gracefully handle pages before any heading (empty)
- Header suppression works on pages that start a new chapter
- Page numbers are correctly alternated
- Document is 3+ pages for meaningful odd/even testing

## Anti-Pattern Guards

| Do NOT | Do Instead |
|---|---|
| Use `context { page.width }` for content-area dimensions | Use `layout(size => ...)` if you need actual content width |
| Hardcode page numbers or chapter titles | Use `context` + `query` + `counter` |
| Forget fallback for empty heading query | Always check `len() == 0` before `.last()` |
| Use fixed left/right margins | Use `inside`/`outside` for binding-aware margins |
| Put `set page(...)` inside components | Only in `setup-pages()` or special cover pages |

## Next Phase

[Phase 3: Block & Inline Components](showcase-v2-phase3.md)
