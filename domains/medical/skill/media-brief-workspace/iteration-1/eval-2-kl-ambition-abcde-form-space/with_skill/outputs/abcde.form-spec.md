# Form Spec (Media — Stage M)

- **chapter_id / slug:** V-10-melanom-abcde-hautscreening / `abcde-structured-look`
- **unit_id:** U-abcde-look (chapter-specific structured look; CHANNEL support, not TIME/SCOPE)
- **brief_path:** exploration eval · Form-Space `form-space.md` (same outputs dir)
- **content_source:**  
  `/home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-07-welle-06-kl-full/monographs/chapter-v-10-melanom-abcde-hautscreening.md`  
  (§3 Beobachtung; Abkürzungen ABCDE; Big Picture / Direktzugang framing)
- **genre:** illness-script / lerntext (kl-kurz)
- **recipe_fn:** candidate `kl-abcde-look` (harvest only after Accept)
- **author_role:** media
- **date:** 2026-07-26
- **ambition:** free-vision **required** (primary path AD-D dual-field); code fallback AD-A letter cascade if audit fails
- **form_language_rule:** no form-meta inside the figure (no ontology IDs, no “mnemonic map”, no EN stage titles)

> Medizinpädagogisch **beste** Darstellungsform for the ambition slot: ABCDE + Ugly Duckling as a **structured look form**, not a glossary dump.  
> **Keine** form ids / bookkit-APIs as design vocabulary. **Keine** Claim-Erfindung (Pins = copy-through aus C).  
> Skill: `media-brief` · Guide: `Guides/KL-Form-Language.md` · Process: grammar first → ambition

## Learner context

- **Actor:** PT Direktzugang during undressing / inspection in the treatment field  
- **Time pressure / scan budget:** 15–30 s structured look  
- **Setting:** Praxis (MSK session; Rücken/Nacken mitinspizieren is content context, not a separate pin invent)

## Learner job (one primary)

**recognize** (criteria cluster)

**Primary job in one sentence:** Run a structured visual check (ABCDE + Ugly Duckling) and treat positive/suspekt as **ärztliche Zuweisung**, not as PT fine diagnosis, local destruction, or “alter Fleck — abwarten”.

## Load risks (if form is wrong)

- Five equal table rows with no visual hierarchy (ambition slot lost)
- Invented cut-offs or diameter ladders other than C’s **typisch > 5 mm**
- Decorative / photoreal mole art that invents morphology not in pins
- EN-only letter expansions without German clinical criteria
- Solid-red emergency wall or fake TIME stack for a recognition unit
- Form-meta captions explaining the diagram type inside the art

## Cognitive / layout levers (only what layout can fix)

- **Segmenting:** A–E as ordered steps of one look  
- **Contiguity:** each letter glued to its DE criterion (no orphan letters)  
- **Signaling:** Ugly Duckling optically *distinct* from letters (second sign, not letter F)  
- **Dual coding (ambition):** schematic multi-lesion field with one outlier supports the Ugly Duckling job without replacing text pins  
- **Figure–ground:** criteria lane readable under scan; skin-field supports, does not drown, labels

## Information architecture (zones)

| zone | loudness | content role | must feel like |
|---|---|---|---|
| 1 Letter spine / field A–E | **loud** | five criteria of structured look | ordered checklist-as-form |
| 2 Ugly Duckling | **medium-loud** | second recognition sign | distinct geometry from A–E, equal *job* weight |
| 3 Action micro | medium | if suspekt → ärztliche Zuweisung; no destruction | pointer, **not** full §5 TIME stack |
| 4 Job frame (optional header) | medium | strukturierter Blick framing | Direktzugang task, not dermatology atlas |
| Quiet trailing | quiet | no sources / no form-meta first | — |

**Ambition composition (AD-D):** Zone 1 + 2 may split spatially into **criteria lane** (left/top) + **schematic skin-field outlier** (right/bottom). Pins stay identical.

## Must-see elements

What must be *visible* (not only somewhere in prose):

1. **All five letters A–E** with **German clinical meanings from C** (not EN-only)  
2. **A** Asymmetrie  
3. **B** unscharfe/unregelmäßige Begrenzung  
4. **C** Farbvielfalt (Color)  
5. **D** Durchmesser **typisch > 5 mm** (exact sense from C — no other mm cut-offs)  
6. **E** Evolution  
7. **Ugly Duckling:** eine Läsion unterscheidet sich klar von den übrigen Nävi  
8. Micro-consequence: suspekt → **ärztliche Zuweisung** / no PT diagnosis frame  
9. Forbidden-action cue present or adjacent: **keine** Biopsie, Kürettage, destruktiven Maßnahmen an suspekten Läsionen (from C)  
10. **No form-meta** inside the figure  

