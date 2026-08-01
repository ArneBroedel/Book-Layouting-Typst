# Graphics Decision Note — `kl-gicht-batch-2026-08`

- **date:** 2026-08-01
- **brief:** `domains/medical/briefs/kl-gicht-batch-2026-08.brief.md`
- **design_clean:** yes (`kl-gicht-batch-2026-08.design-critique.md`)
- **author_role:** graphics (GX)

## Units

| unit | track | carrier | realize_path | claim_audit | notes |
|---|---|---|---|---|---|
| U-urgency + U-scope | grammar-only (code default) | **code** | `d-risc-batch-2026-08/gicht.typ` → `us-gicht()` | n/a (no free) | 112·NA·gleichtags·zeitnah·T4 + SCOPE + absolute KI |
| U-mimic | grammar-only (code default) | **code** | `mimic-gicht()` | n/a | 3-row frame→danger (batch C pins) |
| U-hot-joint | code panel (no free vision) | **code** | `hot-joint-gicht()` | n/a | L3–L4 clinical panel |
| FA + NM | grammar | **code** | `discrimination-gicht()` | n/a | sequential |
| BP / EN / CUES table | L2–L3 | **code** | chapter.typ | n/a | |

## Free vision

| gen | disposition |
|---|---|
| — | **not used** (batch doctrine: code first; no body free vision default) |

## Caps used

- Free gens: **0 / 2**  
- Refine gens: **0 / 2**  
- Visual critique rounds: see `…visual-critique.md`

## Module / pilot

| artifact | path |
|---|---|
| Typst module | `domains/medical/lib/typst/d-risc-batch-2026-08/gicht.typ` |
| Pilot chapter | `toolset/compose/pilots/kl-gicht-batch-2026-08/chapter.typ` |
| PDF | `dist/pilots/kl-gicht-batch-2026-08/chapter.pdf` |
| Page PNGs | `dist/pilots/kl-gicht-batch-2026-08/p*.png` |

## Explicit non-use

- Old `kl-gicht-2026-08-01` / `gicht.typ` as clinical SoT: **grammar transfer only**; claims re-pinned to d-risc-batch C  
- Free-vision hybrid for hot joint: **not used** this batch  
