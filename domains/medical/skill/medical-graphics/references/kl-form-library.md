# KL form library — unit → recipe → implementation

**Load when:** Realizing or transferring Krankheitslehre visuals.  
**Ontology:** `media-brief/references/kl-illness-script-ontology.md`  
**Spike README:** `toolset/compose/spikes/graphics/kl-script-system/README.md`

Pattern transfer: copy module / asset approach → **swap claim pins** → re-audit free vision labels.

---

## Band grammar (code-first)

| Unit | Recipe id | Typst module | Form Spec | Notes |
|------|-----------|--------------|-----------|--------|
| U-urgency + U-scope | `kl-urgency-scope-stack` | `lib/us-time-scope.typ` → `us-a-erysipel()` | `briefs/kl-u-urgency-scope.form-spec.md` | Default stack; T3 collapses if empty |
| multi-T1 | `kl-urgency-nested-t1` | same → `us-b-acs()` | same | ACS/Sepsis-style |
| U-urgency dashboard | `kl-urgency-scope-dashboard` | `lib/us-d-dashboard.typ` → `us-d-erysipel()` | same | DE only; Accept code winner |
| U-mimic map | `kl-mimic-map` | `lib/m-a-mimic.typ` → `m-a-erysipel()` | `briefs/kl-u-mimic.form-spec.md` | Rows frame→danger |
| U-mimic peel | `kl-mimic-peel` | `lib/m-b-peel.typ` → `m-b-erysipel()` | same | Code peel; asset optional |
| U-for-against + NM | `kl-discrimination` | `lib/discrimination.typ` | `briefs/kl-u-discrimination.form-spec.md` | FA two-col + NM strip; then M-A |
| U-mechanism | `kl-mechanism-chain` | `lib/script-core.typ` → `mechanism-erysipel()` | — | CeTZ chain |
| U-enabling | `kl-enabling-triptych` | `enabling-erysipel()` | — | + onset bar |
| U-bigpicture | `kl-bp-three-beat` | `bp-erysipel()` | — | Was/Gefahr/Richtung |
| U-cues | `kl-cues-table` | `cues-erysipel()` | — | Untersuchung emphasis |
| U-transfer | `kl-transfer-case` | `transfer-erysipel()` | — | Open questions, no spoiler |

All `lib/` paths under:  
`toolset/compose/spikes/graphics/kl-script-system/lib/`

Demo pins default: **Erysipel** (Welle-06); ACS for multi-T1; **Melanom** transfer module.

### Chapter transfer — Melanom (V-10)

| Unit | Recipe id | Typst | Form Spec |
|------|-----------|-------|-----------|
| U-urgency + U-scope | `kl-urgency-scope-stack` + **exceptional-T1** | `lib/melanom.typ` → `us-melanom()` | `briefs/kl-melanom-urgency.form-spec.md` |
| U-mimic | `kl-mimic-map` | `mimic-melanom()` | `briefs/kl-melanom-mimic.form-spec.md` |
| FA + NM | `kl-discrimination` | `discrimination-melanom()` | (pins in module; reuse FA pattern) |
| U-bigpicture / enabling / mechanism / cues / transfer | same as band grammar | `bp-` / `enabling-` / `mechanism-` / `cues-` / `transfer-melanom()` | brief only |
| **ABCDE look** (ambition) | `kl-abcde-look` | free+refine: `assets/kl-melanom-abcde/vision-refined-02.png` (PASS); code fallback `abcde-melanom()` | `briefs/kl-melanom-abcde.form-spec.md` · Human B soft-edge + D scale honesty |

Spike PDF: `dist/spikes/graphics/kl-script-system/melanom.pdf` · source `spike-melanom.typ`  
Brief: `briefs/kl-melanom.brief.md`

**Melanom lessons (process + form):**

1. **Exception-T1:** When C de-emphasizes 112, compact exception strip — not empty solid wall.  
2. **ABCDE free vision required** for ambition; code cascade = pin-safe fallback.  
3. **Illustration-semantics:** icon/scale must match pin meaning (B soft edge; D honest >5 mm reference). Label-only audit insufficient.  
4. **Surgical refine** beats full re-gen when composition is good (free-01 → refined-02).  
5. **Transfer hygiene:** do not copy Erysipel unlabeled onset color bar into Melanom “Wann denken?” — use named tempo poles (Evolution vs Jahre unverändert).

---

## Wave-5 transfer chapters (2026-07-26)

