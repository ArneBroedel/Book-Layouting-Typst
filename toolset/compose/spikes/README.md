# Spikes

Small, disposable experiments to approach a Media Brief wish that is `experiment` or unclear `approx`.

## Rules

1. One spike goal (one form or layout pattern).  
2. Output PDF/PNG under `dist/spikes/` or pilot folder — not production SoT.  
3. Media Accept decides if good enough to promote to catalog `stable` or production compose.  
4. Budget: see CONSENSUS (e.g. ≤1 spike per chapter in pilot).  
5. No auto-heal loops — one build, evaluate.

## Example

```bash
# from repo root, after writing a minimal .typ that only imports bookkit
./scripts/bookkit build --entry path/to/spike.typ --out dist/spikes/spike-foo.pdf
```
