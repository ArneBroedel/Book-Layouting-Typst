# **Top Typst Templates: Learning & Showcase Ranking**

This report ranks the most valuable templates in the Typst Universe for developers and designers who want to master **Document Engineering**. These templates were selected because they provide clear, idiomatic examples of how to implement complex features like data injection, stateful layouts, and advanced typography.

## **Ranking Criteria**

1.  **Educational Value:** How much can a developer learn about Typst’s internal logic (state, query, context) by reading the source?
2.  **Structural Integrity:** Does it use modern patterns like YAML/JSON data separation and modular file structures?
3.  **Visual Impact:** Is it a "showcase-ready" example of Typst’s superiority over legacy tools?
4.  **Project Utility:** Does it provide components (headers, sidenotes, grid systems) that can be reused in a book-layouting context?

---

## **Tier 1: Architectural Masterpieces (The "Must-Study" List)**

These templates are more than just layouts; they are frameworks that demonstrate the future of document engineering.

| Rank | Template | Category | Key Learning Insight |
| :--- | :--- | :--- | :--- |
| **1** | **Touying (Aqua/Metropolis)** (`@preview/touying-*`) | **Presentation** | **The Masterclass in State:** Learn how to manage complex document-wide state, animations, and dynamic headers using the `context` keyword and `state` functions. |
| **2** | **Brilliant-CV** (`@preview/brilliant-cv`) | **CV / Data-Driven** | **Data Separation:** The gold standard for separating content (YAML/JSON) from layout logic. Essential for anyone building automated or data-driven reports. |
| **3** | **Mantys** (`@preview/mantys`) | **Documentation** | **Meta-Typst:** Learn how to write manuals *for* Typst packages. It demonstrates how to typeset code documentation, function signatures, and complex technical guides. |
| **4** | **Ilm** (`@preview/ilm`) | **Non-Fiction / Book** | **Systemic Design:** A perfect example of a cohesive design system. Learn how to build a unified "brand" for a document using global set and show rules. |
| **5** | **TiefFiction** (`@preview/tieffiction`) | **Book / Fiction** | **Traditional Book Layout:** One of the most opinionated and well-structured templates for fiction. Teaches how to handle chapter starts, drop caps, and serif typography correctly. |

---

## **Tier 2: Specialized Layouts & UI Components**

These templates offer unique "visual components" that are highly valuable for a document showcase.

| Rank | Template | Category | Unique Showcase Feature |
| :--- | :--- | :--- | :--- |
| **6** | **Toffee-Tufte** (`@preview/toffee-tufte`) | **Academic / Report** | **Margin Logic:** Implements Edward Tufte’s famous side-note and wide-margin layout. Teaches how to use `layout` and `measure` for complex margin placement. |
| **7** | **Codly-based Templates** | **Technical** | **Code as Art:** Any template utilizing `@preview/codly` shows how to transform dry technical code into a beautiful, interactive visual element. |
| **8** | **Boxed-Sheet** (`@preview/boxed-sheet`) | **Utility / Note** | **Complex Grids:** Uses Typst’s grid system to create high-density, color-coded cheat sheets. Great for learning about fractional units (`1fr`) and coordinate-based styling. |
| **9** | **Wonderous-Book** (`@preview/wonderous-book`) | **Book** | **Running Headers:** A clean implementation of headers that reflect the current chapter title, using `query` and `context`. |
| **10** | **Tyniverse** (`@preview/tyniverse`) | **Collection** | **Variety of Styles:** A great "sampler" template. Use it to see how different visual aesthetics (dark mode, minimal, academic) can be applied to the same core content. |

---

## **Tier 3: Niche & Fun Engineering**

These templates prove that Typst is "alive" and capable of interactive or highly specialized tasks.

| Rank | Template | Category | Why it’s in the Showcase |
| :--- | :--- | :--- | :--- |
| **11** | **Soviet-Matrix** (`@preview/soviet-matrix`) | **Fun / Game** | **Computational Typst:** A Tetris game in Typst! It proves that the scripting language is a full-blown programming environment, not just markup. |
| **12** | **Badformer** (`@preview/badformer`) | **Fun / Game** | **3D & Logic:** A platformer game. Showcase this to stun people who think Typst is just a "PDF generator." |
| **13** | **Glossarium** (`@preview/glossarium`) | **Component** | **Introspection Power:** Not a template itself, but templates using it showcase the power of automated cross-referencing and "first-use" definitions. |
| **14** | **Aspirationsally** (`@preview/aspirationally`) | **Academic Letter** | **Restrained Elegance:** Shows how white space and minimal typography can create a "premium" feel better than any complex graphic. |
| **15** | **Caidan** (`@preview/caidan`) | **Menu / Flyer** | **Graphic Design:** Demonstrates Typst’s ability to handle multi-font, high-design layouts like restaurant menus with ease. |

---

## **How to use these in our project?**

1.  **Study `Brilliant-CV`** to implement the **Data-Driven** chapter of our guide.
2.  **Study `Touying`** to understand how to build the **Layout Component** library (especially for headers/footers).
3.  **Study `Toffee-Tufte`** to learn how to create **Sidenotes**, a common requirement for high-end books.
4.  **Use `Ilm`** as the baseline for our own project's "Standard Template" recommendation.

---
*Created by Gemini CLI - Analyzing the Typst Universe Template Ecosystem.*
