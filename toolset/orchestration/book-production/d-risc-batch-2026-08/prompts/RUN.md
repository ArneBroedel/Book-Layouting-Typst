# Gemini Visual Review — CLI-Laufzettel

Voraussetzung (einmal):

```bash
python3 .agents/skills/sh-gemini-chat/scripts/gemini_chat/cli.py doctor
# bei Bedarf: …/cli.py login
```

Arbeitsverzeichnis: Repo-Root `Book-Layouting-Typst`.

---

## Empfohlen: Dialog (5 Turns)

### Turn 0 — System

```bash
python3 .agents/skills/sh-gemini-chat/scripts/gemini_chat/cli.py ask \
  --model pro --json \
  "$(cat toolset/orchestration/book-production/d-risc-batch-2026-08/prompts/00-system.md)"
```

Permalink aus der Antwort merken (falls Multi-Turn-Continue genutzt wird).

### Turn 1 — II-1

```bash
python3 .agents/skills/sh-gemini-chat/scripts/gemini_chat/cli.py ask \
  --model pro --json \
  --file dist/pilots/ii1-drisc-batch-2026-08/p1.png \
  --file dist/pilots/ii1-drisc-batch-2026-08/p2.png \
  --file dist/pilots/ii1-drisc-batch-2026-08/p3.png \
  "$(cat toolset/orchestration/book-production/d-risc-batch-2026-08/prompts/00-system.md)

---

$(cat toolset/orchestration/book-production/d-risc-batch-2026-08/prompts/01-ii1.md)"
```

### Turn 2 — IV-2

```bash
python3 .agents/skills/sh-gemini-chat/scripts/gemini_chat/cli.py ask \
  --model pro --json \
  --file dist/pilots/iv2-ruecken-batch-2026-08/p1.png \
  --file dist/pilots/iv2-ruecken-batch-2026-08/p2.png \
  "$(cat toolset/orchestration/book-production/d-risc-batch-2026-08/prompts/02-iv2.md)

Kontext: Du bist im laufenden Visual-Review des Batches d-risc-batch-2026-08.
Kapitel 1 (II-1) hast du bereits bewertet. Jetzt nur Kapitel 2 nach dem gleichen Schema."
```

### Turn 3 — Gicht

```bash
python3 .agents/skills/sh-gemini-chat/scripts/gemini_chat/cli.py ask \
  --model pro --json \
  --file dist/pilots/kl-gicht-batch-2026-08/p1.png \
  --file dist/pilots/kl-gicht-batch-2026-08/p2.png \
  --file dist/pilots/kl-gicht-batch-2026-08/p3.png \
  "$(cat toolset/orchestration/book-production/d-risc-batch-2026-08/prompts/03-gicht.md)

Kontext: Batch d-risc-batch-2026-08, Kapitel 3/4. Gleiches Schema wie zuvor."
```

### Turn 4 — Kompartment

```bash
python3 .agents/skills/sh-gemini-chat/scripts/gemini_chat/cli.py ask \
  --model pro --json \
  --file dist/pilots/kl-kompartment-batch-2026-08/p1.png \
  --file dist/pilots/kl-kompartment-batch-2026-08/p2.png \
  --file dist/pilots/kl-kompartment-batch-2026-08/p3.png \
  "$(cat toolset/orchestration/book-production/d-risc-batch-2026-08/prompts/04-kompartment.md)

Kontext: Batch d-risc-batch-2026-08, Kapitel 4/4. Gleiches Schema wie zuvor."
```

### Turn 5 — Synthese

```bash
python3 .agents/skills/sh-gemini-chat/scripts/gemini_chat/cli.py ask \
  --model pro --json \
  "$(cat toolset/orchestration/book-production/d-risc-batch-2026-08/prompts/05-synthesis.md)

Fasse aus deinen vorherigen Bewertungen der vier Kapitel zusammen
(ii1, iv2, gicht, kompartment). Wenn du den Chat-Kontext nicht hast:
arbeite aus dem, was in dieser Session bereits geantwortet wurde, oder
bitte um Kurz-Paste der Kapitel-Mittelwerte."
```

Antworten sammeln nach:

```text
toolset/orchestration/book-production/d-risc-batch-2026-08/evaluation/03-gemini-visual-audit.md
```

---

## Alternative: One-shot (alle PNGs)

```bash
python3 .agents/skills/sh-gemini-chat/scripts/gemini_chat/cli.py ask \
  --model pro --json \
  --file dist/pilots/ii1-drisc-batch-2026-08/p1.png \
  --file dist/pilots/ii1-drisc-batch-2026-08/p2.png \
  --file dist/pilots/ii1-drisc-batch-2026-08/p3.png \
  --file dist/pilots/iv2-ruecken-batch-2026-08/p1.png \
  --file dist/pilots/iv2-ruecken-batch-2026-08/p2.png \
  --file dist/pilots/kl-gicht-batch-2026-08/p1.png \
  --file dist/pilots/kl-gicht-batch-2026-08/p2.png \
  --file dist/pilots/kl-gicht-batch-2026-08/p3.png \
  --file dist/pilots/kl-kompartment-batch-2026-08/p1.png \
  --file dist/pilots/kl-kompartment-batch-2026-08/p2.png \
  --file dist/pilots/kl-kompartment-batch-2026-08/p3.png \
  "$(cat toolset/orchestration/book-production/d-risc-batch-2026-08/prompts/00-system.md)

$(cat toolset/orchestration/book-production/d-risc-batch-2026-08/prompts/99-oneshot.md)"
```
