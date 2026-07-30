# Playbook 11 — Visual Critique (R4–R5)

**Role:** Visual Critic (**VC**) — separate from Graphics Realizer (**GX**).  
**Template:** `domains/medical/templates/visual-critique.template.md`  
**Track:** `devtracks/design-quality-system/`

## When

After every implement or polish of a graphic unit (and after chapter embed for page context).  
**Before** Media Accept handoff.  
**Not** optional for exploration didactic PDFs.

## Prerequisites

- [ ] Design CLEAN packet exists (Form Spec + Design Contract + design-critique clean)  
- [ ] Claim audit recorded if free vision ran  
- [ ] Build produces PDF/spike  

## Steps

1. **Export PNG pages** (mandatory):

```bash
typst compile --root . --ignore-system-fonts --font-path fonts --format png --ppi 150 \
  --pages <range> <entry.typ> dist/.../pages/p{p}.png
```

2. **Open every page image** with the image/read tool (or equivalent). List paths in critique file.  
3. Run **auto-block** checklist (code-leak, overflow, uncontracted color, worse-than-simple, **sparse-sprawl / space budget**, pin-monotone, broken peel/cards).  
4. Write findings `block` | `should` | `nit` with page + location.  
5. Status:  
   - open blocks → **revise** (GX fixes → re-export → new VC round)  
   - zero blocks, shoulds resolved/waived → **clean**  
6. Budget: max **5** visual rounds / unit → then Human (do **not** fake clean).  
7. Handoff to Accept only when status **clean** on **latest** PNG set.

## Auto-block examples (from CRPS re-run negative gold)

| Defect | Class |
|---|---|
| Raw `block(width: 100%…` visible on page | code-leak |
| Text cut off / glued in CeTZ boxes | overflow |
| One table row orange without Contract atom | uncontracted-atom |
| Mechanism chain less clear than numbered list | worse-than-simple |
| Empty peel cards / partial markup | craft |
| Unit fills most of a page with few claims / large empty regions | **sparse-sprawl** (fails space budget) |
| Peel edge strips + oversized insets waste vertical space vs map-row density | sparse-sprawl / craft |

## Density (book scale)

The monographic book is already ~hundreds of pages at tight type. VC must ask: *could the same pins live in ~¼–½ page without losing the teaching hierarchy?* If yes and the unit still sprawls → **block** or force denser layout. Ambition ≠ air.

## NEVER

- Mark clean without opening images  
- Use “validate OK” or “compile green” as visual pass  
- Builder self-CLEAN  
- Accept exploration PDF with open visual blocks  
- Treat “looks premium / airy” as success when density fails  

