# Phase machine detail

## P0 Kickoff
- Create orchestration dir + kickoff + board + run-log  
- Inventory chapters from content_root  
- Autonomy charter  

## P1 Design SoT (once)
- bookkit theme, fonts, setup-pages, assembly skeleton  
- Skip if consumer/book already has stable SoT  

## P2 Content gate (per chapter)
- production → require freeze (H1)  
- exploration → allow pilot compose after Accept without production pin  

## P3 Media (per chapter)
- media-brief body  
- form-spec for each free-vision-required unit  
- Gold patterns: iv2/iii5 form-specs  

## P4 Graphics (per unit)

**Sequence (locked):** Design CLEAN → **conditional open-assets** → free vision / realize → unit Visual CLEAN → Decision Note.

```text
P4 unit tick:
  1. Confirm Design CLEAN (Form Spec + Design Contract + Design Critic)
     → board unit design_clean = clean; chapter design_clean rollup
  2. Read open_asset_scan from Media (Form Spec / Design Contract):
       required → open-assets source scan + MANIFEST outcome accepted|gap
       optional → light scan when realism/icons may help
       skip     → document n/a (code/schema units — no MANIFEST ceremony)
     → board: needs_open_assets yes|no; open_assets n/a|needed|scanning|manifest_ok|blocked; manifest_path
  3. medical-graphics playbook 00→08 (G0b already resolved when required)
       free → claim audit → recreate/hybrid/refine
  4. unit Visual CLEAN on PNG
     → board unit visual_clean = clean; chapter visual_clean rollup
  5. Decision Note (cite production-bridge if present — advisory only)
```

- **open-assets is unit-conditional** — NOT a fixed always-on **P3.5** book phase.  
- Do **not** invent Commons scans for pure grammar/code units.  
- Specialist skill: `open-assets` (SoT `domains/medical/skill/open-assets/`).  
- production-bridge harvest (if any): cite-if-present after Design CLEAN; never Accept/CLEAN waive.  
- Board cells are **enums + paths only** — critique evidence stays in artifact trees.

## P5 Accept (per chapter / unit)
- media-brief Accept  
- Form Spec Must-see check  
- Rights / MANIFEST when winner_carrier is asset/open-*  
- H2 if production  
- Board: `quality_packet` → path then `ready`; `accept` → `accepted`  
- Board unit: `open_assets` / `manifest_path` when asset path  

## P6 Compose (per chapter)
- compose-chapter embed winners  
- multi-unit quality chapter → **chapter macro VC** on full-page PNGs (cap ~2 rounds → H-Explore)  
- Board: `compose` → `done`; `pdf` → path; **`macro_vc`** → `clean` \| `n/a` \| `blocked`  
- compile chapter pdf  

### Three Visual Critic scopes (do not conflate)

| Scope | Board field | When |
|---|---|---|
| **Unit VC** | unit `visual_clean` + chapter `visual_clean` rollup | After realize, per unit PNG |
| **Chapter macro VC** | chapter `macro_vc` | Multi-unit quality chapter after P6 assemble |
| **Book P9 Visual QA** | book phase P9 status | Multi-chapter assembly sample pages |

## P7 Assembly
- main.typ / bookkit build full book  

## P8 Validate
- claims, compile, optional UA-1  
- **validate OK is necessary but not sufficient** for chapter done — still need design_clean / visual_clean / macro_vc / quality_packet / accept / compose / pdf  

## P9 Visual QA (book-level multi-chapter assembly sample)
- export key pages PNG; check gatekeeper/Must-see  
- Fail → rollback P4/P6  
- **Not** the same as **chapter macro VC** (per multi-unit chapter after P6; board field `macro_vc`)

## P10 Prepress
- print input, PDF/X, DPI report  
- raster print only if print_ok  

## P11 Proof
- H4 proof record; H5 imprimatur (release)  
