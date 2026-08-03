# Phase 3 — Optional explore-band assembly

**Track:** multi-chapter-explore-layout  
**Status:** optional · default **defer** (D8)  
**Exit:** either skip with note, or ship a multi-chapter exploration PDF

---

## When to run

- After W1 H-Explore and Human says “bundle”  
- Not required for track success (S1–S9)

---

## Goals

1. Optional `main`-style assembly of accepted explore pilots for continuous reading.  
2. Keep exploration banner; no print claim.

---

## Steps (if run)

1. List accepted pilot `chapter.typ` paths from board.  
2. Create assembly entry (e.g. `toolset/compose/pilots/<book_id>/main.typ` or monorepo pattern).  
3. `typst compile` with `--ignore-system-fonts --font-path fonts`.  
4. Spot Visual QA on sample pages (P9 light).  
5. Document path on board; still **not** production.

---

## Non-goals

- PDF-X / bleed / H5  
- Renumbering as final Kursbuch pagination  
- Absorbing C content into monorepo SoT  

---

## Exit checklist

- [ ] Human decision: ship assembly **or** skip  
- [ ] If ship: PDF path + note “exploration band only”  
- [ ] Next: Phase 4 harvest  
