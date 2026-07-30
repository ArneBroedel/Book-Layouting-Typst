# Diff-Note — `kl-crps-rerun-2026-07-30` (this run only)

- **date:** 2026-07-30  
- **scope:** single exploration chapter pipeline for CRPS V-3 under **new** slug  
- **policy:** HARD BAN on old pilot `kl-crps` (no read/import of its briefs, assets, `crps.typ`, pilots, dist, routes)  
- **harvest:** **strict** — no form-library / playbook append this run (no durable new recipe beyond pin-swap + standard peel/hub transfer)

## What this run produced

| Layer | Artifact |
|---|---|
| Route | `toolset/orchestration/studio-routes/kl-crps-rerun-2026-07-30.md` |
| R content map | `domains/medical/briefs/_wave6/kl-crps-rerun-2026-07-30.content-map.md` |
| Media Brief | `domains/medical/briefs/kl-crps-rerun-2026-07-30.brief.md` |
| Form Specs | `…-urgency|mimic|regional-cues|discrimination.form-spec.md` |
| Free vision | `assets/kl-crps-rerun-mimic/vision-free-01.png` · `assets/kl-crps-rerun-regional-cues/vision-free-01.png` |
| Claim audits | `…-mimic.claim-audit.md` · `…-regional-cues.claim-audit.md` (both PASS) |
| Graphics / Feasibility / Accept | `…graphics.md` · `…feasibility.md` · `…accept.md` |
| Typst module | `domains/medical/lib/typst/kl-wave6/crps-rerun.typ` |
| Spike PDF | `dist/spikes/graphics/kl-crps-rerun-2026-07-30/recreate.pdf` |
| Chapter Typst | `toolset/compose/pilots/kl-crps-rerun-2026-07-30/chapter.typ` |
| **Chapter PDF** | **`dist/pilots/kl-crps-rerun-2026-07-30/chapter.pdf`** |
| Validate | **OK** (smoke; exploration compose authorized; production **no**) |

## Process delta (this run)

1. Studio situation **2 · L2 · exploration · kl-kurz · heavy graphics**.  
2. Content map from C only (no banned pilot transfer).  
3. Form Specs for urgency, mimic (required free vision), regional-cues (required free vision, non-body), discrimination (code).  
4. Free vision (agy/nanobanana) ×2 → claim audit PASS → harvest → hierarchy-faithful code winners.  
5. Exploration Accept → compose → `bookkit validate` OK.  

## Accept winners (embed)

| unit | winner |
|---|---|
| U-urgency | `us-crps-rerun()` |
| U-mimic | `mimic-peel-crps-rerun()` |
| U-regional-cues | `regional-cues-crps-rerun()` |
| U-discrimination | `discrimination-crps-rerun()` |

## Explicit non-diffs

- Did **not** read or compare against old `kl-crps` pilot outputs.  
- Did **not** update `kl-form-library.md` / playbook recipes (strict harvest).  
- Did **not** authorize production compose / freeze.  
- Did **not** free-gen anatomy (H-Gfx pause respected).  

## Open for Human (optional)

- H1 freeze if this content path should go production.  
- Optional visual taste on free PNG vs code peel (code is SoT).  
