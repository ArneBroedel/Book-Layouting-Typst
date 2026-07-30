# Graphic Decision Note

- **chapter_id:**
- **brief_path:**
- **form_spec_path:**
- **vision_path:** (Phase A — `*.vision.md` if free vision ran)
- **feasibility_path:** (if any)
- **content_source:** (C, read-only, if claims/labels)
- **content_revision:** (if production)
- **author_role:** graphics
- **date:**

> Form Spec → free vision → claim audit → multi-round realize.  
> Skill: `domains/medical/skill/medical-graphics/` · playbook `00-overview.md`

## Track (G0 — required before free gen)

| unit_id | track | free vision? | notes |
|---|---|---|---|
| | free-vision-ambition \| grammar-only \| none | yes/no/skip | default posture = free-vision-ambition for real visual units |

## Phase A — Free vision

| unit_id | free vision | candidate paths | structure_ref | claim_audit | notes |
|---|---|---|---|---|---|
| | yes/no/skip | | **none** if free | PASS/DRIFT/FAIL | |

## Harvest (after free vision — ambition track)

| unit_id | harvest_path or section | must cues listed? | claim_audit | target carrier bias |
|---|---|---|---|---|
| | `*.graphics.md` ## Harvest / `*.harvest.md` | yes/no | PASS/DRIFT/FAIL | code\|hybrid\|asset\|undecided |

Template: `domains/medical/templates/graphic-harvest.template.md`  
Harvest = **non-claim** composition only. DRIFT does not skip harvest.

## Multi-round log (G3)

| round | action | path / artifact | result |
|---|---|---|---|
| R1 recreate | hierarchy-faithful + harvest must | | |
| R2 hybrid | n/a or path | | |
| R3 refine | | | |
| R4 A/B | | | |

## Visual-Units (realization)

| unit_id | type | ideal (1 sentence) | graphic_mode | realize_path | harvest_must_ported? | free-vision proximity | rationale | spike_paths |
|---|---|---|---|---|---|---|---|---|
| | | | code\|asset\|hybrid\|ab-test\|none | recreate\|refine\|accept-asset\|n/a | yes\|partial\|no\|n/a | yes\|partial\|no\|n/a | | |

**realize_path**

| value | Meaning |
|---|---|
| `recreate` | Technical recreate of free vision (Typst / SVG / hybrid) |
| `refine` | AI prompt refine with book-visual-standards |
| `accept-asset` | Promote free/refined asset as production carrier (**gates** in playbook 06) |
| `n/a` | No free vision / direct code |

**End product gates if `asset`:** claim audit PASS · Must-see met · DPI or screen-only · MANIFEST · Media Accept

## A/B or multi-candidate results

| unit_id | candidates | rubric notes | recommended winner |
|---|---|---|---|
| | | | |

## Asset manifest

| path | format | source | license | alt | role | print_ok |
|---|---|---|---|---|---|---|
| | svg/png | hand/inkscape/ai-gen:tool/… | | | vision/hybrid-base/main | yes/dpi/screen-only/n/a |

## Risks / Human review

- [ ] no medical depiction risk beyond layout
- [ ] **H-Gfx** recommended
- [ ] notes:

## Ready for Media Accept?

- [ ] Form Spec present (or documented skip)
- [ ] Track recorded per unit
- [ ] Claim audit recorded
- [ ] Harvest present if free-vision-ambition + free vision ran
- [ ] Free-vision proximity ≠ no on recommended winner (ambition)
- [ ] yes
- [ ] no — blockers:

## Compose handoff (post-Accept)

| unit_id | winner | embed pattern | asset / module path |
|---|---|---|---|
| | | | |

> Tech embeds **Accept winners only**. Hierarchy-faithful modules and free-vision proximity winners are authoritative — do not replace with plain pin tables.
