// components/pinit-debug.typ
// Debug helpers for Typst + pinit.
//
// USAGE (in a development or test document):
//
//   #import "../components/pinit-debug.typ": *
//   #enable-pinit-debug         ← insert this to activate debug rendering
//   #dbg-grid()                 ← draw coordinate grid on this page
//   ... text with #dbg-pin(1)target#dbg-pin(2) ...
//   #disable-pinit-debug        ← insert this to deactivate (optional)
//
// WHY state()?
//   Typst modules close over their own variables. A #let pinit-debug = true
//   in the calling document only shadows the symbol locally — it does NOT
//   reach into the imported functions. Using state() lets any document flip
//   the flag with #enable-pinit-debug / #disable-pinit-debug.
//
// COORDINATE SYSTEM:
//   here().position() and absolute-place() both use page top-left as origin.
//   The two systems are therefore consistent — no margin correction needed.

#import "@preview/pinit:0.2.2": *

// ─── Internal state ──────────────────────────────────────────────────────────
#let _pinit-dbg = state("pinit-debug", false)

// ─── Public controls ─────────────────────────────────────────────────────────

/// Insert #enable-pinit-debug anywhere in markup to activate debug rendering
/// from that point forward (uses Typst's document state mechanism).
#let enable-pinit-debug = _pinit-dbg.update(true)

/// Insert #disable-pinit-debug to deactivate debug rendering.
#let disable-pinit-debug = _pinit-dbg.update(false)

// ─── dbg-pin ─────────────────────────────────────────────────────────────────
/// Drop-in replacement for pin(). In debug mode, renders a visible orange
/// crosshair box and a coordinate label: name · page · x, y.
#let dbg-pin(name) = {
  pin(name)
  context {
    if _pinit-dbg.get() {
      let pos = here().position()
      let xr = calc.round(pos.x / 1pt, digits: 1)
      let yr = calc.round(pos.y / 1pt, digits: 1)
      // Orange crosshair box at pin location
      absolute-place(dx: pos.x - 4pt, dy: pos.y - 4pt)[
        #rect(width: 8pt, height: 8pt, fill: none, stroke: 1.5pt + orange)
      ]
      // Coordinate label above-right
      absolute-place(dx: pos.x + 10pt, dy: pos.y - 18pt)[
        #box(fill: white, inset: (x: 3pt, y: 2pt), stroke: 0.5pt + orange)[
          #text(size: 7pt, fill: orange.darken(20%))[
            #(str(name)) · p#(pos.page) · #(xr)pt, #(yr)pt
          ]
        ]
      ]
    }
  }
}

// ─── dbg-note ────────────────────────────────────────────────────────────────
/// Place an arbitrary debug label at absolute page coordinates dx, dy.
/// Renders a yellow highlight box with the label and coordinates.
/// No-op when debug is off.
#let dbg-note(label, dx: 0pt, dy: 0pt) = {
  context {
    if _pinit-dbg.get() {
      absolute-place(dx: dx, dy: dy)[
        #box(fill: yellow.transparentize(70%), stroke: 0.8pt + orange.darken(10%), inset: 3pt)[
          #text(size: 8pt)[#label · x=#dx, y=#dy]
        ]
      ]
    }
  }
}

// ─── dbg-grid ────────────────────────────────────────────────────────────────
/// Draw a semi-transparent coordinate grid over the current page.
///   step:        distance between grid lines           (default 50pt)
///   label-every: label interval                        (default 100pt)
///   extent:      how far from page origin to draw      (default 2000pt)
/// No-op when debug is off. Call once per page (after each #pagebreak()).
#let dbg-grid(step: 50pt, label-every: 100pt, extent: 2000pt) = {
  context {
    if _pinit-dbg.get() {
      let n-lines = int(extent / 1pt / (step / 1pt)) + 1
      let n-labels = int(extent / 1pt / (label-every / 1pt)) + 1
      // Horizontal lines
      for i in range(0, n-lines) {
        let y = i * step
        absolute-place(dx: 0pt, dy: y)[
          #rect(width: extent, height: 0.4pt, fill: rgb(170, 170, 170, 70), stroke: none)
        ]
      }
      // Vertical lines
      for i in range(0, n-lines) {
        let x = i * step
        absolute-place(dx: x, dy: 0pt)[
          #rect(width: 0.4pt, height: extent, fill: rgb(170, 170, 170, 70), stroke: none)
        ]
      }
      // X-axis labels along top
      for i in range(0, n-labels) {
        let v = i * label-every
        absolute-place(dx: v + 2pt, dy: 4pt)[
          #text(size: 7pt, fill: rgb(160, 100, 0))[x=#(int(v / 1pt))pt]
        ]
      }
      // Y-axis labels along left
      for i in range(0, n-labels) {
        let v = i * label-every
        absolute-place(dx: 4pt, dy: v + 4pt)[
          #text(size: 7pt, fill: rgb(160, 100, 0))[y=#(int(v / 1pt))pt]
        ]
      }
    }
  }
}

// ─── dbg-export-pin ──────────────────────────────────────────────────────────
/// Like dbg-pin but renders a green "EXPORT" label with machine-readable
/// coordinates suitable for copy-paste (Phase 4 coordinate capture workflow).
/// Format: EXPORT · <name> · p<page> · x=<x>pt · y=<y>pt
#let dbg-export-pin(name) = {
  pin(name)
  context {
    if _pinit-dbg.get() {
      let pos = here().position()
      let xr = calc.round(pos.x / 1pt, digits: 2)
      let yr = calc.round(pos.y / 1pt, digits: 2)
      // Green marker box
      absolute-place(dx: pos.x - 4pt, dy: pos.y - 4pt)[
        #rect(width: 8pt, height: 8pt, fill: lime.transparentize(50%), stroke: 1pt + lime.darken(20%))
      ]
      // Export label below-right
      absolute-place(dx: pos.x + 10pt, dy: pos.y + 4pt)[
        #box(fill: lime.transparentize(70%), stroke: 0.5pt + lime.darken(30%), inset: (x: 4pt, y: 2pt))[
          #text(size: 6.5pt, fill: lime.darken(50%))[
            EXPORT · #(str(name)) · p#(pos.page) · x=#(xr)pt · y=#(yr)pt
          ]
        ]
      ]
    }
  }
}
