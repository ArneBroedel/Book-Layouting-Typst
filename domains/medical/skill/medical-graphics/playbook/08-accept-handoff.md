# Playbook 08 — Decision Note & Accept handoff (G4)

## Decision Note

Fill `domains/medical/templates/graphic-decision.template.md` → `…/<slug>.graphics.md`:

- form_spec_path  
- **track** per unit (`free-vision-ambition` | `grammar-only` | `none`)  
- Phase A free + claim audit verdict  
- **harvest_path** or `## Harvest` section (ambition + free vision ran)  
- Multi-round log (R1–R3)  
- graphic_mode + realize_path per unit  
- **harvest_must_ported?** + **free-vision proximity** (yes / partial / no)  
- Asset manifest  
- Recommended winner  
- Compose embed path (module and/or asset — so Tech cannot forget graphics)

## Ready for Media Accept?

Only when:

- [ ] Form Spec exists (ambitious units)  
- [ ] Claim audit recorded  
- [ ] Track recorded per unit  
- [ ] If free-vision-ambition + free vision ran: harvest present; must-cues ported or waived  
- [ ] Free-vision proximity ≠ **no** on recommended winner (ambition track)  
- [ ] At least one production-eligible carrier  
- [ ] Spikes compile  
- [ ] Caps respected  

## Free-vision proximity (Graphics self-check → Media gate)

| Situation | Ready? |
|---|---|
| Ambition + hierarchy-faithful code or asset PASS | yes → Media Accept |
| Ambition + pin-monotone code | **no** → revise (port harvest) before handoff |
| Grammar-only + clean code | yes (proximity N/A) |

## Media Accept inputs

- Brief + Form Spec + graphics.md (+ harvest) + spikes  
- Media picks winner by **ideal proximity + learner job + free-vision proximity** (ambition)  
- Compose notes: which function/asset to embed — **Accept winners are authoritative**  

Template Accept: `domains/medical/templates/accept-record.template.md`  
Media rubric: `media-brief/references/design-reasoning.md` §5

## After Accept

Tech (`compose-chapter`): embed winner (hierarchy code module or asset as Accept states); do not re-author ideal; do not replace proximity winners with plain styled-table.
