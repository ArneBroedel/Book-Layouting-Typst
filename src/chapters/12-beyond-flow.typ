// chapters/12-beyond-flow.typ — Jenseits des Standardflusses

#import "../styles/theme.typ": fonts, palette, space, type-scale
#import "../components/spreads.typ": chapter-opener, section-break
#import "../components/blocks.typ": callout, card, code-block, key-concept, pull-quote, side-note
#import "../components/inline.typ": badge, icon-text, tag
#import "../components/grids.typ": feature-grid, gallery-grid
#import "../components/layouts.typ": comparison-layout
#import "../components/tables.typ": styled-table

#chapter-opener(
  title: [Jenseits des Standardflusses],
  lead: [
    Typsts natives Layout-System (mit `grid`, `place` und `columns`) deckt die meisten typografischen Bedürfnisse ab. Manche fortgeschrittene Designmuster — wie absolute Annotationen, flexibles Wrapping oder ikonografische Interfaces — erfordern jedoch Community-Erweiterungen.
  ],
)

// ════════════════════════════════════════════════════════════════
== Absolute Annotationen im Textfluss mit Pinit

#import "@preview/pinit:0.2.2": *

Während Typst mit `place` Elemente relativ zum Layout platzieren kann, ermöglicht Pinit das "Anpinnen" von Positionen direkt im Textfluss, um später absolute Annotationen darauf zu referenzieren.

#figure(
  card()[
    *Warnhinweis zur Medikation:* Die gleichzeitige Einnahme von #pin(1)Macrolid-Antibiotika#pin(2) (wie Clarithromycin) und Statinen ist bei diesem Patienten aufgrund des erhöhten Risikos einer #pin(3)Rhabdomyolyse#pin(4) streng zu überwachen.

    #pinit-highlight(1, 2, fill: palette.danger.transparentize(80%))
    #pinit-highlight(3, 4, fill: palette.warning.transparentize(80%))
    
    #pinit-point-from(
      2,
      pin-dx: 0pt,
      pin-dy: 8pt,
      body-dx: 40pt,
      body-dy: 40pt,
      offset-dx: 0pt,
      offset-dy: 0pt,
    )[
      #rect(fill: palette.danger.lighten(90%), stroke: 1pt + palette.danger, radius: 4pt, inset: 6pt)[
        #text(size: type-scale.small, fill: palette.danger.darken(20%))[
          *Kontraindikation!* \ Interaktion via CYP3A4
        ]
      ]
    ]
  ],
  caption: [Ein mit Pinit annotierter Text. Der Pfeil und die Box sind absolut zum Text positioniert.]
)

#callout(tone: "info")[
  Pinit entflieht dem Standardfluss — die Annotation ist absolut positioniert, unabhängig davon, wie sich der umgebende Text aufgrund von Seitenumbrüchen oder Margenanpassungen verschiebt.
]

// ════════════════════════════════════════════════════════════════
== Flexbox-Wrapping für Typst mit Biceps

#import "@preview/biceps:0.0.1": *

Typsts natives `grid` erfordert feste Spalten- oder Zeilendefinitionen. Wenn Sie Elemente unterschiedlicher Breite verteilen möchten, die sich wie in CSS Flexbox mit `flex-wrap: wrap` auf neue Zeilen umbrechen sollen, ist Biceps das richtige Werkzeug.

#figure(
  card()[
    // biceps might export "flex" or "biceps"
    // we use `flexwrap` according to the docs
    #flexwrap(
      main-spacing: 8pt,
      cross-spacing: 12pt,
      badge(color: palette.primary)[Kardiologie],
      badge(color: palette.info)[Neurologie],
      badge(color: palette.success)[Allgemeinmedizin],
      badge(color: palette.warning)[Radiologie],
      badge(color: palette.danger)[Notfallmedizin],
      badge(color: palette.accent)[Pädiatrie],
      badge(color: palette.primary)[Gastroenterologie]
    )
  ],
  caption: [Biceps verteilt die Badges automatisch auf mehrere Zeilen basierend auf ihrer individuellen Breite.]
)

#side-note(title: [Im Vergleich zum Grid])[
  Ein natives `grid(columns: (1fr, 1fr, 1fr))` erzwingt gleich breite Spalten. Biceps hingegen respektiert die intrinsische Breite der Elemente und bricht flexibel um.
]

// ════════════════════════════════════════════════════════════════
== Icon-Integration mit Fontawesome

#import "@preview/fontawesome:0.6.0": *

Für professionelle, ikonografische Layouts (z. B. in Lebensläufen oder Dashboards) bietet das Fontawesome-Paket eine direkte Integration der bekannten Icon-Bibliothek.

#figure(
  card()[
    #grid(
      columns: (1fr, 1fr),
      row-gutter: 12pt,
      icon-text(fa-stethoscope(fill: palette.primary), [Stethoskop]),
      icon-text(fa-heart-pulse(fill: palette.danger), [Herzschlag]),
      icon-text(fa-user-doctor(fill: palette.info), [Facharzt]),
      icon-text(fa-file-medical(fill: palette.primary), [Patientenakte]),
      icon-text(fa-hospital(fill: palette.primary.darken(20%)), [Klinikum]),
      icon-text(fa-truck-medical(fill: palette.warning), [Krankenwagen]),
      icon-text(fa-virus(fill: palette.danger.darken(20%)), [Virologie]),
      icon-text(fa-pills(fill: palette.success), [Medikation]),
    )
  ],
  caption: [Auswahl an medizinischen Icons, gerendert über das Fontawesome-Paket.]
)

#callout(tone: "warning")[
  Die eingebauten `sym.*` Zeichen in Typst enthalten *keine* UI- oder Anwendungs-Icons (wie sie in Kapitel 8 erwähnt werden). Fontawesome schließt diese Lücke perfekt.
]

#side-note(title: [Zusammenhang])[
  Kapitel 08 erwähnt Fontawesome bereits in der Schnellreferenz — hier zeigen wir die vollständige Integration im Layout.
]

#section-break()
