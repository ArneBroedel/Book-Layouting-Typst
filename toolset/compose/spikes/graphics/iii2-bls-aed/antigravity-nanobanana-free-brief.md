# Image brief — Nano Banana FREE design (no structure copy)

## Role of this image

You are designing a **single didactic graphic** for a German **medical emergency action card** (Notfallkarte) used by physiotherapists / practice staff **under time pressure**.

It is **not** a decorative illustration. It must help the learner **see the decision and action path** at a glance.

## Content to communicate (clinical facts — do not invent more)

**Topic:** Primary algorithm for **loss of consciousness / collapse** in practice (BLS frame).

**Ordered meaning (German labels required):**

1. **Szene sichern** — Handschuhe wenn verfügbar  
2. **Ansprechen + Schmerzreiz** — Atemwege freimachen  
3. **Entscheidung:** Atmung normal? — max. **10 s**  
4a. **Wenn ja (bewusstlos, Atmung normal):** stabile **Seitenlage**, **112**, **überwachen**  
    - Solange stabil: **weiter überwachen** (bleibt in diesem Zustand — Monitoring-Schleife)  
    - Bei **Verschlechterung**: Übergang in den CPR-Pfad (4b)  
4b. **Wenn nein / unsicher:** **112**, **CPR beginnen**, **AED holen lassen**  
5. CPR **30:2** (Erwachsene, Standardkurs) bzw. **nur Kompressionen**, wenn ungeschult/unwillig; **AED-Anweisungen folgen**  
6. Bis **Übergabe Rettungsdienst** fortsetzen — **minimale Pausen**

**Out of scope (do not add):** ALS, Medikamente, erfundenen Vitalgrenzen, Anatomie-Fotos, englische Lane-Titel.

## Didactic intent (Media design — free form allowed)

The Media designer’s ideal for this unit was roughly:

- Under stress the algorithm must **look like a flow**, not a flat table or equal bullet list.  
- **Branching** at the breathing check must be unmistakable (two different fates: monitor vs CPR).  
- **Urgency asymmetry:** the CPR path must feel louder / more urgent than the monitoring path, without hiding that monitoring is still an active clinical job.  
- **4a is not “done”:** the learner must grasp **ongoing surveillance** and the **escape hatch to CPR** if the patient deteriorates. That dual nature (loop + escalate) is the pedagogical core of 4a.  
- **Order-critical** steps 1→2→3 before the branch.  
- **5 and 6 only belong to the CPR strand** after 4b — never a shortcut from “Seitenlage” straight into CPR details.  
- Audience: practice emergency, first minutes, **scan under stress**.  
- Tone: professional medical textbook / notfall-karte — clear, calm, high contrast — not cartoon chaos, not photoreal trauma.

You may choose **any visual language** that serves these jobs: lanes, swimlanes, timeline, radial decision, card stack, map, icon system, magazine spread, etc.  
**Do not** try to copy an existing SVG, PNG, or Fletcher diagram from this repository.  
**Do not** open or use other image files under `domains/medical/assets/iii2-bls-aed/` as layout templates.

## Creative freedom

- Composition, colors, shapes, iconography: **your choice** (as long as meaning stays correct).  
- German text should stay readable and medically plausible.  
- Portrait or landscape OK; prefer portrait for a book page.  
- High resolution if possible (short side ≥ 1200 px ideal).

## Deliverables (required)

1. Generate with **Nano Banana** (or Antigravity’s best diagram-capable image generator).  
2. Save:

```text
domains/medical/assets/iii2-bls-aed/primar-algorithmus-raster-nanobanana-free.png
dist/spikes/graphics/iii2-bls-aed/nanobanana-free-p1.png
```

3. Final report: absolute paths, pixel size, model/tool name, and a short self-check:
   - exactly two exits after the breathing check?  
   - 4a has continue-monitor **and** escalate-to-CPR?  
   - 5/6 only on CPR path?  
   - no copying of repo layouts?

## Success criterion

A **different visual solution** from the existing dual-lane SVG remakes is welcome and preferred — as long as the **didactic meaning** above is preserved.
