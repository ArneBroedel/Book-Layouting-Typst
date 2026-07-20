# Medical educational design — compressed compendium

Lean synthesis of the former A–J + Foundation + Supplement I1 corpus.  
**Human-in-the-loop** always: agents propose and flag; humans freeze, free and own clinic/law.

Product map for *this* studio:

| Compendium block | Primary home in repo |
|------------------|----------------------|
| Presentation / visual / load | **B** `media-brief` + `design-reasoning.md` |
| Text structure, claims, safety wording | **C** `content-review` + checklists |
| Layout implementation | **A** `compose-chapter` / bookkit |
| Full publish ERP / LMS / AR-VR | Library only (below) |

---

## 0. Operating principles (all roles)

1. **No medical statement without a traceable source** (in Content SoT — agents don’t invent clinic).  
2. **No recommendation without scope, uncertainty, and update risk** surfaced to humans.  
3. **No safety-critical simplification** that drops contraindications, red flags, or stop rules.  
4. **Didactic clarity ≠ clinical authorization** — layout/media never “approve” care.  
5. **Loudness follows urgency/job**, not source-file order.  
6. **Explore then constrain** (Media ideal → Tech catalog) — no form-id-first design.

---

## 1. Foundation — learning science (essentials)

**Audience models:** andragogy (problem-centered adults); novice→expert chunking; situated learning; health literacy for lay readers.

**Load & memory**

| Idea | Practice |
|------|----------|
| Cognitive load (Sweller) | Cut *extraneous* (noise, split attention, pure redundancy); segment high *intrinsic* |
| Working memory ~4± | One job per block; chunk |
| Dual coding | Text + image *complementary*, not duplicate |
| Worked examples → fade | Novices: full cases first; experts: open cases (expertise reversal) |
| Spacing / retrieval / interleaving | Paths & quizzes beat reread; mix similar differentials |
| Split attention | Labels next to referents |

**If → then (content or media emphasis)**

- Lay audience → lower Bloom target; plain language; action-first.  
- Experts → analysis/weighing; skip baby definitions.  
- Safety-critical → clarity and error-proofing over elegance; human review.  
- >~5 new concepts at once → segment.  
- Same info in speech + full on-screen text → drop redundancy (unless a11y caption need).

---

## 2. Visual & perception (was B + C)

**Gestalt:** proximity, similarity, continuity, closure, figure–ground, common fate → group what belongs causally.

**Pre-attentive (pop-out):** encode *one* critical attribute (color *or* size *or* shape) for the main signal; multi-attribute search is slow.

**Diagram pick**

| Need | Form |
|------|------|
| Process / algorithm | Flow, decision tree |
| Time course | Timeline |
| Compare two dims | Matrix |
| Quantity flow | Sankey / flow |
| Spatial structure | Anatomical schema |
| Interaction net | Network (use sparingly) |

**Tufte-ish:** maximize data-ink; no chartjunk; no distorted scales; label in place; cite source on figures.

**Color:** never sole carrier of meaning; colorblind-safe; semantic traffic-light only with redundant coding; warm = risk, cool = normal/info (project tokens override).

**Hierarchy:** title > category > body > notes; whitespace separates clusters; WCAG contrast for text/UI chrome.

**Decision rules:** quantitative compare → position/length; category → shape/color+label; warning → single primary stop > many medium callouts; sources quieter and later.

---

## 3. Didactics & reduction (was D + Foundation ops)

**Leitfragen:** Who learns? What competence? What for (act / exam / lookup)? How is success visible?

**Principles:** goal before volume; activate prior knowledge; segment; contextualize; retrieve; feedback; progressive demand; safety overrides elegance.

**Bloom (use as level, not bureaucracy):** remember → understand → apply → analyze → evaluate → create. Objectives = observable verb + content + condition if needed (SMART enough to test).

**Reduction methods:** exemplar pick; elementarize; sequence; change representation; plain language.  
**Allowed** if understanding rises and no dangerous false model.  
**Forbidden** if it removes warnings, doses/order-critical steps, or invents false certainty.

**Advance organizer:** short graphic/text map before dense chapters.  
**Differentiation:** by prior knowledge and job-to-be-done — not VARK as science.  
**Feedback:** timely, specific, next step; directive under safety pressure; socratic when safe and advanced.  
**Assessment:** items match objective level; avoid ambiguous stems; formative ≠ summative purpose.  
**Spiral:** revisit core topics with rising complexity across a work/curriculum.

**Eight ops rules:** goal > bulk; prior knowledge > depth; segment complexity; explain before open apply (novices); apply before drill (advanced); assess what you taught; redundancy only if safety/clarity gains; human fach review when simplification touches safety.

---

## 4. Multimedia (was E) — only when non-print matters

**Mayer (keep these four in briefs):** multimedia; coherence; spatial/temporal contiguity; segmenting. Also: signaling; avoid full redundancy of narration+identical text; modality when animation is spoken.

**Format fit:** process → animation/video; decision practice → branched case; anatomy space → interactive hotspots/3D *if* justified; pure lookup → static wins.

**Storyboard:** beat = one idea; on-screen text sparse; check a11y (captions, contrast, keyboard if interactive).

**Microlearning:** one objective per unit; retrieval closer > passive scroll.

---

## 5. Content structure / IA (was F) — for scan & modularity

**Morville-ish:** findable, accessible, clear labels, multiple doors (facets), consistent patterns.

