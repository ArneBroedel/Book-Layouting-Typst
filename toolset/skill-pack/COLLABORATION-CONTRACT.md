# Collaboration Contract

**Operational short law** for skill collaboration (A/B/C/**W**). Not a second CONSENSUS.  
**SoT:** this file · **Cite, do not fork.**

Depth: [`CONSENSUS-v0`](../../devtracks/CONSENSUS-v0.md) · Bounds: [`PRODUCT-BOUNDARIES`](../../devtracks/PRODUCT-BOUNDARIES.md) v0.3 · Contracts: [`contracts/`](../../contracts/) · CLEAN science: B skills + DQS provenance [`STATUS`](../../devtracks/_archive/design-quality-system/STATUS.md) · Gates: [`checkpoints`](../../domains/content-maturity/checkpoints.md)

---

## 1. Entry

| User state | Controller |
|---|---|
| Unclear / `/studio` / “wo fange ich an?” | **studio** |
| Clear specialist intent | That skill directly |
| Form Lab only | sit.**9** or explicit **lab-learning** → `form-lab-orchestrator` |

**Negatives:** “layout this chapter” ≠ Form Lab · “lektorieren only” ≠ media-brief · Form Lab COMPLETE ≠ production Accept

---

## 2. Artifact chain (production chapter, high level)

```text
freeze? → design council (Design CLEAN) → open-assets iff needed
  → realize → Visual CLEAN → packet index → Accept (channel_scope)
  → A compose/validate  and/or  W web build
```

**Accept `channel_scope`:** `print` \| `web` \| `both` (missing → print). Release package: `contracts/` + `bookkit boundaries check-release`.

Detail wire (open-assets conditionals, chapter macro VC): **T2 live** — sit.2 / book-prod P4 / G0b / templates use `open_asset_scan`. Board quality cells (**T3 Phase A live**): `design_clean`, `visual_clean`, `macro_vc`, `quality_packet`, `open_assets` on book-production board/route — enums + paths only.

---

## 3. Two colors of green

| Signal | Means | Does **not** mean |
|---|---|---|
| **Design CLEAN** | Design Critic OK on Design Contract / Form Spec | Visual ready; Accept; compose done |
| **Visual CLEAN** | Visual Critic OK on **real PNG** paths | Accept; validate green; self-build OK |
| **Accept** | Media Accept of quality packet (H2 if production) | Validate; Form Lab COMPLETE |
| **Validate** | Machine/Tech checks (claims/compile/whitelist) | Design quality; Visual CLEAN; Accept substitute |

---

## 4. Role firewall (one line each)

| Role | Does | Does not |
|---|---|---|
| **Media** | Brief, Form Spec, Design Contract, Accept | Sole Visual CLEAN; production `.typ` body |
| **Graphics** | Free vision → audit → realize; Decision Note | Author ideal alone; Accept; self Visual CLEAN |
| **Tech (A)** | Feasibility, compose, validate, embed winners (print) | Rewrite claims; invent Accept; mark CLEAN on own sole build; own W |
| **Web (W)** | Astro/web consume freeze + accepted assets | Content SoT; B asset SoT; Print Accept |
| **C / Human** | Content, freeze (H1), proof/imprimatur | Layout craft as agent autopilot |
| **Orchestrators** | Route, log, board, stop at gates; release package pins | Replace craft; self-CLEAN; self-Accept |

---

## 5. Session law

1. **One council role per step** (do not mix Design Critic + sole Contract builder as same sign-off).  
2. **Builder ≠ CLEAN signatory** on the same version (Design or Visual).  
3. **PNG paths must be real** before Visual CLEAN (open/inspect; no phantom paths).  
4. **AX ≠ sole builder** of the unit set being Accepted.

---

## 6. Caps

Budgets live in DQS + B skills (`media-brief`, `medical-graphics`) — e.g. Design Critic rounds, free-vision/refine, Visual Critic rounds, Media↔Tech. **Do not restate full budgets here.** Escalate to Human at skill caps (H-Design, H-Explore, H-Gfx, H3).

---

## 7. Optional hints — never gates

| Hint | Status |
|---|---|
| `production-bridge` (Form Lab harvest) | May inform carrier choice; **not** Accept; not Visual CLEAN waive |
| Playbook pin / form-vocabulary | Cite-if-present; execution wire **T2** |

---

## 8. Done definition

| Scope | Done when |
|---|---|
| **Chapter (production)** | Packet index + **Accept** + embed winners + **validate** |
| **Multi-unit chapter** | Above + **chapter macro VC** (page-level Visual Critic; wire **T2**) |

Validate green alone is **never** chapter done.

---

## 9. Controller ownership

| Situation | Controller |
|---|---|
| Unclear / `/studio` | **studio** |
| C-only review / freeze route | **content-orchestrator** → content-review |
| Full book / multi-chapter board / **resume board** | **book-production-orchestrator** |
| Lab-learning T→C→V→R→S | **form-lab-orchestrator** (sit.9 only) |
| Platform smoke / consumer | **bookkit** (+ typst-*) |
| Single chapter production/exploration (no board yet) | **studio hosts** mini-pipeline (sit.2); may hand to specialists |
| Board already under book-production | Resume owner = **book-production-orchestrator** (sit.7) — studio must **not** keep a shadow board |

---

## 10. CLEAN authority

| Act | Who may | Who must not |
|---|---|---|
| Author Design Contract / Form Spec ideal | Media (MD) | Graphics sole, Tech sole |
| Mark **Design CLEAN** | Design Critic role (≠ sole Contract builder on same version) | Self-tick after sole-build |
| Implement graphics / compose realization | GX / Tech | Mark Visual CLEAN on own sole build |
| Mark **Visual CLEAN** | Visual Critic role (≠ sole implementer) | Self-CLEAN |
| Media **Accept** | AX / Media non-builder relative to sole craft | Sole builder Accept of own unit set |
| **Validate** green | Machine / Tech | Used as Accept substitute |

---

## 11. Autonomy L0–L2

| Level | Studio / book-production | Form Lab (**different**) |
|---|---|---|
| **L0** | Route-only / guided handoffs | Route-only / Orchestrator-only |
| **L1** | Host steps; stop at gates | (if used) guided per pass |
| **L2** | Drive between Human gates until blocked | **Default autodrive-to-complete** (full T→S + harvest) — **not** the same as production L2 |

Form Lab L2 does **not** mean “production Accept at L2.”

---

## 12. Foundation load-when-needed

Paste when craft needs them (not Accept owners):

```text
Load typst-writer; if #pin* load pinit-workflow;
if @preview/print load typst-extension; consumer API load bookkit.
```

---

## 13. Anti-patterns

| Forbidden | Why |
|---|---|
| Validate-as-design | Validate ≠ Design/Visual CLEAN ≠ Accept |
| Form Lab COMPLETE ⇒ production Accept | Lab harvest informs; does not Accept |
| Dual boards | One board owner; resume book-production when board exists |
| Phase inflation | No extra always-on phases; open-assets is **conditional** (T2) |
| Self-CLEAN / self-Accept sole build | Session law §5 |
| Form Lab as sit.2 default | Lab = sit.9 only |

---

## 14. Links

| | |
|---|---|
| Product bounds | `devtracks/PRODUCT-BOUNDARIES.md` |
| Consensus depth | `devtracks/CONSENSUS-v0.md` |
| Roles overview | `devtracks/ROLES-AND-FLOW.md` |
| DQS provenance | `devtracks/_archive/design-quality-system/STATUS.md` |
| Human gates | `domains/content-maturity/checkpoints.md` |
| Full-book runbook | `docs/BOOK-PRODUCTION-RUNBOOK.md` |
| **T2** open-assets production wire (archived) | `devtracks/_archive/open-assets-production-wire/` |
| **T3** orchestration quality state (archived Phase A) | `devtracks/_archive/orchestration-quality-state/` |
| **R1** dogfood residual (archived · GO) | `devtracks/_archive/collab-wire-dogfood/` |
| **R2** soft packet gate (archived · live CLI) | `devtracks/_archive/quality-packet-soft-gate/` · `./scripts/bookkit validate --quality-packet PATH` |
| Trilogy index | `devtracks/skill-collaboration/README.md` |
