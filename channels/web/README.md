# Produkt W — Web layout (Astro PoC)

**Status:** isolated proof of concept. Not a second bookkit. Not content SoT.

| Concern | Owner | Here? |
|---|---|---|
| Fachtext / Freeze | **C** (external) | snapshot only under `pins/` |
| Briefs / assets / Accept | **B** | Accept excerpt in the pin |
| Print PDF | **A** | **no** |
| Web presentation | **W** (this tree) | Astro app |

## Isolation (do not break this)

Everything Node/Astro stays **inside this folder**:

```text
channels/web/
  package.json          # only W dependencies
  astro.config.mjs
  src/                  # pages, layout, CSS, pin loader
  pins/<id>/            # freeze snapshots + release.yaml
  dist/                 # gitignored build output
  node_modules/         # gitignored
```

- No root `package.json`.
- No import of `packages/bookkit` or `src/chapters`.
- Book CI does **not** run Astro.

## Run (from this directory)

```bash
cd channels/web
npm install
npm run dev      # http://127.0.0.1:4321/
npm run build
npm run preview
```

Current pins: `poc-mscc` (W-internal fixture) · `demo-anaphylaxis-lite` (C gold freeze → W).

## Add a chapter pin

1. Freeze in **C**; `cp` the frozen body to `pins/<id>/content.md` (same bytes).
2. `content_revision` must be that file's `sha256:…` (or `git:<short>` from C). The
   Astro loader **fails the build** if a `sha256:` pin does not match `content.md`.
3. Write a B Accept (`channel_scope: web` or `both`) and point `accept_paths` at it.
4. Fill `pins/<id>/release.yaml` from `contracts/templates/chapter-release.template.yaml`.
5. From repo root:

```bash
./scripts/bookkit boundaries check-release channels/web/pins/<id>/release.yaml --check-paths
```

See [`pins/README.md`](pins/README.md).

## Do not

- Put the web app under `packages/bookkit`
- Treat `pins/` as the manuscript SoT
- Treat showcase `src/chapters` as Kursbuch content
- Add `node_modules` or Astro `dist/` to git

Ownership: [`OWNERSHIP.md`](OWNERSHIP.md) · policy: [`../../devtracks/PRODUCT-BOUNDARIES.md`](../../devtracks/PRODUCT-BOUNDARIES.md).
