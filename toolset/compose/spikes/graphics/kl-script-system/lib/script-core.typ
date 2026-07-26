// Wave O — remaining script units (Erysipel pins)
// More visual ambition: CeTZ causal chain, onset bar, case stage
// Rule: no form-meta inside figures; content labels only

#import "/packages/bookkit/theme.typ": palette
#import "@preview/cetz:0.5.2": canvas, draw

// ── U-bigpicture: three-beat strip (Was · Gefahr · Richtung) ───

#let bp-erysipel() = {
  set text(size: 8pt)
  // abstract flame accent — decorative, not explanatory meta
  grid(
    columns: (3.5mm, 1fr),
    column-gutter: 6pt,
    // left accent bar (flame-ish gradient substitute)
    block(
      width: 100%,
      height: 100%,
      fill: gradient.linear(palette.danger, palette.warning, angle: 90deg),
      radius: 1pt,
    ),
    stack(
      spacing: 4pt,
      block(
        width: 100%,
        inset: 7pt,
        fill: palette.bg-subtle,
        radius: (top-right: 3pt, rest: 0pt),
        stroke: (rest: 0pt, bottom: 0.4pt + palette.border-light),
      )[
        #text(size: 7pt, fill: palette.text-muted, weight: "bold")[WAS]
        #v(2pt)
        #set text(size: 8pt)
        Akute bakterielle Infektion der oberen Dermis und Lymphbahnen (meist β-hämolysierende Streptokokken): scharf begrenztes, oft flammenförmiges Erythem — meist einseitig an Bein oder Gesicht — mit Überwärmung, Schmerz, ggf. Fieber/Schüttelfrost.
      ],
      block(
        width: 100%,
        inset: 7pt,
        fill: rgb("#fef2f2"),
        stroke: (left: 3pt + palette.danger, rest: 0pt),
      )[
        #text(size: 7pt, fill: palette.danger, weight: "bold")[GEFAHR]
        #v(2pt)
        #set text(size: 8pt)
        Fehleinschätzung als Überlastung, Stauungsdermatitis oder „nur geschwollenes Bein“ — dahinter rasch progrediente Weichteilinfektion, nekrotisierende Infektion oder Sepsis.
      ],
      block(
        width: 100%,
        inset: 7pt,
        fill: rgb("#f0fdfa"),
        radius: (bottom-right: 3pt, rest: 0pt),
        stroke: (left: 3pt + palette.primary, rest: 0pt),
      )[
        #text(size: 7pt, fill: palette.primary, weight: "bold")[RICHTUNG]
        #v(2pt)
        #set text(size: 8pt)
        Erkennen und ärztlich zuweisen — keine eigenständige antiinfektiöse PT-Behandlung. Vernichtungsschmerz / Krepitation / Schock → *112*; klares Muster mit Systemik → gleichtags / Notaufnahme; sonst nur mit engem Sicherheitsnetz, ohne Lymphdrainage auf floridem Areal.
      ],
    ),
  )
}

// ── U-enabling: triptych + onset scale ─────────────────────────

