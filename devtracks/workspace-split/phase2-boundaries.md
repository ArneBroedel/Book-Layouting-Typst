# Phase 2 — Modular monorepo boundaries + harvest

**Status:** ⬜ OPEN (after 1b)  
**Risk:** medium  
**Depends on:** Phase 1 done; 1b preferred first so skills can point at CLI  
**Out of scope:** physical multi-repo (phase3); full skill prose rewrite (phase4 can overlap)

---

## Goal

Make A / B / C / R **extract-ready by folder ownership and dependency direction**, without renaming the whole tree to `products/` unless low-cost.

Pragmatic rule from plan: **keep paths** (`packages/`, `domains/`, `toolset/`, `research/`) but enforce OWNERSHIP + no new reverse dependencies.

---

## 2.1 Ownership & README gates

- [ ] Verify/refresh `domains/medical/OWNERSHIP.md` (B) — already exists  
- [ ] Verify/refresh `domains/content-maturity/OWNERSHIP.md` (C)  
- [ ] Add short `toolset/OWNERSHIP.md` or section in `toolset` README: product A, no medical SoT  
- [ ] Add short `packages/OWNERSHIP.md` or bookkit README note: foundation vs didactics facet  
- [ ] `research/README.md`: mark **R**, not default agent context for book production  
- [ ] `domains/README.md`: one table A/B/C pointers  

Dependency rules to enforce (document + spot-check):

| From → To | Allowed? |
|---|---|
| A packages → domains/medical | **No** |
| compose validate → medical recipes | Only via **caller path** (already) |
| B skills → packages/bookkit docs | Read-only conceptual; no import of medical into foundation |
| C content-maturity → bookkit | **No** (already) |
| Spikes → domains assets | OK for dogfood |

---

## 2.2 Spike harvest → library

### Candidates (stable `lib/*.typ`)

**KL form system** (`toolset/compose/spikes/graphics/kl-script-system/lib/`):

| Module | Likely keep |
|---|---|
| `script-core.typ` | yes |
| `urgency-ladder.typ` | yes |
| `cue-matrix.typ` | yes |
| `discrimination.typ` | yes |
| `four-pole.typ` | yes |
| `m-a-mimic.typ`, `m-b-peel.typ` | yes |
| `us-d-dashboard.typ`, `us-time-scope.typ` | yes |
| `v2-urgency.typ`, `v2-cues-suspicion.typ` | yes if used |
| `melanom.typ` | yes (transfer) |

**Wave5** (`kl-wave5/lib/`):

| Module | Notes |
|---|---|
| `compartment.typ` | high value (non-body default) |
| `stroke.typ` | yes |
| `anaphylaxie.typ`, `mi.typ`, `suicid.typ` | archive-adjacent content — harvest only if generic |

**Wave6** (`kl-wave6/lib/` — post form-language campaign):

| Module | Notes |
|---|---|
| `sepsis.typ` | flag-master + nested multi-T1 patterns |
| `gicht.typ` | standard kl-kurz pin-swap |
| `le.typ` | nested-T1 + Wells SCOPE |

**Chapter unit libs:**

| Path | Notes |
|---|---|
| `iii2-bls-aed/lib/primar-algorithmus.typ` | unit-specific |
| `iii5-…/sofortmassnahmen.typ` | unit-specific |
| `iv2` / `iv4` `entscheidungs-flow.typ` | may share patterns |
| `ii1/…/pflichtsequenz.typ` | unit-specific |

### Target layout (choose one; document choice in PR)

**Option A (preferred until second domain):**  
`domains/medical/lib/typst/` — domain-owned modules, not foundation pollution.

**Option B:**  
`packages/bookkit-graphics/` — only if modules are domain-agnostic enough.

### Tasks

- [ ] Create chosen lib root + README (import examples, version note)
- [ ] Move/copy **stable** modules; update spike imports to new path
- [ ] Leave flaky `spike-*.typ` drivers in spikes/ or `experiments/`
- [ ] Delete `_tmp/`, tracked PDFs already gone
- [ ] Update `medical-graphics` skill “Modules” path line once libs move (can finish in phase4)
- [ ] Compile at least one gold spike/recreate after move:

```bash
typst compile --root . --ignore-system-fonts --font-path fonts \
  toolset/compose/spikes/graphics/kl-script-system/spike-recreate.typ \
  dist/spikes/graphics/kl-script-system/recreate.pdf
```

---

## 2.3 Pilots thinning

- [ ] Keep **one** platform-relevant pilot: `pilots/kursbuch-welle-03-compose/` **or** document it as domain dogfood and add a **synthetic** A-only smoke under `toolset/examples/` (preferred long-term for A purity)
- [ ] Mark `pilots/kursbuch-welle-03/` as legacy in README or move to `pilots/_archive/`
- [ ] Ensure pilot README states: content SoT is external C

---

## 2.4 Research quarantine

- [ ] Option 1: document “do not load research/ into agent default context” in AGENTS (phase4)
- [ ] Option 2: git submodule later (phase3/R)
- [ ] Minimum: `research/README.md` + `templates/README` warning banners

---

## 2.5 Asset / brief ongoing policy enforcement

- [ ] Spot-check each gold unit `MANIFEST.md` lists only canonical files
- [ ] Optional: archive non-gold **assets** for `kl-m-b-mimic`, `kl-mscc-spine` if not in gold set (or keep as optional gold support — note in INDEX)
- [ ] Ensure new graphics scripts write under `assets/<slug>/` and do not auto-git-add

---

## Exit criteria

- [ ] No A-foundation import of medical domain code
- [ ] Stable graphic modules live in one documented lib path; spikes still compile
- [ ] Pilot story clear (one primary + archive legacy)
- [ ] B tree remains under `domains/medical/` and is subtree-split-ready (phase3 checklist)
- [ ] README progress table updated
