// styles/page.typ — Page geometry, margins, running headers/footers

#import "theme.typ": fonts, palette, space, type-scale

#let setup-pages() = body => {
  set page(
    paper: "a4",
    margin: (
      inside: 25mm, // Binding gutter — generous
      outside: 20mm, // Outer edge
      top: 25mm, // Running header space
      bottom: 25mm, // Footer + page number space
    ),

    // ── Running header ───────────────────────────────────────
    header: context {
      let current-page = here().page()

      // Suppress header on pages that start a chapter
      let chapter-starts = query(heading.where(level: 1))
      let on-chapter-start = chapter-starts.any(h => {
        h.location().page() == current-page
      })
      if on-chapter-start { return }

      // Find the most recent level-1 heading
      let headings = query(heading.where(level: 1).before(here()))
      if headings.len() == 0 { return } // front-matter — no header

      let chapter-title = headings.last().body
      let is-even = calc.even(current-page)

      set text(size: type-scale.small, fill: palette.text-muted, font: fonts.sans)

      if is-even {
        chapter-title
        h(1fr)
      } else {
        h(1fr)
        chapter-title
      }
      v(-4pt)
      line(length: 100%, stroke: 0.4pt + palette.border-light)
    },

    // ── Running footer ───────────────────────────────────────
    footer: context {
      let current-page = here().page()
      let is-even = calc.even(current-page)

      set text(size: type-scale.small, fill: palette.text-muted, font: fonts.sans)

      if is-even {
        counter(page).display()
        h(1fr)
      } else {
        h(1fr)
        counter(page).display()
      }
    },
  )

  body
}
