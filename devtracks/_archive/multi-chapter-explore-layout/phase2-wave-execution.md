# Phase 2 — Wave execution (per chapter pipeline)

**Track:** multi-chapter-explore-layout  
**Exit:** W0 done + H-Explore; then W1 done + H-Explore (and optional W2)

---

## Per-chapter pipeline (canonical)

```text
1. Content map (R) — short, pin tables from C only
2. media-brief:
     free ideal + section plan + wishlist
     Form Spec + Design Contract for each non-prose visual unit
3. Design Critic → Design CLEAN (budget 4 → H-Design)
4. medical-graphics per unit:
     track: free-vision-ambition | grammar-only | none
     free vision if ambition: ONE claim, default NO labels in raster
     claim audit (text + illustration-semantics + laterality)
     harvest; realize OR step-down simple alternative on FAIL
5. Visual Critic on chapter PNG (budget 5) → Visual CLEAN
     attack sparse-sprawl AND squish-compress
6. Quality packet + exploration Accept
7. compose-chapter → dist/pilots/<slug>/chapter.pdf
8. bookkit validate (exploration accept phrase)
9. Board + run-log update
```

**Skills:** load procedures from SoT (`domains/medical/skill/…`, `toolset/skill-pack/…`) — do not invent parallel process.

**Cold sessions:** every new agent window must follow  
`toolset/orchestration/book-production/kursbuch-explore-2026-08/SESSION-START.md`  
so the **same** skill invocations run as in “production” (orchestrator + specialist SKILL.md), not a chat-local shortcut.

---

## Creativity in execution

| Allowed | Forbidden |
|---|---|
| Free ideal different from CRPS/Erysipel look | Silent form-id shopping list as only “brief” |
| Wishlist / ambitious patterns with severity | Invent clinical thresholds |
| Grammar transfer with new pins | Copy old disease modules as clinical SoT |
| Solid table/cluster after free FAIL | Blob “hand” placeholder demotion |
| Chapter-specific spacing that breathes | Page-count squish polish |

**Ambition default:** for ≥1 unit per chapter when pedagogically justified; if skipped, document why in brief (grammar-only opt-in).

---

## Wave loop

```text
for chapter in wave:
  run per-chapter pipeline (L2 auto between unit gates)
  stop only on: H-Design, H-Gfx, caps, hard error
  # L2: do NOT stop after one chapter for chat when board still has todo
after all locked rows done:
  portfolio idle → optional Human H-Explore sample
```

### H-Explore vs agent-only (D4)

| Kickoff choice | Behavior |
|---|---|
| **Agent-only H-Explore (D4)** — default this portfolio | Agent enforces Visual CLEAN; **continue across waves** until portfolio idle; Human samples anytime |
| Hard H-Explore per wave | After wave: STOP with packet; revise list; then next wave |

Do **not** interpret “after wave → H-Explore” as a mandatory agent pause when D4 is set.

### H-Explore packet (agent prepares when stopping for Human)

- Paths: `code dist/pilots/<slug>/chapter.pdf` (+ p1.png recommended)  
- 3-line note per chapter: genre, ambition winner/carrier, open residuals  
- Board screenshot summary: done / blocked  

### Parallel workers (optional)

Allowed for throughput if each chapter still gets full skill packets **and** the parent reconciles board + re-checks **macro scan-path / print density** on composed chapter PNGs before claiming idle.  
Ops detail: `toolset/skill-pack/book-production-orchestrator/references/multi-chapter-explore.md`.

---

## Caps (inherit)

| Loop | Max | Then |
|---|---|---|
| Free gens / unit | 2 | stop free / simple alt |
| Refine / unit | 2 | code |
| Design critique | 4 | H-Design |
| Visual critique | 5 | Human |
| Media↔Tech | 2 | Human |

---

## Definition of done (one chapter)

- [ ] Brief + contracts/critiques for non-prose units  
- [ ] Free skip / grammar-only **documented** when ambition not used  
- [ ] Design CLEAN + Visual CLEAN (or documented Human waiver)  
- [ ] Visual CLEAN includes **macro scan-path** (structure, indent, calm flow) on **full chapter PNGs**  
- [ ] Print density: no mid-chapter full-page airy heroes; compact body flows; no squish  
- [ ] Accept exploration authorized  
- [ ] Pilot PDF + validate OK  
- [ ] Board cells + portfolio row updated  
- [ ] No production compose claim  

### Content-map hygiene (KL)

- TIME only for filled tiers; **T3 collapse** if C silent (no empty slot, no invent)  
- **SCORE / CERTAINTY** (Wells, YEARS, ABCD², MHS, …) → **SCOPE / Sensibilisierung**, never TIME step or rule-out  

---

## Exit checklist (phase)

- [ ] W0 complete + H-Explore recorded in notes/run-log  
- [ ] W1 complete + H-Explore (if N includes W1)  
- [ ] S2 progress vs N visible on board  
- [ ] Next: Phase 3 optional or Phase 4 harvest  
