# Showcase-v2: Phase 5 — Spreads & Special Pages

## Objective

Build full-page and multi-page constructs: book cover, chapter openers, part pages, and section breaks. These are the highest-impact visual elements — the pages that make readers say *"This was made with Typst?"*

## Dependencies

- Phases 0–4 complete (tokens, typography, page, components, layouts)

## Critical Warning: v1 Failure Points

Spreads were the single biggest source of v1 bugs:
- **Duplicate headings**: Chapter opener component + `= Title` created double headings
- **`set page(...)` leaking**: Cover page's zero-margin setting leaked to all subsequent pages
- **`place()` offset chaos**: Hardcoded `dx`/`dy` values caused content to fly off-page

v2 rules for spreads:
1. **Chapter opener IS the heading** — chapters must NOT add `= Title` after calling `chapter-opener()`
2. **Cover page must restore normal page setup** — call `setup-pages()` immediately after
3. **Decorative overlays only** — `place()` is only for non-flow decoration on covers

## Tasks

### 5.1 Book Cover (`components/spreads.typ`)

#### 5.1.1 `book-cover()`

Full-bleed cover with gradient background, title, subtitle, and decorative elements.

```typst
#let book-cover(
  title: none,
  subtitle: none,
  author: none,
  edition: none,
) = {
  // Override page settings for cover only
  set page(
    margin: 0pt,
    header: none,
    footer: none,
  )

  // Full-page gradient background
  block(
    width: 100%,
    height: 100%,
    fill: gradients.cover,
    {
      // Decorative circle overlay (top-right)
      place(
        top + right,
        dx: -20pt,
        dy: 40pt,
        circle(
          radius: 80pt,
          fill: palette.primary-light.transparentize(70%),
        )
      )

      // Decorative circle overlay (bottom-left)
      place(
        bottom + left,
        dx: 30pt,
        dy: -60pt,
        circle(
          radius: 120pt,
          fill: palette.accent.transparentize(80%),
        )
      )

      // Accent bar
      place(
        left + horizon,
        rect(
          width: 8pt,
          height: 60%,
          fill: palette.accent,
        )
      )

      // Main title group — centered
      align(center + horizon,
        block(
          width: 70%,
          {
            // Title
            text(
              size: type-scale.display,
              weight: "bold",
              fill: white,
              font: fonts.sans,
              title,
            )

            if subtitle != none {
              v(space.lg)
              text(
                size: type-scale.h3,
                fill: white.darken(10%),
                font: fonts.sans,
                subtitle,
              )
            }

            if author != none {
              v(space.xxl)
              text(
                size: type-scale.lead,
                fill: palette.accent-light,
                font: fonts.sans,
                author,
              )
            }

            if edition != none {
              v(space.md)
              text(
                size: type-scale.small,
                fill: white.darken(20%),
                font: fonts.sans,
                edition,
              )
            }
          }
        )
      )
    }
  )
}
```

> **Pattern**: The cover uses stacked `place()` calls for decorative overlays. This is one of the few acceptable uses of `place()` — on a cover page, there is no reading flow to disrupt.

> **CRITICAL**: After the cover, `main.typ` must call `pagebreak()` and then `setup-pages()` to restore normal page geometry. If this is forgotten, all subsequent pages will have zero margins.

#### 5.1.2 Post-Cover Restoration Pattern

In `main.typ`, the pattern is:

```typst
#book-cover(
  title: [Medizinische\nDidaktik],
  subtitle: [Ein Leitfaden für die moderne Lehre],
  author: [Prof. Dr. med. Beispiel],
  edition: [2. Auflage — 2026],
)

// ⚠️ MANDATORY: Restore normal page setup after cover
#pagebreak()
#setup-pages()
```

### 5.2 Chapter Opener (`components/spreads.typ`)

#### 5.2.1 `chapter-opener()`

Decorative chapter start with number display, title, and optional lead paragraph. This component **creates the heading** — chapters must NOT add their own `= Title`.

```typst
#let chapter-opener(
  title: none,
  label-name: none,           // For cross-references
  lead: none,                 // Optional introductory paragraph
  number: auto,               // auto = use counter, or provide explicit
) = {
  pagebreak(weak: true)

  // Display chapter number
  let chapter-number = if number == auto {
    context counter(heading).display("1")
  } else {
    str(number)
  }

  // Gradient accent bar at top
  block(
    width: 100%,
    height: 6pt,
    fill: gradients.chapter,
    above: 0pt,
    below: space.xxl,
  )

  // Large chapter number
  text(
    size: 60pt,
    weight: "bold",
    fill: palette.primary.lighten(70%),
    font: fonts.sans,
    chapter-number,
  )

  v(space.md)

  // Chapter title as actual heading (this IS the heading)
  heading(level: 1, title)

  // Add label for cross-references if provided
  if label-name != none {
    // Label must be placed right after heading
  }

  if lead != none {
    v(space.md)
    block(
      width: 85%,
      text(size: type-scale.lead, fill: palette.text-muted, style: "italic", lead),
    )
  }

  v(space.xxl)
}
```