## Urgency / weight encoding

- Recognition chrome: **teal / primary framework** (illness-script), **not** solid-red 112 wall  
- Optional small “→ zuweisen bei Suspekt” pointer only — **not** full T1–T4 stack (owned by urgency Spec)  
- Ugly Duckling may use a distinct accent (e.g. amber outlier) **without** inventing emergency tier meaning  
- Default-to-Danger does **not** apply as a full emergency wall on this unit

## Branching / loop invariants (if any)

- Exactly **five** letter criteria A–E — Ugly Duckling is **parallel sign**, not letter F  
- No invented sixth clinical criterion  
- No diameter ladder beyond the single pin **typisch > 5 mm**  
- No merge of this unit with mimic frames (“alter Fleck”) — those stay U-mimic  
- Sequential order A→E preferred (cascade / dial); radial layout may show equal spokes but must still label A–E clearly  

## Genre chrome

- **Must look like:** KL / lerntext structured-look teaching form; scannable mnemonic + second sign  
- **Must not look like:** operative Notfallkarte; dermatology photo atlas; full TIME triage ladder; English decorative stage poster  

## Claim pins (German, copy-through from C)

| step / zone | allowed text (German) |
|---|---|
| A | Asymmetrie |
| B | unscharfe/unregelmäßige Begrenzung |
| C | Farbvielfalt (Color) |
| D | Durchmesser typisch > 5 mm |
| E | Evolution |
| Letter expansion (abbrev table, optional quiet) | Asymmetrie, Begrenzung, Color (Farbe), Durchmesser, Evolution |
| Ugly Duckling | eine Läsion unterscheidet sich klar von den übrigen Nävi |
| Job frame | strukturierter Blick (ABCDE, Ugly Duckling) |
| Job frame (Big Picture) | Früherkennung suspekter Veränderungen; rechtzeitige ärztliche Zuweisung |
| Action micro | bei ABCDE-Suspekt die Zuweisung (nicht Eigenetikettierung) |
| Forbidden | keine Biopsie, keine Kürettage, keine destruktiven Maßnahmen an suspekten Läsionen |
| Context (only if space; from C Beobachtung) | „Ugly Duckling“; ABCDE-Regel |

**Not allowed as pins (not invent):** any mm other than **typisch > 5 mm**; Breslow; staging; EN-only criterion lines as sole labels; fake T1 primary pathway; PT diagnosis / Exzision as learner action.

## Explicit non-goals / must-not

- No invented thresholds / doses / English decorative stage titles  
- Not a full TIME stack (urgency Spec)  
- Not dermatology fine-diagnosis atlas  
- Not mimic-map replacement for “alter Fleck” (separate unit)  
- No production Typst / bookkit APIs in this Spec  
- No form-meta inside the graphic  

## Presentation hypothesis (pattern name)

**Primary (ambition):** dual-field structured look — **criteria letter spine + schematic skin-field outlier** (Ugly Duckling dual coding); free vision **required**, then claim audit.  
**Fallback (grammar-safe harvest):** **letter cascade / vertical mnemonic** A→E with Ugly Duckling side badge or final beat (`kl-abcde-look` code candidate).  
**Alt gestalt:** radial pentagon A–E + Ugly Duckling satellite (same pins).

## Success criterion

Under undressing / scan stress the learner **recalls ABCDE + Ugly Duckling as one checklist form**, sees all five DE criteria (including **Durchmesser typisch > 5 mm** and **Evolution**), and treats a positive look as **medical assignment** — not “watch and wait in PT”, not local destruction, not fine diagnosis.

## Handoff to Graphics

- [x] Form Spec complete for this unit  
- [x] Ambition flag set (**free-vision required** on AD-D; code fallback AD-A)  
- [x] Claim pins reviewed against C (§3 Beobachtung + Abkürzungen + Big Picture / Untersuchung forbidden measures)  
- Visual-Unit → `medical-graphics` playbook from Stage G0: free vision → **claim audit** (every on-image label vs pins) → recreate / hybrid / refine  
- Prefer **hybrid** (schematic field asset + Typst-pinned labels) or **code** letter cascade if free vision fails audit  
- Raster-only winner only if claim audit PASS + gates  
