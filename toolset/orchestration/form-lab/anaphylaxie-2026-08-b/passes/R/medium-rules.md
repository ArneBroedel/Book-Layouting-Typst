# Medium rules — Pass R (Raster aspects)

## Goal

Maximum teaching with **many small raster images** (aspects / Kacheln — *not* physics “atoms”), composed in layout — not one giant free-vision infographic.

## Allow

- Multiple free-vision / refined **aspects** (joint, cues, mimic visual, …)  
- Typst montage + safety text outside raster  
- Per-aspect **Semantic Read PASS** + claim audit; surgical refine / regen  
- Higher gen budget than production (see kickoff D8)  
- **Short positive prompts** only — see SoT below  

## Deny

- Single mega-infographic free vision for the whole chapter  
- Shipping aspects without **Semantic Read** (Lesart · Job-Fit · Falsche Lehre · Claim-Trennung)  
- Treating Semantic Read FAIL as nit / residual while claiming medium-optimum  
- **Silent demotion** of the whole pass to code boxes mid-stream (requires Orchestrator + residual note)  
- Labels that invent clinical claims  
- Learner-facing captions that normalize bad gens (“Atom T”) when the image is wrong  

## Prompt craft (mandatory)

SoT: `domains/medical/skill/medical-graphics/references/prompt-and-semantic-read.md`

- One photographable subject per gen  
- Short, focused, unconfused description of **what we want**  
- Do **not** scale quality via per-chapter negative word lists in the prompt  
- **§1.1 preflight:** scan draft for dual-meaning / process jargon (*atomic*, *cascade*, *urgency* alone, …).  
  Agent intent “focused single detail” must **not** appear as the word *atomic* in the image prompt — rewrite to concrete subject language before gen  
- Never put Form Lab medium names or `atom_id` jargon into the image prompt

## Semantic Read (hard gate — before mount / optimum)

Immediately after each gen, **open the image**:

1. **Lesart** — what do I see in ~2s without caption?  
2. **Job-Fit** — is that the intended learner job?  
3. **Falsche Lehre** — wrong rule risk?  
4. **Claim-Trennung** — triage/diagnosis outside the image?  

**FAIL → block** (regen with clearer short prompt **or** demote / drop aspect).  
Caption does **not** clear FAIL.  
**medium-optimum-candidate** requires zero open Semantic Read blocks.  
Pass **S** may only reuse aspects with Semantic Read **PASS**.

## Exhaustion signal

More gens only reshuffle; teaching gain flat — document limits of raster for this chapter.  
Budget exhausted with open Semantic Read FAIL on an aspect → **residual-at-max** for that aspect (do not mark full optimum while a failed image remains mounted).
