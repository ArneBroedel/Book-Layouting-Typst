# Phase 4 — Skills, agent docs, consumer focus

**Status:** ⬜ OPEN (can partially parallel 1b after CLI exists)  
**Risk:** low–medium (agent discovery regressions)  
**Depends on:** Phase 1b for CLI paths; Phase 2 for lib paths if referenced

---

## Goal

Agents load **role skills** that call **bookkit CLI verbs** and respect product boundaries; humans open README and understand “layout platform first.”

---

## 4.1 Skill rewires (SoT paths only — never fork under `.grok/`)

| Skill | SoT | Required updates |
|---|---|---|
| `bookkit` | `toolset/skill-pack/bookkit/` | Document full CLI surface after 1b |
| `compose-chapter` | `toolset/skill-pack/compose-chapter/` | Prefer `./scripts/bookkit validate` over raw python |
| `medical-graphics` | `domains/medical/skill/medical-graphics/` | Commands section → `bookkit graphics …`; module paths if harvested; keep caps/gates |
| `media-brief` | `domains/medical/skill/media-brief/` | No PNG gen; point Graphics to CLI; gold INDEX path |
| `book-production-orchestrator` | `toolset/skill-pack/book-production-orchestrator/` | Route cards use configurable roots; no monorepo-only assumptions |
| `content-review` / `content-orchestrator` | `domains/content-maturity/skill/` | Unchanged process; ensure no bookkit layout duties |

### Checklist

- [ ] Each skill “Commands” / pipeline uses CLI where applicable  
- [ ] `medical-graphics` still forbids endless refine loops; CLI is not a loop  
- [ ] Skill descriptions (YAML frontmatter) still accurate for triggering  
- [ ] Run `python3 .github/skills/skill-creator/scripts/quick_validate.py` on edited skills if available  
- [ ] Symlinks under `.github/skills`, `.grok/skills` still resolve  

---

## 4.2 Human-facing docs

- [ ] `README.md` — Mission A first; B/C companions; link `docs/CONSUMER.md` + workspace-split HANDOFF optional  
- [ ] `AGENTS.md` — skill table + “prefer bookkit CLI”; research not default context  
- [ ] `CLAUDE.md` — either shrink or add top “Mission + boundaries” box linking PRODUCT-BOUNDARIES (avoid full rewrite unless scheduled)  
- [ ] `docs/CONSUMER.md` — validate/print/graphics via bookkit  
- [ ] `docs/KNOWLEDGE-MAP.md` — mention workspace-split track briefly if useful  

---

## 4.3 Showcase (D3 — later)

When scheduled (not blocking 1b/2):

- [ ] Move `src/` → `examples/showcase-book/` **or** keep and only document  
- [ ] Update build scripts/tasks paths  
- [ ] Re-export story still dogfoods packages  

---

## 4.4 Inventory refresh

- [ ] `python3 scripts/workspace-inventory.py`  
- [ ] Skim `bucket-summary.tsv` for regressions (dist tracked? assets balloon?)

---

## Exit criteria

- [ ] Agent following medical-graphics skill only runs vision via `bookkit graphics` (or documented legacy alias)  
- [ ] New contributor can run `./scripts/bookkit doctor && validate fixture` from README alone  
- [ ] No skill instructs committing intermediate gemini PNGs  
- [ ] Track README progress updated
