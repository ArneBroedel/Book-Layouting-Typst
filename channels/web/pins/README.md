# Pins — channel-local snapshots (not SoT)

Each folder is a **frozen snapshot** that W is allowed to render:

```text
pins/<chapter_id>/
  release.yaml   # contracts chapter-release package (validate with bookkit)
  content.md     # C body copy at content_revision — not the C repo
  SOURCE.md      # optional: pointer to freeze / C path (no second manuscript)
```

Accept SoT lives in **B** (`accept_paths` in `release.yaml`). A pin-local `accept.md` is
optional only when there is no B file yet (see `poc-mscc`).

**Rules**

1. Do **not** edit these files as if they were the manuscript. Update the content
   repo (C), freeze a new revision, then replace the snapshot.
2. `content_revision` must be `sha256:<64 hex>` of **this** `content.md` (or
   `git:<short>` from the C repo). If the file changes, re-hash.
3. The Astro app reads **only** this tree. It must not import `src/chapters/`
   or `domains/medical/` as source of truth.

Validate a pin:

```bash
# from monorepo root
./scripts/bookkit boundaries check-release channels/web/pins/<id>/release.yaml --check-paths
```
