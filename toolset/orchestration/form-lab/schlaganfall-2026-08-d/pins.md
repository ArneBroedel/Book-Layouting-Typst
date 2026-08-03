# Pins — `schlaganfall-2026-08-d`

**Frozen:** 2026-08-02  
**Wave:** 2026-08-d (clean restart — content pin only; no pilot/asset copy from a/b/c)

**Content SoT (read-only):**  
`/home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-07-welle-06-kl-full/monographs/chapter-v-4-schlaganfall.md`

## Claim floor

- No clinical rewrite; layout/media only
- Danger / triage thresholds preserved from monograph
- Mimic / trügerische Erklärungen stay teachable
- TIA = Notfall bis Ausschluss (Remission entwarnt nicht)
- Lysefenster / „Last seen normal“ preserved

## Learner jobs (matrix rows)

1. **Danger lead:** Verdacht → 112 / Stroke-Unit; keine PT-Arbeitsdiagnose im Akutverdacht
2. **FAST / BE-FAST recognition:** Face · Arm · Speech (+ Balance/Eyes) plötzlich positiv → Notruf
3. **TIME / Last seen normal:** Uhr läuft; Lysefenster < 4,5 h; „Last seen normal“ dokumentieren
4. **TIA = Notfall:** flüchtig/remittiert entwarnt nicht; 112 / NA
5. **Mimic peel:** HWS-Blockade · periphere Fazialis · Migräne-Aura · Schulter-Arm — zentrale Gefahr priorisieren
6. **Boundary:** keine HWS-Manipulation / Provokation / Abwarten bei fokal-neurologischem Verdacht
7. **Mini-case:** flüchtige Hand/Sprache + HWS-Wunsch → 112, nicht mobilisieren

## Units (expected)

- Big Picture / danger lead
- Enabling / when to think
- Mechanism (short)
- Clinical cues / FAST–BE-FAST
- Mimic / DDx discrimination
- TIME / urgency actions
- Mini-case transfer

## Wave-d craft constraints

- Pilots: `toolset/compose/pilots/form-lab-schlaganfall-d-{T,C,V,R,S}/` only (create new)
- Dist: `dist/form-lab/schlaganfall-2026-08-d/<pass>/`
- Assets: `domains/medical/assets/form-lab/schlaganfall-2026-08-d/` (V/R as needed)
- **Ban:** any mount/copy from `form-lab-schlaganfall-{,b-,c-}*` pilots, `schlaganfall-2026-08{,-b,-c}` assets/dist
