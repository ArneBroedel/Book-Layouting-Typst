# Typst Template Report: Validated Learning & Pattern Showcase

This report catalogs the most instructive **Typst Universe** templates and packages. Unlike a simple feature list, this guide is designed to help you extract reusable "document engineering" patterns—such as state management, data-driven layouts, and context queries—to build your own custom Typst toolchain.

All usage snippets have been verified against the official **Typst Universe** registry.

---

## 1. Scope & Taxonomy

Before diving into the catalog, it is crucial to distinguish between the types of packages available in Typst Universe:

* **Template**: A project scaffold. You start it from the command line (or web app) to get a full directory structure.
  * Usage: `typst init @preview/<template-name>`
* **Package**: A reusable library or component imported into your existing file.
  * Usage: `#import "@preview/<package-name>:<version>": *` or specific functions.
* **Hybrid**: Many templates can *also* be imported as packages into an existing file using `#import` and `#show: template.with(...)`.

**Version Policy**: All versions listed below are pinned to the verified release on Typst Universe as of **February 2026**, ensuring the snippets are stable and reproducible.

---

## 2. Decision Table: Which Template for What?

| Purpose / Document Type | Recommended Tool | Type | Key Strength |
| --- | --- | --- | --- |
| **Slides & Presentations** | `touying` + `calmly-touying` | Package + Template | Powerful stateful animations and clean theming |
| **Data-Driven CVs** | `brilliant-cv` | Template | YAML/TOML data separation from layout |
| **Non-Fiction / Academic Book**| `ilm` | Template | Clean systemic design, global layout rules |
| **Fiction Book** | `tieffiction` | Template | Traditional typography, drop caps |
| **Report with Sidenotes** | `toffee-tufte` | Template | Margin layout engine |
| **Technical Documentation** | `mantys` | Template | Meta-Scaffolding for API docs |
| **Marketing / Menu** | `caidan` | Template | Multi-font layout, graphic design |
| **Glossary Automation** | `glossarium` | Package (Component) | Auto-referenced definitions |

---

## 3. Template Catalog (Verified Showcase)

### 3.1 Slides & Presentations

#### Touying (v0.6.1) / calmly-touying (v0.2.0) / touying-aqua (v0.6.0)
* **Type**: `touying` is a Package framework; `calmly-touying` and `touying-aqua` are Templates built on it.
* **Best use**: Professional academic or business slide decks.
* **Key patterns**: Global state management, dynamic navigation headers, and progressive reveal animations (`#pause`, `#meanwhile`).
* **Minimal start** (Template initialization):
  ```bash
  typst init @preview/calmly-touying
  ```
* **Gotchas**: Touying overrides some default Typst heading behaviors to create slides. Be aware of its specific content-block structure.
* **Steal this**: The `state` and `context` tricks used to track slide progress bars.

### 3.2 Data-Driven Documents

#### Brilliant-CV (v3.1.2)
* **Type**: Template
* **Best use**: Resumes, CVs, and cover letters that require frequent content updates.
* **Key patterns**: Strict separation of data and layout. CV data is injected via `metadata.toml` and localized string files.
* **Minimal start**:
  ```bash
  typst init @preview/brilliant-cv
  ```
  *(Then edit the `template/metadata.toml` file as your primary entry point).*
* **Gotchas**: Heavily structured. Changing the core layout requires navigating multiple internal module files.
* **Steal this**: The `metadata.toml` parsing pattern—reusable for ANY automated reporting pipeline.

### 3.3 Books (Fiction & Non-Fiction)

#### Ilm (v2.0.0)
* **Type**: Template (Featured on Universe)
* **Best use**: Clean, modern non-fiction or technical books.
* **Key patterns**: Systemic design via global `#set` and `#show` rules.
* **Minimal start**:
  ```bash
  typst init @preview/ilm
  ```
  Or as an import:
  ```typst
  #import "@preview/ilm:2.0.0": *
  #show: ilm.with(title: [My Book])
  ```
* **Gotchas**: Overriding Ilm's default `#show` rules for headings requires careful `context` usage.
* **Steal this**: The globally unified typographic scale.

#### Wonderous-Book (v0.1.2)
* **Type**: Template
* **Best use**: Books needing complex running subheaders.
* **Key patterns**: Dynamic running headers. It uses Typst's `query` function to fetch the current active chapter and display it in the page's top margin.
* **Minimal start**:
  ```bash
  typst init @preview/wonderous-book
  ```
* **Steal this**: The exact `context { query(heading) }` logic used to track which chapter the reader is currently in.