**Structure patterns:** problem–solution; cause–effect; chronological; compare; concept–definition; process. Pick by reader job.

**Topic types (DITA-ish):** Task (how), Concept (what/why), Reference (lookup) — don’t mix all three in one wall.

**Medical IA specials:** warnings and actions not behind SEO fluff; multi-path to same topic (symptom *and* system); cross-refs maintained after corrections.

**SEO/YMYL (secondary here):** E-E-A-T, clear titles — never at cost of clinical safety order.

---

## 6. Sources & claims (was A) — Content-primary

**Agent may:** flag missing source, stale guideline risk, absolute wording, lead/body safety split.  
**Agent must not:** invent doses, guidelines, citations, or silent claim edits.

**Hierarchy (typical):** systematic guidelines / high-quality synthesis → solid primary studies → textbooks → narrative expert opinion → unvetted web/social (**insufficient alone for critical claims**).

**Say uncertainty:** distinguish established / limited / contested / individual decision. Prefer absolute risk framing when relative risk would mislead.

**Safety classes (conceptual):** high = dosing, airways, red flags, absolute KIs → human escalation; never “helpful” numeric invention.

**Studio mapping:** Critical Claims + freeze + `content-review`; Media only *presents* frozen claims.

---

## 7. Ethics / compliance (was G) — flags, not counsel

- **Bioethics in publish:** autonomy (no manipulative framing), non-maleficence (no harmful misinfo), beneficence (real understanding), justice (fair representation, accessible language).  
- **Publication vs clinical ethics:** integrity of knowledge product vs bedside decision.  
- **Copyright / CC:** check license; KI-only output often weak protectability — don’t scrape figures.  
- **DSGVO health data:** anonymize hard (mosaic risk); consent for identifiable images.  
- **HWG / advertising:** no unlawful healing promises; mark sponsored.  
- **COI / funding:** declare.  
- **AI:** disclose generation where required; human responsibility for medical-facing text remains.

Escalate legal edge cases to humans — checklist, not Gutachten.

---

## 8. Quality, evaluation, safety gates (was H + I)

**Quality dims:** correctness, currency, completeness-for-job, comprehensibility, safety.

**Error classes:** factual, linguistic, ethical, legal, didactic — severity critical / major / minor.  
**Corrections:** erratum vs correction vs retraction (COPE-shaped process; human-owned).

**KI-specific:** hallucination hunt; citation check; human mandatory on safety; no vanity 0–10 release scores as gates (aligns with content-maturity **floor**).

**Eval angles:** readability; can learner do the job?; usability heuristics; a11y; misread taxonomy (wrong dose, missed stop, false reassurance).

**Gates (conceptual):** fail on critical misread risk → block release; map to studio **H1 freeze / H2 accept / H4 proof**, not a parallel ERP.

---

## 9. Interactivity & “future” (was J) — wishlist language only

Scale: passive → quiz → branched case → full sim. Prefer **lowest** interactivity that trains the job.

Use cases: case branches with feedback; digital OSCE-like only with validity plan; AR/VR only when spatial/motor need beats cost.

Personalization / LMS / xAPI: privacy-first; not default for print-first Kursbuch pipeline.

**Anti-patterns:** gamification without objective; black-box adaptive scoring; sim that trains the wrong action.

---

## 10. Workflow (was I1) — mapped to studio, not a second pipeline

Legacy linear “brief → research → KI draft → multi review → publish” **overlaps** A/B/C. Canonical studio flow:

```text
C draft → content-review (≤2) → H1 freeze
  → B media-brief (exploration | production)
  → A feasibility/spike → H2 accept → compose + validate
  → H4 proof → (H5 imprimatur later)
```

Use I1 ideas only as **role reminders** (who owns fach / language / legal / didactic), not as competing orchestrator.

---

## 11. Cross-cutting anti-patterns

| Pattern | Why bad |
|---------|---------|
| Form-id shopping as “design” | Skips learner job |
| Gatekeeper buried under sources/intro | Stress failure |
| Equal visual weight for 112 vs optional | Urgency loss |
| Lead simplifies away stop rules | Safety |
| Assessment not matched to objective | False mastery |
| Agent-only freeze / claim silent edit | Process break |
| Loading this whole library into every prompt | Context bloat |

---

## 12. Quick checklists (portable)

**Media (before Brief section plan)**  
□ unit type □ learner job □ load risk □ pattern hypothesis □ recipe fn  

**Content (review)**  
□ job of chapter clear □ lead vs body safety □ claims testable □ no invented clinic □ order explicit if order-critical  

**Accept (spike)**  
□ main job first screen □ action > links □ order visible □ urgency not flattened □ no new thresholds  

---

## 13. Former module index → where it went

| Old | Compressed into | Runtime |
|-----|-----------------|---------|
| Foundation | §1 | partly B-core / C load |
| A | §6 | content-review, claims |
| B, C | §2 | design-reasoning |
| D | §3 | design-reasoning + developmental-edit |
| E | §4 | design-reasoning (multimedia note) |
| F | §5 | brief structure / recipes |
| G | §7 | safety-flags / Human |
| H, I | §8 | content-maturity floor + H-gates |
| J | §9 | wishlist only |
| I1 | §10 | orchestrator / CONSENSUS flow |

---

*Compendium is a working hypothesis distilled from AI-assisted research modules, not peer-reviewed medical education policy.*
