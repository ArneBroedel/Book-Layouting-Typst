# Intake question bank (studio)

Ask **only missing** fields. Prefer one message with a short form over many micro-turns.

---

## Universal (almost every path)

1. **Goal (one sentence):** What does “done” look like for *this* session?  
2. **Scope:** full book / one chapter / one visual unit / platform only?  
3. **Content location:** path(s) to Markdown (or “not ready yet”).  
4. **Quality bar:** `exploration` (prototypes OK) or `production` (freeze + accept + validate gates)?  
5. **Autonomy:** L0 (tell me each step) / L1 (you drive, stop at accepts) / L2 (drive between Human gates)?

---

## If content exists

6. **Status:** draft / in review / frozen / unknown?  
7. **Critical Claims:** listed in content? where?  
8. **Genre / didactic type:** notfall-karte, lerntext, fallbasiert, kl-kurz/kl-voll, plain-book, …?

## If production

9. **Freeze record path** (or schedule H1 now).  
10. **Who signs Accept / Proof** (Human names if multi-person).

## If multi-chapter / full book

11. **book_id** (slug, e.g. `kursbuch-welle-07`).  
12. **Chapter inventory** (list or directory).  
13. **print_target:** screen / print-pdfx / both.  
14. **project_root** for assembly (consumer vs monorepo).

## If graphics matter

15. **Which units need more than text boxes?** (list headings).  
16. **Existing Form Specs / visions / assets?** paths.  
17. **Anatomy / procedure / diagnostic image?** → flag H-Gfx.

## If compose / validate

18. **accept path**, **typ path**, **content path**, optional **genre-minima**.  
19. **catalog** pin (default studio forms.yaml).

## If resume

20. **book_id** or path under `toolset/orchestration/book-production/`.  
21. Last known phase / blocker.

---

## Defaults (if user is impatient)

| Field | Default |
|---|---|
| autonomy | L1 |
| brief_class | exploration until they say production |
| print_target | screen first |
| project_root | monorepo studio `.` unless they have a consumer |
| graphics | “assess after Media Brief” |

State defaults aloud when applying them.

---

## What never to invent

- Clinical thresholds, doses, scores not in content  
- Freeze/Accept signatures  
- That content is frozen without a freeze file or explicit Human statement  