> **CRITICAL GUARD**: The `chapter-opener()` calls `heading(level: 1, title)` internally. This IS the chapter heading. Chapter files must NEVER add `= Title` separately. Doing so creates duplicate headings and breaks auto-numbering.

> **Pattern**: The `pagebreak(weak: true)` ensures chapters start on a new page without adding an extra blank page if already at a page start.

> **Note**: The large chapter number display (`60pt`) is purely decorative. The actual heading counter is managed by the `heading()` call. The display number comes from the counter for consistency.

### 5.3 Section Break (`components/spreads.typ`)

Visual separator between major sections within a chapter.

```typst
#let section-break() = {
  v(space.xl)
  align(center,
    block(
      width: 40%,
      {
        line(length: 100%, stroke: 0.5pt + palette.border)
        v(space.xs)
        align(center, text(fill: palette.text-light, size: type-scale.small, sym.diamond.filled))
        v(space.xs)
        line(length: 100%, stroke: 0.5pt + palette.border)
      }
    )
  )
  v(space.xl)
}
```

### 5.4 Part Page (`components/spreads.typ`)

Full-page divider for book parts (e.g., "Teil I: Grundlagen").

```typst
#let part-page(
  number: none,
  title: none,
) = {
  pagebreak(weak: true)

  // No running header on this page (handled by header suppression in page.typ)
  align(center + horizon,
    block(
      width: 70%,
      {
        if number != none {
          text(
            size: type-scale.small,
            fill: palette.text-muted,
            font: fonts.sans,
            weight: "bold",
            tracking: 3pt,
            upper(number),
          )
          v(space.lg)
        }

        // Decorative rule
        line(length: 60%, stroke: 2pt + palette.primary)
        v(space.lg)

        text(
          size: type-scale.h1,
          fill: palette.primary,
          font: fonts.sans,
          weight: "bold",
          title,
        )

        v(space.lg)
        line(length: 60%, stroke: 2pt + palette.primary)
      }
    )
  )

  pagebreak()
}
```

### 5.5 Spread Integration Test

Add to `main.typ`:

```typst
// Cover
#book-cover(
  title: [Medizinische Didaktik],
  subtitle: [Moderne Lehrmethoden im klinischen Alltag],
  author: [Prof. Dr. med. A. Beispiel],
  edition: [Showcase v2 — 2026],
)

// ⚠️ Restore normal pages after cover
#pagebreak()
#setup-pages()

// Part page
#part-page(number: "Teil I", title: "Grundlagen")

// Chapter 1 opener
#chapter-opener(
  title: [Einleitung],
  lead: [Ein Überblick über die Prinzipien moderner medizinischer Didaktik und die Ziele dieses Buches.],
)

#lorem(100)

#section-break()

#lorem(100)

// Chapter 2 opener
#chapter-opener(
  title: [Typographie im Detail],
  lead: [Warum die richtige Schriftwahl und Lesbarkeit für medizinische Lehrmaterialien entscheidend sind.],
)

#lorem(200)
```

### 5.6 Compile Gate

```sh
cd typst_showcase_v2
typst compile main.typ
typst compile --format png --ppi 200 main.typ "png_output/page-{0p}-of-{t}.png"
```

Visually verify:
- [ ] Cover is full-bleed with gradient, decorative circles, centered title
- [ ] Cover has zero margins (no white border)
- [ ] Page after cover has normal margins (setup-pages restored)
- [ ] Part page is centered, decorative, single page
- [ ] Chapter opener shows large decorative number + gradient bar
- [ ] Chapter opener heading integrates with auto-numbering
- [ ] No duplicate headings (chapter-opener IS the heading)
- [ ] Running header shows correct chapter title on subsequent pages
- [ ] Running header is suppressed on chapter opener pages
- [ ] Section break is centered and visually balances the page
- [ ] Page numbers continue correctly throughout

## Deliverables

- [ ] `components/spreads.typ` with 4 components: book-cover, chapter-opener, section-break, part-page
- [ ] Cover page with full-bleed gradient, overlays, and centered typography
- [ ] Chapter opener that creates the heading (no duplicates)
- [ ] Post-cover page restoration pattern documented and working
- [ ] Spread integration test in `main.typ`

## Acceptance Criteria

- Cover page has truly zero margins (full bleed)
- Normal page setup is correctly restored after cover
- Chapter opener `heading()` call integrates with counter auto-numbering
- No duplicate headings anywhere
- Running headers show the correct chapter title
- `place()` is used only for decorative cover elements (no structural use)
- Section breaks are visually balanced
- Part pages center content vertically

## Anti-Pattern Guards

| Do NOT | Do Instead |
|---|---|
| Add `= Title` after `chapter-opener()` | Opener calls `heading()` internally — it IS the heading |
| Forget `setup-pages()` after cover | Always restore normal page geometry after zero-margin cover |
| Use `place()` for chapter opener layout | Use blocks and vertical spacing (`v()`) in flow |
| Hardcode chapter numbers | Use `context counter(heading).display()` or `auto` |
| Use `place(float: true)` without alignment | Always specify `top` or `bottom` |
| Forget `pagebreak(weak: true)` on openers | Ensures new page without extra blanks |

## Next Phase

[Phase 6: Chapters & Content Assembly](showcase-v2-phase6.md)
