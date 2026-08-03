# Pins — `anaphylaxie-2026-08-d`

**Frozen:** 2026-08-02  
**Wave:** 2026-08-d (clean restart — content pin only; no pilot/asset copy from a/b/c)

**Content SoT (read-only):**  
`/home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-07-welle-06-kl-full/monographs/chapter-v-12-anaphylaxie.md`

## Claim floor

- No clinical rewrite; layout/media only
- Danger / triage thresholds preserved from monograph
- Mimic / trügerische Erklärungen stay teachable

## Learner jobs (matrix rows)

1. **Danger lead:** Atemweg/Kreislauf/Progredienz → sofort 112
2. **Multi-system cascade:** Haut / Atem / Kreislauf / GI
3. **Action sequence:** Stopp → 112 → Lagerung/BLS → Autoinjektor-Support
4. **Mimics:** nur Urtikaria, Panik, Asthma, MSK-Enge
5. **Boundary:** kein medikamentöses Eigenprotokoll; patienteneigener Autoinjektor
6. **Biphasic** awareness after improvement
7. **Mini-case:** Nussallergie + Kloßgefühl → 112, nicht Nacken lösen

## Units (expected)

- Big Picture / danger lead
- Enabling / when to think
- Mechanism (short)
- Clinical cues
- Mimic / DDx discrimination
- TIME / urgency actions
- Mini-case transfer

## Wave-d craft constraints

- Pilots: `toolset/compose/pilots/form-lab-anaphylaxie-d-{T,C,V,R,S}/` only (create new)
- Dist: `dist/form-lab/anaphylaxie-2026-08-d/<pass>/`
- Assets: `domains/medical/assets/form-lab/anaphylaxie-2026-08-d/` (V/R as needed)
- **Ban:** any mount/copy from `form-lab-anaphylaxie-{,b-,c-}*` pilots, `anaphylaxie-2026-08{,-b,-c}` assets/dist
- **V hard:** airway glyphs must not be arc-only doodles (FAIL)
- **R:** prefer photos for recognition if V doodles fail; mount only SR PASS
- **R subjects:** urticaria/flush, lip angioedema if clear, autoinjector device (not wrong use), emergency context; omit FAIL speech/grimace
