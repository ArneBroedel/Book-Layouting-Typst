# Form Spec — ACS Clinical Criteria · `kl-kompartment-batch-2026-08`

- **chapter_id / slug:** V-3-kompartmentsyndrom / `kl-kompartment-batch-2026-08`
- **unit_id:** U-criteria
- **brief_path:** `domains/medical/briefs/kl-kompartment-batch-2026-08.brief.md`
- **content_source:** C danger + §3 + §4 + Notes Claims 1–5, 8
- **author_role:** media
- **date:** 2026-08-01
- **ambition:** free-vision **skip** (no anatomy) — **code L4 quiet 2×2 panel required**
- **track hint:** grammar-only (transfer quieter criteria from wave-6; re-pin batch)
- **design_contract_path:** `kl-kompartment-batch-2026-08-criteria.design-contract.md`
- **design_clean:** yes

## Learner job

**recognize** (+ stop-awareness) — scan the ACS clinical cluster without inventing 6P and without multi-orange wall stack.

## Simple alternative

§3 bullets alone — under-teaches co-located Pulse-KI + anti-elevation next to triad.

## Must-see

1. Disproportionaler Schmerz (out of proportion)  
2. Passiver Dehnungsschmerz  
3. Brettharte Loge  
4. **Pulse schließen ACS nicht aus** (high-weight safety claim)  
5. **Nicht über Herzhöhe lagern**  
6. Stundenkritisch / Handlung: stop → NA (112 if rapid worsen)  

## Explicit non-goals

- No anatomy free vision / osteofascial atlas  
- No 6P alphabet  
- No mmHg thresholds as HP cutoffs  
- No multi-orange stacked bar walls (use quiet 2×2 equal-weight triad + danger Pulse chip)  
- No blob demotion  

## Claim pins (C)

| pin | text |
|---|---|
| Triad | Schmerz deutlich stärker als zur Verletzung passend; massiver passiver Dehnungsschmerz; brettharte Loge |
| Pulse | **Tastbare Pulse schließen ACS nicht aus** — gleiche Dringlichkeit |
| Anti-elevation | Extremität nicht über Herzhöhe lagern; Hochlagerung mindert arterielle Perfusion; kein Ersatz für Notfallversorgung |
| Action | Screening → sofortiger Therapieabbruch → Notfallweiterleitung (NA/Unfallchirurgie; 112 bei rascher Verschlechterung) |

## Success criterion

Under ~15 s learner lists triad + states pulses do not clear ACS + does not elevate above heart.

## Handoff

Realize: `criteria-acs()` in `domains/medical/lib/typst/d-risc-batch-2026-08/kompartment.typ` — quiet 2×2, Pulse cell danger weight.
