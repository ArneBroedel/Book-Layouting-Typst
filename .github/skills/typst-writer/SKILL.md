---
name: typst-writer
description: "Write correct, idiomatic Typst and fix document layout issues. Use when creating/editing .typ files, debugging Typst compile errors, or resolving visual defects like overlap, clipping, and out-of-frame content."
---

# Typst Writer

Write robust Typst that compiles cleanly and produces stable page layout.

## When to use

- Creating or refactoring `.typ` files
- Fixing compile errors and syntax confusion (`content` vs `array` vs `dictionary`)
- Debugging visual defects: overlapping blocks, clipped text, frame overflow
- Building reusable document components (`#let`, `#show`, themed boxes, chapter openers)

## Core Typst rules (high signal)

- Arrays use parentheses: `(a, b, c)`
- Dictionaries use parentheses with keys: `(k: v)`
- Content blocks use brackets: `[markup]`
- Use `.pos()` when iterating variadic args from `..args`
- Prefer in-flow layout (`block`, `grid`, `stack`, `align`) over absolute placement
- Treat `#place(...)` and page-level background tricks as advanced tools; use only with strict constraints

### `#` usage: markup vs code context

- In markup/content, use `#` to evaluate expressions: `#image("x.svg")`, `text()[#counter(page).display()]`
- In code contexts (arguments/code blocks), do not prefix inner expressions with `#`
- If you see `expected content` / `expected expression`, verify context and missing/extra `#`

### `set` vs `show`

- Use `set` for element defaults (global or scoped styling)
- Use `show` for selected elements or structural transforms

```typst
#set heading(numbering: "1.")
#show heading.where(level: 1): it => block[#strong(it.body)]
```

## Layout safety checklist

Before finishing any visual change, ensure:

1. No text is clipped by containers with `clip: true`.
2. No essential content depends on absolute placement (`#place`) unless intentionally pinned and bounded.
3. Foreground text remains readable against backgrounds (contrast check).
4. Components reserve explicit space (`height`, `inset`, `v(...)`) where needed.
5. Content remains inside frame at typical page sizes.

## Workflow: compile → inspect → root-cause fix → verify

### Step 1: Compile first

- Run `typst compile main.typ`.
- Fix all hard errors before visual tuning.

### Step 2: Visual verification

- Export PNG pages for precise review:
  - `typst compile --format png --ppi 200 main.typ "png_output/page-{0p}-of-{t}.png"`
- Inspect problematic pages first (reported by user), then adjacent pages.

### Step 3: Root-cause decisions

Use this decision tree for common defects:

- **If items overlap text**
  - Replace `#place(...)` overlays with in-flow `stack`, `grid`, or `align` blocks.
- **If content is cut off in a frame**
  - Add/adjust `inset`, remove unsafe clipping, or increase frame height.
- **If full-page background causes chaos**
  - Replace `set page(background: image(...))` with a contained hero/section block.
- **If variadic content renders incorrectly**
  - Convert variadics with `.pos()` and loop: `#for it in items.pos() { ... }`.
- **If table/layout structure drifts**
  - Remove accidental extra cells/rows and keep row schema consistent.

### Step 4: Recompile and compare

- Recompile PDF and targeted PNG pages.
- Confirm no overlap/cutoff regressions on previously broken pages.

### Step 5: Completion checks

Done when all are true:

- Compiles without errors
- User-reported pages are visually fixed
- No new overflow/overlap introduced on nearby pages
- Changes are minimal and localized to root causes

## Common anti-patterns to avoid

- Treating Typst like Python/JS syntax
- Using `[]` for arrays
- Iterating variadics directly without `.pos()`
- Overusing `#place` for normal document content
- Styling-only changes when the issue is layout flow
- Using LaTeX commands/environments (`\\section`, `\\begin{...}`) in Typst
- Hallucinating unsupported constructs instead of checking Typst reference first

## Commands reference

```powershell
# PDF
cd typst_missing_manual_showcase; typst compile main.typ

# PNG (all pages)
typst compile --format png --ppi 200 main.typ "png_output/page-{0p}-of-{t}.png"

# PNG (single page)
typst compile --format png --ppi 200 --pages 12 main.typ "png_output/page-{0p}-of-{t}.png"
```

## Documentation

- Typst reference: https://typst.app/docs/reference/
- Typst query/introspection: https://typst.app/docs/reference/introspection/query/
- Typst packages (Universe): https://typst.app/universe
