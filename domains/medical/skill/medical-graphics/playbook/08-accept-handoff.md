# Playbook 08 — Decision Note & Accept handoff (G4)

## Decision Note

Fill `domains/medical/templates/graphic-decision.template.md` → `…/<slug>.graphics.md`:

- form_spec_path  
- **track** per unit (`free-vision-ambition` | `grammar-only` | `none`)  
- **`open_asset_scan`** + source-scan/MANIFEST path when not skip  
- **production_bridge_cite** (path + default-or-override) when harvest exists for job class  
- Phase A free + claim audit verdict  
- **harvest_path** or `## Harvest` section (ambition + free vision ran)  
- Multi-round log (R1–R3)  
- graphic_mode + realize_path per unit  
- **harvest_must_ported?** + **free-vision proximity** (yes / partial / no)  
- Asset manifest (+ rights outcome for third-party)  
- Recommended winner  
- Compose embed path (module and/or asset — so Tech cannot forget graphics)

## Ready for Media Accept?

Only when:

- [ ] **Design CLEAN** (Contract + Design Critic)  
- [ ] Form Spec exists (non-prose units)  
- [ ] If `open_asset_scan=required`: MANIFEST outcome `accepted`\|`gap` recorded (gap → Typst demote, not silent AI-as-photo)  
- [ ] Claim audit recorded  
- [ ] **Semantic Read PASS** on every free/refined raster **and** teaching vector glyph in the winner path ([prompt-and-semantic-read](../references/prompt-and-semantic-read.md)) — FAIL open → **not** ready; caption does not clear 
- [ ] Track recorded per unit  
- [ ] If free-vision-ambition + free vision ran: harvest present; cues → atom_ids; must-cues ported or waived  
- [ ] Free-vision proximity ≠ **no** on recommended winner (ambition track)  
- [ ] **Visual CLEAN** ([11-visual-critique](11-visual-critique.md)) on **latest PNG set**  
- [ ] At least one production-eligible carrier  
- [ ] Spikes compile  
- [ ] Caps / visual-round budget respected  
- [ ] Quality packet filled or Decision Note carries CLEAN flags  
- [ ] Asset/open-* winner: rights/MANIFEST row ready for Accept

## Free-vision proximity + Visual CLEAN

| Situation | Ready? |
|---|---|
| Ambition + hierarchy-faithful code/asset + Visual CLEAN | yes → Media Accept (AX) |
| Ambition + pin-monotone code | **no** → revise harvest port |
| Any unit with code-leak / overflow / uncontracted chrome | **no** → visual revise |
| Grammar-only + Visual CLEAN | yes (proximity N/A) |

## Media Accept inputs

- Quality packet + Brief + Form Spec + Design Contract + graphics.md + visual-critique + page PNGs + spikes  
- AX ≠ sole builder; picks winner by Contract proximity + learner job + free-vision proximity  
- Compose notes: embed path authoritative  

Templates: `accept-record.template.md` · `quality-packet.template.md`

## After Accept

Tech (`compose-chapter`): embed winner; do not re-author ideal; do not replace CLEAN winners with pin-monotone tables.
