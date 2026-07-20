# Boundaries audit — Wave 5.2 (CP-REVIEW-BOUNDARIES)

**Date:** 2026-07-20  
**Role:** boundaries-auditor  
**Sources:** `PRODUCT-BOUNDARIES.md`, `platform-boundaries/{spec,plan}.md`, ORCHESTRATION E9/E10  
**Track plan updated:** `devtracks/platform-boundaries/plan.md`  
**Phase 3 note:** `devtracks/platform-boundaries/PHASE3-DEFERRED.md`

---

## Verdict

| Gate | Result |
|---|---|
| **E9** Product boundaries held | **PASS** |
| **E10** Phase 1+2 done; Phase 3 deferred+reason | **PASS** |
| Open **P0** | **None** |

---

## Checklist

### Spot-check tree

| Check | Result | Evidence |
|---|---|---|
| Medical (B) only under `domains/medical/` | **OK** | recipes, briefs, templates, skill SoT; discovery via symlinks only |
| form-catalog **core** has no Kursbuch paths | **OK** | grep clean; only policy mentions in BASIS/README |
| compose **validate** has no Kursbuch hardcode | **OK** | engine clean; `test_no_kursbuch_hardcode_in_engine`; CLI paths caller-supplied |
| No content MD as SoT under `packages/` | **OK** | only package READMEs; no chapter MD |
| bookkit-didactics optional (not foundation-required) | **OK** | separate package; CONSUMER + bookkit README mark optional |
| Platform CI independent of domain tree | **OK** | `build.yml` paths `src/**` + `fonts/**` only |

### Wave artifacts (presence, not full E1–E8 quality review)

| Area | Status | Paths |
|---|---|---|
| form-catalog | present | `toolset/form-catalog/core/forms.yaml`, `VERSION` (`0.1.0-dev`), BASIS/GAP/ANTI |
| media (B) | present | `domains/medical/{recipes,briefs,templates,skill/media-brief}` |
| compose | present | `toolset/compose/validate/*`, fixtures, tests |
| pilot consumer | present | `pilots/kursbuch-welle-03/`, `pilots/kursbuch-welle-03-compose/` (+ E2E report) |

### Phase 1 — discipline (sibling tracks)

| Item | Status |
|---|---|
| core vs `domains/medical/recipes/` | **done** |
| media SoT under `domains/medical/` | **done** |
| compose domain-agnostic | **done** |
| didactics optional facet | **done** |
| medical hardcode → domains/? review gate | **done** (ongoing discipline; no residual A-core hardcode found) |

### Phase 2 — pin / consumer docs (disk verify; docs-engineer landed)

| Item | Status | Path |
|---|---|---|
| README „Using this platform…“ | **done** | `README.md` + `docs/CONSUMER.md` |
| pin bookkit + form-catalog | **done** | `docs/CONSUMER.md` § Pin; form-catalog README pin policy |
| pilots as consumer (C path external) | **done** | both `pilots/kursbuch-welle-03*/README.md` |

### Phase 3 — Split

| Item | Status |
|---|---|
| Execute split | **DEFERRED** |
| Reason | Triggers not met: no second domain; domain not forcing platform CI noise; single-domain pilot only |
| Note | `platform-boundaries/PHASE3-DEFERRED.md` |

### Split-readiness preconditions (prep only)

| Item | Status |
|---|---|
| domain tree self-contained; no `src/chapters` imports | **yes** |
| CI without medical | **yes** |
| no Kursbuch hardcode in core/engine | **yes** |
| version pins documented | **yes** |
| post-split remotes listed | **open** (OWNERSHIP name TBD — fill when split scheduled) — **not P0** |

---

## Residual issues

| Sev | Item | Action |
|---|---|---|
| — | **No P0** | — |
| P2 | `OWNERSHIP.md` post-split remote still TBD | Only when Phase 3 opens |
| P2 | Orchestration `board.md` wave pointer may lag Waves 2–5 | Orchestrator hygiene (out of boundaries scope) |

---

## Plan edits made

1. Checked off Phase 1 + Phase 2 in `platform-boundaries/plan.md`
2. Marked Phase 3 **DEFERRED** with trigger table; linked `PHASE3-DEFERRED.md`
3. Updated split-readiness preconditions (remotes item left open)
