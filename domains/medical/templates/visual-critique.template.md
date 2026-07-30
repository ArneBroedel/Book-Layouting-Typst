# Visual Critique — <slug> / <unit_id>

> **Phase R4 (Visual Critic).** Read **actual PNG/PDF pages**. Craft + pedagogy. Do **not** accept without images.  
> Severity: `block` | `should` | `nit`.  
> Builder (GX) may **not** mark clean on own implement.  
> Skill: `medical-graphics` playbook visual critique · track: design-quality-system

- **chapter_id / slug:**
- **unit_id:**
- **design_contract_path:**
- **design_clean:** yes (required)
- **graphics_decision_path:**
- **claim_audit:** PASS | DRIFT | FAIL | n/a
- **author_role:** visual-critic (VC)
- **date:**
- **round:** 1 | 2 | 3 | 4 | 5
- **status:** revise | **clean** | escalate-human

## Pages inspected (mandatory)

Export before critique:

```bash
typst compile --root . --ignore-system-fonts --font-path fonts --format png --ppi 150 \
  --pages <N> <entry.typ> dist/.../pages/p{p}.png
```

| page path | what it shows | opened? |
|---|---|---|
| `dist/.../pN.png` | | yes/no |

**If any “no” → status cannot be clean.**

## Auto-block patterns (fail closed)

- [ ] Raw Typst / code / markup visible on page  
- [ ] Text overflow, cut-off, collision, or unreadable size  
- [ ] Color/emphasis **not** in Design Contract atom table  
- [ ] Diagram/geometry **less clear** than Contract’s simple alternative  
- [ ] **Sparse sprawl:** unit burns large vertical space / empty regions for few claims (fails Contract space budget)  
- [ ] Ambition track + pin-monotone (harvest proximity fail)  
- [ ] Duplicate competing presentations without role split  
- [ ] Broken layout (empty peel, missing labels, code leak in cards)  

Any checked auto-block ⇒ severity **block** below.

## Findings

| id | severity | class | page | description (where on page) | required change |
|---|---|---|---|---|---|
| V1 | block\|should\|nit | code-leak \| overflow \| uncontracted-atom \| worse-than-simple \| proximity \| craft \| pedagogy | | | |

## Pedagogy re-check (against Contract)

- [ ] Scan path 1→2→3 still works on the page  
- [ ] Must-see visible  
- [ ] No decorative theater that fails anti-theater list  

## Disposition

| open blocks | open shoulds | decision |
|---|---|---|
| | | revise → GX + re-export PNG | **clean** | escalate Human |

## Sign-off

- [ ] I opened every listed page image  
- [ ] I did **not** implement the unit under critique  
- [ ] Latest PNG set matches the build under review (paths + date)
