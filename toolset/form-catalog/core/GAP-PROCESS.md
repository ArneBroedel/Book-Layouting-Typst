# Catalog gap process (core)

How a missing form becomes a **preferred library** entry (reusable stable API).

Creative-first compose may ship a custom realization **before** this pipeline finishes — then file the gap so the next chapter reuses it cleanly. Policy: `toolset/compose/CREATIVE-COMPOSE.md`.

```text
Media ideal needs a representation
        │
        ├─► custom / spike in chapter now (allowed)
        │
        ▼
catalog-gap note (id wish, purpose, why existing forms fail)
        │
        ▼
core forms.yaml  →  status: planned  (api: TBD, package: planned)
        │
        ▼
bookkit / bookkit-didactics implements public export
        │
        ▼
forms.yaml  →  status: stable  (real api + package)
        │
        ▼
preferred library grows (validator inventory still advisory by default)
```

## Rules

1. **Domain files the gap** (Media brief / feasibility / issue). Medical genre logic stays under `domains/medical/`; the **form id** lands in **core** if it is reusable.
2. **`planned` is visible debt** — never silently map a gap to “just a table” without recording the compromise.
3. **`stable` only** when `packages/bookkit` or `packages/bookkit-didactics` actually exports the function (`lib.typ`).  
   Chapters may ship custom realizations *before* promotion to `stable`.
4. **No auto-heal:** compile/claims fail-fast; catalog inventory is advisory (`creative` mode). Humans promote reusable patterns into the library.
5. **VERSION:** content changes that add/rename/remove forms or change status require a catalog version decision (see `../README.md` pin policy).

## Minimal gap fields

| Field | Example |
|---|---|
| proposed `id` | `protocol-steps` |
| purpose | Numbered action protocol |
| why not approx | Bullet list loses urgency/order chrome |
| owner track | form-catalog + bookkit impl |
