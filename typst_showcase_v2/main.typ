// main.typ — Typst Showcase v2: Medizinische Didaktik
// Final assembly — all content lives in chapter files.

#import "styles/theme.typ": *
#import "styles/typography.typ": *
#import "styles/page.typ": *

// Document metadata
#set document(
  title: "Typst Showcase v2 — Medizinische Didaktik",
  author: "Showcase Project",
  date: auto,
)

// Apply typography
#show: setup-typography()

// ── Cover (before page setup — uses zero margins) ──────────────
#include "chapters/00-cover.typ"

// ── Restore normal page setup after cover ──────────────────────
#pagebreak()
#show: setup-pages()

// ── Table of Contents ──────────────────────────────────────────
#outline(title: [Inhaltsverzeichnis], depth: 3)
#pagebreak()

// ── Part I: Grundlagen ─────────────────────────────────────────
#{
  import "components/spreads.typ": part-page
  part-page(number: "Teil I", title: [Grundlagen])
}

#include "chapters/01-intro.typ"
#include "chapters/02-typography.typ"
#include "chapters/03-structure.typ"

// ── Part II: Praxis ────────────────────────────────────────────
#{
  import "components/spreads.typ": part-page
  part-page(number: "Teil II", title: [Komponenten & Layouts])
}

#include "chapters/04-components.typ"
#include "chapters/05-layout.typ"
#include "chapters/06-advanced.typ"

// ── Back Matter ────────────────────────────────────────────────
#include "chapters/07-backmatter.typ"
