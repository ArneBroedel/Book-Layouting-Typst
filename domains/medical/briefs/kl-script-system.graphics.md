# Graphics Decision Note — KL Script System P0

- **slug:** `kl-script-system` (P0 units)
- **form_spec_paths:**
  - `domains/medical/briefs/kl-u-urgency-scope.form-spec.md`
  - `domains/medical/briefs/kl-u-mimic.form-spec.md`
- **ontology:** v1.1 frozen
- **date:** 2026-07-26
- **phase:** G3 recreate (code-first; free vision skipped — ambition optional)
- **graphic_mode:** `code`
- **realize_path:** `recreate`

## Units delivered

| Unit | Hypothesis | Module | Spike page |
|------|------------|--------|------------|
| U-urgency + U-scope | **US-A** Erysipel | `lib/us-time-scope.typ` → `us-a-erysipel()` | recreate ~p3 |
| U-urgency + U-scope | **US-B** ACS multi-T1 | same → `us-b-acs()` | recreate ~p4 |
| U-mimic | **M-A** mapping rows | `lib/m-a-mimic.typ` → `m-a-erysipel()` | recreate ~p5 |
| U-for-against + U-must-not-miss | **FA-A + NM** | `lib/discrimination.typ` | recreate ~p6–7 |
| §4 composite | FA+NM+M-A | `section-four-erysipel()` | recreate ~p7 |
| Band-core stack | Discrimination→US-A | spike page | recreate ~p8 |

**Human rule:** no form-meta inside figures (fixed on SCOPE title).

## Artifacts

| | |
|--|--|
| Spike entry | `toolset/compose/spikes/graphics/kl-script-system/spike-recreate.typ` |
| PDF | `dist/spikes/graphics/kl-script-system/recreate.pdf` |
| PNG | `dist/spikes/graphics/kl-script-system/recreate-*.png` |

## Must-see audit (self)

| Must-see | Status |
|----------|--------|
| T1 ≠ T2 | PASS |
| ACTION inside tier | PASS |
| Multi-trigger inside T1 (ACS) | PASS |
| SCOPE not a TIME step (optical only; no meta caption) | PASS (v2: removed „keine Dringlichkeitsstufe“) |
| No Treat-ohne-Netz | PASS |
| T3 omitted (Erysipel) | PASS |
| Mimic direction frame→danger | PASS |
| No Label/Darunter UI | PASS |
| Erysipel four maps | PASS |

## Claim notes

- Pins copy-through Erysipel + ACS Welle-06; no invented T3 on Erysipel.
- Free vision not run (Form Spec ambition optional; code path sufficient for first Accept).

## Recommendation to Media Accept

| Unit | Winner candidate | Note |
|------|------------------|------|
| US-A | **code recreate** | Band-default |
| US-B | **code recreate** | High-stakes multi-T1 |
| M-A | **code recreate** | Default; M-B free vision deferred |

**Next (optional):** polish whitespace/chip alignment · transfer pins to 2nd disease · Form Spec P1 (§4 FA+NM) · free vision M-B if Human wants.

## Wave O (2026-07-26)

| Unit | Module | Spike |
|------|--------|-------|
| U-bigpicture | `lib/script-core.typ` `bp-erysipel()` | `wave-o.pdf` |
| U-enabling | `enabling-erysipel()` | same |
| U-mechanism | CeTZ chain `mechanism-erysipel()` | same |
| U-cues | `cues-erysipel()` | same |
| U-transfer | `transfer-erysipel()` | same |
| Full stack | BP→…→Transfer Erysipel | `wave-o.pdf` last pages |

**PDF:** `dist/spikes/graphics/kl-script-system/wave-o.pdf`

Human feedback: P0/P1 felt clean but uninspired → Wave O pushes visual variety (chain, onset bar, three-beat BP, case stage) while keeping claim-safe code.

## Creative backlog (still open — more ambition)

| Item | Why higher creativity | Path |
|------|----------------------|------|
| M-B mask/peel | Free vision for mimic | medical-graphics G1 |
| US-D triage meter + card | Free vision urgency | G1 |
| CES saddle spatial | Anatomy + stop | Track C + hybrid |
| ACS mechanism organ schema | Dual coding | CeTZ/hybrid |
| Flag-master density | Visual weight override | Archetype D |

## Not done

- Free vision / hybrid / refine
- Production compose
- Content template changes