#let enabling-erysipel() = {
  set text(size: 7.5pt)
  let panel(title, body, bar) = {
    block(
      width: 100%,
      height: auto,
      inset: 6pt,
      radius: 2pt,
      fill: white,
      stroke: (top: 3pt + bar, rest: 0.4pt + palette.border-light),
    )[
      #text(size: 7.5pt, weight: "bold", fill: bar)[#title]
      #v(3pt)
      #set text(size: 7pt, fill: palette.text-body)
      #body
    ]
  }
  grid(
    columns: (1fr, 1fr, 1fr),
    column-gutter: 4pt,
    panel(
      [Risiken & Auslöser],
      [Eintrittspforten: Interdigitalmykose, Ulzera, Rhagaden, frische Wunden; Lymphödem; Diabetes; Immunsuppression.],
      palette.primary,
    ),
    panel(
      [Kontext],
      [Chronische Beinschwellung, venöse Insuffizienz, Hautbarrierestörungen; Ältere/Immunsupprimierte oft schwerer und atypischer.],
      palette.primary-light,
    ),
    panel(
      [Beginn & Tempo],
      [Stunden bis wenige Tage; rasche Erythem-Ausbreitung nach kleiner Verletzung/Mykose. Fieber kann vorausgehen.],
      palette.warning,
    ),
  )
  v(5pt)
  // onset bar — visual tempo, labels are clinical
  block(width: 100%, inset: (y: 2pt))[
    #set text(size: 6.5pt, fill: palette.text-muted)
    #grid(
      columns: (1fr, 1fr, 1fr, 1fr),
      align(center)[Minuten],
      align(center)[*Stunden–Tage*],
      align(center)[Wochen],
      align(center)[Monate],
    )
    #v(2pt)
    #box(width: 100%, height: 8pt, radius: 2pt, clip: true)[
      #grid(
        columns: (1fr, 1.4fr, 1fr, 1fr),
        rect(width: 100%, height: 100%, fill: palette.bg-muted),
        rect(width: 100%, height: 100%, fill: palette.warning),
        rect(width: 100%, height: 100%, fill: palette.bg-muted),
        rect(width: 100%, height: 100%, fill: palette.bg-muted),
      )
    ]
  ]
}

// ── U-mechanism: CeTZ chain + escalation fork ─────────────────

#let mechanism-erysipel() = {
  set text(size: 8pt)
  align(center)[
    #canvas(length: 1cm, {
      let nodes = (
        (0, 0.2, "Barriere\ndefekt"),
        (3.2, 0.2, "Eintritt\nBakterien"),
        (6.4, 0.2, "Dermis &\nLymphbahnen"),
        (9.6, 0.2, "Erythem\nSchmerz"),
      )
      // main chain boxes
      for (x, y, lab) in nodes {
        draw.rect(
          (x, y),
          (x + 2.4, y + 1.35),
          fill: palette.primary.lighten(88%),
          stroke: 1pt + palette.primary,
          radius: 0.12,
        )
        draw.content(
          (x + 1.2, y + 0.68),
          text(size: 7pt, weight: "bold", fill: palette.primary-dark, align(center, lab)),
        )
      }
      // arrows between
      for i in range(3) {
        let x0 = nodes.at(i).at(0) + 2.4
        let x1 = nodes.at(i + 1).at(0)
        let mid = 0.2 + 0.68
        draw.line(
          (x0 + 0.05, mid),
          (x1 - 0.05, mid),
          stroke: 1.2pt + palette.primary.darken(5%),
          mark: (end: "stealth", fill: palette.primary.darken(5%)),
        )
      }
      // escalation branch down from last node
      let lx = 9.6 + 1.2
      draw.line(
        (lx, 0.2),
        (lx, -0.55),
        stroke: 1.1pt + palette.danger,
        mark: (end: "stealth", fill: palette.danger),
      )
      draw.rect(
        (8.5, -1.85),
        (12.3, -0.55),
        fill: rgb("#fef2f2"),
        stroke: 1pt + palette.danger,
        radius: 0.12,
      )
      draw.content(
        (10.4, -1.2),
        text(
          size: 6.8pt,
          weight: "bold",
          fill: palette.danger,
          align(center)[Tiefe / systemisch\nNekrose · Sepsis],
        ),
      )
      // side note: delayed abx / wrong PT — as small danger callout left of branch
      draw.rect(
        (5.2, -1.85),
        (8.2, -0.55),
        fill: white,
        stroke: 0.8pt + palette.warning,
        radius: 0.1,
      )
      draw.content(
        (6.7, -1.2),
        text(
          size: 6.5pt,
          fill: palette.text-body,
          align(center)[Ohne rechtzeitige\närztl. Antibiose],
        ),
      )
      draw.line(
        (8.2, -1.2),
        (8.5, -1.2),
        stroke: 0.9pt + palette.warning,
        mark: (end: "stealth", fill: palette.warning),
      )
    })
  ]
  v(3pt)
  // complementary dual-coding sentence (not form meta)
  block(
    width: 100%,
    inset: 6pt,
    fill: palette.bg-subtle,
    radius: 2pt,
  )[
    #set text(size: 7.5pt)
    Lymphbeteiligung → straffe Schwellung und regionäre Lymphknotenreaktion. Manuelle „Entstauung“ und intensive Wärme auf floridem Befund gehören *nicht* in diesen Pfad.
  ]
}