| Chapter | Grammar | Ambition winner | Module / asset |
|---------|---------|-----------------|----------------|
| Myokardinfarkt | nested multi-T1 + mimic | — (code sufficient) | `kl-wave5/lib/mi.typ` |
| Schlaganfall | nested multi-T1 + mimic | **`kl-fast-look` densified code** (free PNG demoted) | `lib/stroke.typ` → `fast-stroke-code()` |
| Anaphylaxie | nested 5×T1 + mimic | optional later | `lib/anaphylaxie.typ` |
| Suizidalität | nested T1 + T2 psych path | **code-only safety chrome** (no free vision) | `lib/suicid.typ` · recipe `kl-safety-chrome` |
| Kompartment | T1/T2/T4 + mimic + criteria chips | **no anatomy** (paused) | `us-compartment()` · `criteria-compartment-code()` · `mimic-compartment()` · anatomy free demoted |

Content maps: `domains/medical/briefs/_wave5/*.content-map.md`  
Spikes: `toolset/compose/spikes/graphics/kl-wave5/` · PDFs `dist/spikes/graphics/kl-wave5/`  
Accept: `domains/medical/briefs/kl-wave5.accept.md`

### New recipes (Wave-5)

| Recipe id | When | Default | Gold |
|-----------|------|---------|------|
| `kl-fast-look` | FAST ≥1 → 112; T = Notruf not body part | **code densified** default; free only if true image-gen + denser than code | `fast-stroke-code()` |
| `kl-spatial-compartment` | ACS limb pressure; pulses NOT exclude; no elevation | **CeTZ anatomy** or true free image; never hexagon placeholder | `spatial-compartment-cetz()` |
| `kl-safety-chrome` | Suizidalität / psych red flags | **code only**; calm teal; no method imagery | `us-suicid()` |

### Wave-5 process lessons

1. **Content map (R)** as first artifact reduces re-reading C mid-flight.  
2. Multi-T1 chapters (MI, stroke, anaphylaxie) share one recipe; pin count differs.  
3. **Suizidalität:** free vision default **skip** — safety chrome is a form constraint, not taste.  
4. **Silent Typst-as-free-vision after 429 is forbidden** — name the carrier; do not Accept as free vision (post-mortem).  
5. EN stage chrome / empty icon wells / fake anatomy → FAIL or demote to code; density matters as much as pin text.  
6. CES-quality free vision requires **real image gen**; quota fallback is not free vision.

---

## Spatial / asset-first

| Unit | Recipe id | Asset | Form Spec | Audit |
|------|-----------|-------|-----------|--------|
| CES saddle | `kl-spatial-saddle` | `assets/kl-ces-saddle/vision-free-01.png` | `kl-ces-saddle.form-spec.md` | PASS |
| MSCC spine | `kl-spatial-mscc` | `assets/kl-mscc-spine/vision-free-01.png` | `kl-mscc-spine.form-spec.md` | PASS |

Production: optional **H-Gfx** for anatomy motifs. Prefer hybrid if pin text must be fully editable.

---

## Ambition free vision (lessons)

| Asset | Verdict | Winner path |
|-------|---------|-------------|
| `kl-m-b-mimic/vision-free-01.png` | PASS | code peel or asset |
| `kl-us-d-urgency/vision-free-01.png` | DRIFT (EN meta) | refined PNG + **code** SoT |
| `kl-us-d-urgency/vision-refined-01.png` | DE fix | still prefer code for SoT |
| CES / MSCC free | PASS | asset |

Always run claim audit after free gen. Never accept-asset on FAIL.

---

## Spike PDFs

| PDF | Use |
|-----|-----|
| `dist/spikes/graphics/kl-script-system/recreate.pdf` | P0/P1 code |
| `…/wave-o.pdf` | Full Erysipel stack |
| `…/ambition.pdf` | Free vision + recreates + spatial |
| `…/melanom.pdf` | Melanom transfer (grammar + ABCDE) |

---

## Anti-patterns (graphics)

- Form-meta inside figure  
- EN stage titles / “Action:” / “Trigger cluster”  
- Scope as fourth traffic-light step  
- Foot-legend-only hybrid as equal to flowchart  
- Accept monotony because Typst compiles  
- Label PASS with wrong icon (sharp for unscharf; dishonest mm scale)  
- Unlabeled decorative tempo/urgency color bars after pattern transfer  

---

## Adding a new form

1. Form-Space paths (Media)  
2. Form Spec if ambitious  
3. Implement `lib/` or free vision  
4. Spike + audit  
5. Accept  
6. **Append this table** + playbook recipe row  

---

## Related

- Process: `media-brief/references/kl-form-space-process.md`  
- Recipes: [`../playbook/09-form-recipes.md`](../playbook/09-form-recipes.md)  
- Accept pack: `briefs/kl-ambition.accept.md`  
