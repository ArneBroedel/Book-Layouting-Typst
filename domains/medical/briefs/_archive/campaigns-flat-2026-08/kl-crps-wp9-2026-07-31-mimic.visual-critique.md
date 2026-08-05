# Visual Critique — U-mimic · WP9b

- **unit_id:** U-mimic
- **design_clean:** yes (WP9b)
- **claim_audit:** PASS composition → code SoT
- **author_role:** visual-critic (VC)
- **date:** 2026-07-31
- **round:** 3
- **status:** **clean**

## Pages inspected

| page path | what | opened? |
|---|---|---|
| `/home/arneb/repos/company/Book-Layouting-Typst/toolset/compose/pilots/kl-crps-wp9-2026-07-31/preview/p2.png` | full-width peel stack ×4 | yes |
| `/home/arneb/repos/company/Book-Layouting-Typst/toolset/compose/pilots/kl-crps-wp9-2026-07-31/preview/p1.png` | mechanism only | yes |

## Auto-block

- [ ] code leak  
- [ ] overflow / unreadable (<7.5pt body)  
- [ ] uncontracted color  
- [ ] 4-col micro peel  
- [ ] hairline white gaps between peel bands (fixed r3 via stack spacing 0)  

## Findings

| id | sev | class | description | change |
|---|---|---|---|---|
| V1 | block→fixed | craft | white gaps between mask/edge/danger | stack(spacing:0) |
| V2 | should→fixed | craft | broken mid-band “darunter gilt” | solid edge strip “Maske ab · klinisch gilt” |
| V3 | nit | pedagogy | edge label repeats 4× — acceptable dual coding of peel action | none |
| V4 | nit | craft | card-4 alert border + Vorrang chip works | none |

## Pedagogy

- [x] mask top / danger bottom hierarchy  
- [x] Infekt card pops  
- [x] German pins readable  
- [x] stronger than WP9a map-rows for error teaching  

## Disposition

| open blocks | open shoulds | decision |
|---|---|---|
| 0 | 0 | **clean** |

## Sign-off

- [x] opened PNGs  
- [x] did not implement under critique  
