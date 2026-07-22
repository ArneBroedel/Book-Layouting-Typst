# Playbook 03 — Claim audit (G2) — mandatory

## Why

Free vision is **not** claim-safe by default (IV-4 invented vitals; III-5 EN chrome).

## Steps

1. Open template `domains/medical/templates/graphic-claim-audit.template.md`.  
2. Transcribe **every** on-image label.  
3. Match against Form Spec claim pins / pilot C.  
4. Check: invented numbers, English stage titles, broken invariants, wrong genre.  
5. Verdict:

| Verdict | Next |
|---|---|
| **PASS** | R1 recreate; optional R3 refine; asset path open if gates OK |
| **DRIFT** | B2 surgical notes and/or recreate claim layer |
| **FAIL** | Production claims = recreate only; free = composition provenance |

6. Record result in `*.graphics.md` (Phase A notes) or audit file.

## NEVER

- `accept-asset` on FAIL  
- Treat “looks good” as claim pass  

## Evidence

See eval batch: `dist/spikes/graphics/_eval/eval-batch-2026-07-22.md`