#### TiefFiction (v0.2.0)
* **Type**: Template
* **Best use**: Literary books, novels, short stories.
* **Key patterns**: Traditional typesetting features like chapter starting pages, drop caps, and serif microtypography.
* **Minimal start**:
  ```bash
  typst init @preview/tieffiction
  ```
* **Steal this**: The custom `#dropcap()` and chapter-break layout logic.

### 3.4 Reports & Technical Documentation

#### Mantys (v1.0.2)
* **Type**: Template
* **Best use**: Writing Typst package manuals or technical API documentation.
* **Key patterns**: Code documentation helpers, automated function signature rendering.
* **Minimal start**:
  ```bash
  typst init @preview/mantys
  ```
* **Steal this**: The layout structures for presenting side-by-side code blocks and rendered output.

#### Toffee-Tufte (v0.1.1)
* **Type**: Template
* **Best use**: Analytical reports or textbooks with intensive sidenotes.
* **Key patterns**: Advanced margin logic. Places references and supplementary text into an asymmetrical wide margin using `measure` and custom positioning.
* **Minimal start**:
  ```bash
  typst init @preview/toffee-tufte
  ```
* **Steal this**: The underlying margin-note placement engine which solves complex overlapping issues.

### 3.5 Graphics & Marketing

#### Caidan (v0.1.0)
* **Type**: Template
* **Best use**: Restaurant menus, flyers, one-pagers.
* **Key patterns**: Visual hierarchy and multi-font graphic design within Typst.
* **Minimal start**:
  ```bash
  typst init @preview/caidan
  ```
* **Steal this**: The typographic scaling and decorative layout techniques used to build a grid without rigid tabular constraints.

#### Aspirationally (v0.1.1)
* **Type**: Template
* **Best use**: Formal academic cover letters / teaching statements.
* **Key patterns**: Restrained elegance and minimalist styling.
* **Minimal start**:
  ```typst
  #import "@preview/aspirationally:0.1.1": *
  #show: letter.with(sender: [...], recipient: [...])
  ```
* **Steal this**: The precise margin and alignment configurations for formal correspondence.

### 3.6 Computational Layouts (Typst as an Engine)

#### Soviet-Matrix (v0.2.1) & Badformer (v0.1.0)
* **Type**: Templates
* **Best use**: Studying Typst's Turing-complete capabilities.
* **Key patterns**: `soviet-matrix` implements a Tetris game; `badformer` implements a 3D-ish platformer purely via typst compilation steps.
* **Minimal start**:
  ```bash
  typst init @preview/soviet-matrix
  typst init @preview/badformer
  ```
* **Steal this**: Advanced algorithmic state management layered atop graphical layout primitives.

---

## 4. Components Catalog (Essential Packages for Templates)

Unlike Templates which give you a full project, these are **Packages** that you should import *into* your custom templates to handle complex logical tasks.

#### Glossarium (v0.5.10)
* **Type**: Package
* **Best use**: Automated generation of acronyms, glossaries, and first-use tracking.
* **Minimal start**:
  ```typst
  #import "@preview/glossarium:0.5.10": make-glossary, print-glossary
  #show: make-glossary
  ```
* **Why import it**: Replaces fragile manual referencing with reliable, structured definitions.

---

## 5. Recommended Learning Path

To evolve from a basic Typst user to a "Document Engineer", follow this study path:

1. **The Slides Track (Touying)**: Start by importing `calmly-touying`. Learn how `state` works to persist information across pages.
2. **The Data-Driven Track (Brilliant-CV)**: Init a `brilliant-cv` project. Learn how to map TOML/YAML files into Typst layout functions, isolating content from styles.
3. **The Book Track (Ilm + Wonderous-Book)**: Combine the systemic typography of `ilm` with the dynamic `context` running headers of `wonderous-book`.
4. **The Meta Track (Soviet-Matrix)**: Rip apart the game logic templates to understand how powerful Typst scripting is when pushed to the limit.

---

## 6. Reusable Pattern Summary

By studying the templates above, you will acquire a library of reusable patterns for your own projects:

* **Data Separation**: Injecting `metadata.toml` to build structured layout without markup clutter (Brilliant-CV).
* **Dynamic Content Extraction**: Using `query(heading)` to build running footers, outlines, and chapter markers (Wonderous-Book).
* **Margin Architectures**: Leveraging `measure()` and `place()` for rich margin-notes and Tufte-style asymmetry (Toffee-Tufte).
* **Thematic Overrides**: Packaging global `#set` and `#show` rules inside a `template.with()` function wrapper (Ilm, Aspirationsally).