// ── U-cues: domain table with KI emphasis ─────────────────────

#let cues-erysipel() = {
  set text(size: 7.8pt)
  table(
    columns: (26mm, 1fr),
    stroke: 0.4pt + palette.border-light,
    inset: 6pt,
    fill: (_, y) => {
      if y == 0 { palette.primary }
      else if y == 3 { rgb("#fff7ed") }
      else if calc.odd(y) { palette.bg-subtle }
      else { white }
    },
    table.header(
      text(fill: white, weight: "bold", size: 7.5pt)[Kanal],
      text(fill: white, weight: "bold", size: 7.5pt)[Merkmale],
    ),
    text(weight: "bold", fill: palette.primary)[Anamnese],
    [Plötzliches oder rasch progredientes Erythem (Bein oder Gesicht), Schmerz, Überwärmung; Fieber/Schüttelfrost; Eintrittspforte; Immunsuppression/Diabetes erfragen],
    text(weight: "bold", fill: palette.primary)[Beobachtung],
    [Scharf begrenzt, oft flammenförmig, meist einseitig; glänzend, überwärmt; Ödem/Lymphknoten; toxischer AZ möglich],
    text(weight: "bold", fill: palette.warning)[Untersuchung],
    [Rand markieren · Umfang · Pulse · Lymphknoten · Vitale. *Keine* manuelle „Entstauung“ · *keine* intensive Wärme auf floridem Befund],
    text(weight: "bold", fill: palette.primary)[Verlauf],
    [Stunden bis wenige Tage; rasche Ausbreitung, Schmerz↑ oder Systemik alarmierend],
  )
}

// ── U-transfer: case stage ────────────────────────────────────

#let transfer-erysipel() = {
  set text(size: 8pt)
  block(
    width: 100%,
    radius: 3pt,
    clip: true,
    stroke: 0.7pt + palette.primary,
  )[
    #block(width: 100%, fill: palette.primary, inset: 6pt)[
      #set text(fill: white, size: 8pt, weight: "bold")
      Fall zur Selbstprüfung
    ]
    #block(width: 100%, inset: 8pt, fill: white)[
      #set text(size: 7.8pt)
      68-jährige Patientin mit bekanntem Lymphödem links, überwiesen zur „Entstauung und Beinmobilisation“. Seit gestern abend zunehmende Rötung am Unterschenkel links, heute Fiebergefühl und Schüttelfrost. Das Erythem ist scharf begrenzt, flammenförmig, überwärmt und druckschmerzhaft; Temperatur 38,2 °C, HF 92/min, RR 128/78 mmHg, wach und orientiert. Sie bittet um „die übliche Lymphdrainage“.
      #v(5pt)
      #grid(
        columns: (1fr, 1fr, 1fr),
        column-gutter: 4pt,
        block(
          width: 100%,
          inset: 5pt,
          fill: palette.bg-subtle,
          radius: 2pt,
        )[
          #text(size: 7pt, weight: "bold", fill: palette.primary)[(1)]
          #v(2pt)
          #text(size: 7pt)[Was steht jetzt im Vordergrund?]
        ],
        block(
          width: 100%,
          inset: 5pt,
          fill: palette.bg-subtle,
          radius: 2pt,
        )[
          #text(size: 7pt, weight: "bold", fill: palette.primary)[(2)]
          #v(2pt)
          #text(size: 7pt)[Was ist kontraindiziert?]
        ],
        block(
          width: 100%,
          inset: 5pt,
          fill: palette.bg-subtle,
          radius: 2pt,
        )[
          #text(size: 7pt, weight: "bold", fill: palette.primary)[(3)]
          #v(2pt)
          #text(size: 7pt)[Nächster sicherer Schritt?]
        ],
      )
    ]
  ]
}
