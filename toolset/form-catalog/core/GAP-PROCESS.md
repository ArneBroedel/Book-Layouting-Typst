# Catalog gap process (core)

How a missing form becomes production-legal.

```text
Media/Tech need a representation
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
compose validator accepts form id in production
```

## Rules

1. **Domain files the gap** (Media brief / feasibility / issue). Medical genre logic stays under `domains/medical/`; the **form id** lands in **core** if it is reusable.
2. **`planned` is visible debt** — never silently map a gap to “just a table”.
3. **`stable` only** when `packages/bookkit` or `packages/bookkit-didactics` actually exports the function (`lib.typ`).
4. **No auto-heal:** compose fails on unknown forms; humans promote the catalog.
5. **VERSION:** content changes that add/rename/remove forms or change status require a catalog version decision (see `../README.md` pin policy).

## Minimal gap fields

| Field | Example |
|---|---|
| proposed `id` | `protocol-steps` |
| purpose | Numbered action protocol |
| why not approx | Bullet list loses urgency/order chrome |
| owner track | form-catalog + bookkit impl |
