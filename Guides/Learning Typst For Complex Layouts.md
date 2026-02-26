# **Architectural Principles of Computational Typography: A Comprehensive Manual for Advanced Document Engineering in Typst**

The landscape of professional document preparation is currently undergoing a paradigm shift, characterized by the transition from legacy macro-expansion systems to modern, high-performance compilers built on functional programming principles. At the forefront of this evolution is Typst, a software ecosystem written in Rust that prioritizes incremental compilation, memory safety, and a unified styling model.1 For the advanced designer tasked with reconstructing complex visual layouts—such as those encountered in prestigious typesetting contests—understanding the underlying architecture is as vital as mastering the syntax itself. The system is designed around the core principles of simplicity through consistency, power through composability, and performance through incrementality.1 This architectural philosophy ensures that every element, from a single glyph to a multi-column grid, behaves predictably within a system of pure functions and reactive style rules.1

## **Technical Foundations and System Architecture**

The technical superiority of Typst over historical systems like LaTeX is rooted in its choice of implementation language and its handling of document state. Written in Rust, the compiler leverages a static binary to achieve compile times that are three to four times faster than traditional TeX-based engines, often completing complex 2000-page documents in roughly one minute.1 This performance is facilitated by comemo, a memoization system that tracks changes at a granular level, ensuring that only the segments of the document affected by an edit are re-evaluated.1

The lifecycle of a document follows a rigorous four-phase process. First, the parsing phase transforms the source string into an untyped syntax tree, a design choice that allows the parser to remain resilient even when encountering broken code, thereby supporting real-time IDE feedback.5 Second, the evaluation phase interprets this tree to produce content—the intermediate programmatic representation of the document.5 Third, the layout phase arranges this content into frames, employing an introspection loop that runs up to five times to resolve cyclical dependencies such as page numbers and counters.5 Finally, the export phase converts these frames into the final output format, most commonly a PDF or a raster graphic.5

| Compilation Phase | Data Input | Output Target | Performance Mechanism |
| :---- | :---- | :---- | :---- |
| Parsing | Raw Source String | Untyped Syntax Tree | Incremental Reparsing 5 |
| Evaluation | Syntax Tree | Content Values | Module/Closure Memoization 5 |
| Layout | Content Values | Frames | Introspection Stabilization 5 |
| Export | Frames | PDF / Raster Image | Native Rendering Logic 9 |

The concept of "purity" is central to this architecture. All Typst functions are pure, meaning that given the same arguments, they must return the same output.3 This prevents side effects that could destabilize the layout during incremental updates. While built-in methods like array.push() allow for local state mutation within a code block, the global state remains immutable, managed instead through the dedicated state and counter introspection systems.3

## **Syntactic Modalities and Interaction**

The system operates through three primary syntactic modes: Markup, Math, and Code.6 Markup mode serves as the default state, providing a lightweight syntax inspired by modern markdown for rapid content entry.6 Headers are established with equals signs, where the quantity of signs dictates the nesting depth: \= for primary chapters and \== for sub-sections.12 Paragraphs are delineated by blank lines, while common formatting such as emphasis and strong text are achieved via underscores and asterisks, respectively.2

Math mode, entered with the dollar sign $, provides a dedicated environment for mathematical typesetting.6 Unlike markup mode, math mode treats single letters as variables and interprets multi-letter sequences as symbols or function names, such as rho being automatically transformed into the Greek letter ![][image1].1 Equations become block-level elements if they are padded with internal spaces, a subtle but powerful distinction for managing vertical rhythm in scientific documents.1

Code mode is the gateway to the system's scripting power, introduced by the hash \# symbol.6 Once in code mode, the parser follows standard programming conventions. Variable and function names typically use kebab-case (e.g., column-gutter), aligning with the naming conventions found in modern web standards.6 Code can be embedded directly into markup, and conversely, content blocks \[...\] can be used within code to treat markup as a programmatic value.7

| Syntax Element | Markup Representation | Programmatic Equivalent | Structural Context |
| :---- | :---- | :---- | :---- |
| Heading | \= Introduction | \#heading\[Introduction\] | Block-level 1 |
| Bold Text | \*Strong\* | \#strong | Inline 13 |
| Numbered List | \+ Item | \#list(marker:...) | Flow-controlled 12 |
| Reference | @label | \#ref(\<label\>) | Introspective 12 |
| Math Block | $ x^2 $ | \#math.equation(...) | Block or Inline 1 |

## **Scripting and Functional Document Design**

The scripting language within Typst is a fully-fledged, functional-style language that allows for the creation of sophisticated automation.1 Variables are defined using let bindings, which can store data types ranging from simple integers and strings to complex dictionaries and arrays.7

A critical feature for designers is the ability to destructure data. Let bindings can be used to unpack arrays and dictionaries, utilizing the .. spread operator to collect remaining items.1 This is particularly useful when creating templates that must handle a variable number of authors or bibliography entries.1 Furthermore, functions in Typst are first-class values; they can be stored in variables, passed as arguments to other functions, and returned from code blocks.3

The distinction between a code block {...} and a content block \[...\] is fundamental to document logic. A code block allows for the execution of multiple statements, where the final value is the result of joining all expressions within the block.3 Expressions that yield none, such as a variable assignment, are ignored during the joining process.3 Content blocks, on the other hand, capture markup as a value of the content type, which can then be passed to functions like align or block for final placement.7

| Data Type | Syntax Example | Common Application |
| :---- | :---- | :---- |
| Content | \`\` | Storing styled text fragments 13 |
| String | "Palo Alto" | Labels, font names, and metadata 13 |
| Length | 12pt, 2.5cm | Fixed sizing and padding 6 |
| Relative Length | 50% \+ 1em | Proportional sizing with offsets 12 |
| Dictionary | (x: 1pt, y: 2pt) | Margin and inset configuration 17 |
| Boolean | true, false | Conditional formatting flags 15 |

## **The Unified Styling Model: Set and Show Rules**

The styling system is perhaps the most robust feature of the ecosystem, designed to replace the disparate and often conflicting "package-based" styling found in LaTeX.1 Styling is achieved through two complementary mechanisms: set rules and show rules.1

Set rules establish default parameter values for a function.6 For example, \#set page(paper: "a4") or \#set text(font: "Linux Libertine") establishes a baseline that applies to all subsequent content.15 Set rules are scoped; a rule declared within a content block only persists until the end of that block, allowing for precise localized overrides.16

Show rules provide the power of total transformation.16 They allow the designer to intercept any element before it is rendered and redefine its appearance from scratch.16 A show rule can be a simple "show-set" rule, such as show heading: set text(red), which modifies specific properties of an element type.16 More powerfully, a transformational show rule can accept the element as an argument—conventionally named it—and return entirely new content.16 This gives the designer access to all fields of the element, such as it.body for a heading or it.caption for a figure, facilitating the reconstruction of complex visual headers or chapter titles.16

| Rule Type | Syntax | Visual Impact |
| :---- | :---- | :---- |
| Set Rule | set text(size: 10pt) | Adjusts default parameters 15 |
| Show-Set Rule | show list: set text(blue) | Conditional default adjustment 16 |
| Transform Rule | show heading: it \=\> \[...\] | Complete element reconstruction 16 |
| Global Show | show: template | Document-wide wrapper 15 |

The use of selectors in show rules is critical for advanced layout design. The .where() method allows rules to be applied selectively based on field values.16 For example, a designer can apply a specific style only to first-level headings that are not outlined in the table of contents by using show heading.where(level: 1, outlined: true):....16 Other complex selectors, such as before(here()) and after(here()), enable the document to react to the relative positioning of elements, which is essential for "nearest chapter" markers in headers.21

## **Layout Primitives and Spatial Control**

Constructing a complex layout requires a deep understanding of how Typst manages space. Content is generally categorized into block-level elements and inline-level elements.24

The block function is the fundamental container for vertically-flowing content.20 Every element that Typst arranges from the top of the page to the bottom—including headings, paragraphs, and grids—is essentially a block.20 Blocks support properties like fill for background colors, stroke for borders, and radius for rounded corners.24 Crucially, blocks manage their own spacing via above and below parameters, and they can be made breakable: false to prevent them from being split across page boundaries.24

The box function, by contrast, is an inline container.24 It is used to group content that should stay on a single line and prevents line breaks within its contents.17 This is vital for integrating images or small graphics into paragraphs without disrupting the text flow.8 Boxes also provide a baseline argument, allowing the designer to adjust the vertical offset of the boxed content relative to the surrounding text line.24

| Container | Level | Key Parameters | Layout Behavior |
| :---- | :---- | :---- | :---- |
| block | Block | width, height, breakable | Forced new line, vertical flow 24 |
| box | Inline | width, baseline, inset | Stays in paragraph flow 24 |
| stack | Block/Inline | dir, spacing | Linear arrangement along an axis 26 |
| grid | Block | columns, rows, gutter | Multi-dimensional track sizing 27 |

For linear arrangements, the stack function places items along an axis: ltr (left-to-right), rtl (right-to-left), ttb (top-to-bottom), or btt (bottom-to-top).26 It is a simpler, more efficient alternative to a grid when content only needs to be arranged in one dimension with consistent spacing between elements.26

## **Mastering the Grid and Table Engine**

For the most sophisticated layouts, the grid element is the primary engine of organization.27 It allows for the precise definition of column and row tracks, supporting various units of measure.27

The fr (fraction) unit is the most powerful tool in the designer's arsenal for responsive design.27 When a grid track is defined in fr units, it takes up a proportional share of the horizontal or vertical space remaining after all fixed-size and auto tracks have been allocated.27 For instance, a column definition of (150pt, 1fr, 2fr) creates three columns: one fixed at 150 points, a second taking one-third of the remaining space, and a third taking two-thirds.27

Grid styling can be handled globally or on a per-cell basis. Properties like align, inset, fill, and stroke can accept a single value, an array (which cycles through columns), or a function (x, y) \=\> value.27 This functional approach allows for the creation of complex "zebra" stripes or checkerboard patterns with minimal code.27 Cells can also be merged using the colspan and rowspan arguments of the grid.cell function, which is essential for placing large graphics or title blocks within a structured grid.27

It is important to distinguish between grid and table.27 While they share similar syntactic structures, the grid is intended for layout and presentational purposes, whereas the table is intended for semantic data representation.27 This distinction is critical for accessibility; Assistive Technologies (AT) will provide two-dimensional navigation for tables but will read grids in a linear semantic order, typically row-by-row.27

## **Absolute Positioning and Floating Layouts**

In complex book design, it is often necessary to place elements outside the standard content flow.20 The place function is the primary mechanism for this, supporting both overlaid and floating behaviors.24

Overlaid positioning allows an element to be placed at specific coordinates without displacing other content.24 By default, place aligns content relative to its parent container, but a top-level place call with top \+ left alignment and dx/dy offsets can achieve absolute positioning relative to the page's text area.24 For positioning that includes the page margins, content can be placed into the page.foreground or page.background fields.24

Floating positioning, enabled with float: true, moves an element to the top or bottom of the container and forces the remaining text to flow around it.20 The clearance parameter ensures a minimum vertical gap between the float and the body text.20 In multi-column layouts, the scope: "parent" argument is invaluable, as it allows a floating element to break out of its current column and span the entire width of the page—a common requirement for article titles or large figures.20

| Argument | Type | Default | Functional Role |
| :---- | :---- | :---- | :---- |
| float | Boolean | false | Enables floating at top/bottom 20 |
| scope | String | "column" | Determines if element spans columns 20 |
| clearance | Length | 1.5em | Space between float and text 24 |
| dx, dy | Relative | 0pt | Physical offset from alignment 24 |
| placement | Auto/Top/Bottom | auto | Preferred location for figures 24 |

## **Introspection: Creating Reactive and Context-Aware Documents**

The "hero" level of document design is reached through the use of introspection—the ability of content to react to its final position on the page.23 This is governed by the context keyword, which instructs the compiler that the following block of code must be re-evaluated as its environment is resolved.5

Within a context block, the designer can access the here() function to get the element's current location, or query() to find other elements in the document.21 This is the engine behind dynamic headers that show the current chapter name, or table of contents entries that show correct page numbers.18 For example, a header can be defined with \#set page(header: context {... }), where the internal logic queries for the most recent heading using query(selector(heading).before(here())).last().21

The introspection system also manages state and counter.10 Counters are specialized for items that step sequentially, like page numbers or theorem blocks.10 They provide a "time travel" capability, where the final() method can retrieve the value of a counter at the very end of the document—essential for "Page 1 of 50" footers.22 States are more general-purpose and can be used to track any information across the layout process, such as the current "theme color" of a chapter.22

| Introspection Tool | Core Method | Design Purpose |
| :---- | :---- | :---- |
| context | context {... } | Enters a reactive environment 20 |
| counter | get(), final() | Dynamic numbering (Pages, Figs) 10 |
| query | query(selector) | Finding elements (Headings, Tables) 21 |
| state | update(), get() | Tracking global variables 22 |
| measure | measure(content) | Calculating physical dimensions 33 |
| layout | layout(size \=\>...) | Adaptive design based on space 33 |

## **Page Setup and Multi-Part Book Structures**

Advanced book design requires careful orchestration of page-level properties.18 The page set rule is where the physical canvas is defined.17

Margins are the most critical ingredient for legibility, with typographers recommending lines between 45 and 75 characters.18 In Typst, margins can be set symmetrically or asymmetrically. For bound books, the inside and outside parameters are used to manage the spine offset.18 The page numbering can be localized to specific sections by updating the page counter; for instance, a preface might use Roman numerals before resetting to Arabic numerals for the main body.18

Book structures are often categorized into front matter, main matter, and back matter.34 In the Typst ecosystem, this is frequently implemented using "fences" or dedicated show rules that reset styling and counters.34 The anti-matter package, for instance, provides a streamlined way to mark these transitions, automatically handling the switch between numbering styles and resetting the page count without manual interference.35

| Book Section | Content Type | Typical Styling |
| :---- | :---- | :---- |
| Front Matter | Title, TOC, Preface | Roman numerals, no headers 35 |
| Main Matter | Chapters, Body Text | Arabic numerals, dynamic headers 36 |
| Back Matter | Index, Bib, Bio | Reset numbering, hanging indents 36 |

## **Visual Deconstruction: A Workflow for Designers**

To rebuild a complex layout from an image, the designer must employ a heuristic of visual deconstruction, mapping visual elements to Typst's logical primitives.1 This involves several distinct levels of analysis.

First is the **Grid Identification Layer**. The designer should look for the underlying vertical and horizontal tracks. Is there a consistent margin? Are there multiple columns? If a sidebar exists, is it fixed-width or fractional? This analysis maps directly to the grid(columns: (...)) parameters.27 For an image with a wide main column and a narrow information strip, a definition like columns: (3fr, 1fr) is often the starting point.20

Second is the **Flow and Break Layer**. Identifying where paragraphs start, where headings sit, and how much space exists between them allows the designer to configure the block and par set rules.20 Large gaps or decorative lines between sections can be mapped to the v() (vertical space) or line() functions.25

Third is the **Exceptional Positioning Layer**. Elements that break the flow—such as a logo in the top margin, a photo that spans two columns, or a pull-quote that overlaps text—must be identified as candidates for the place function.20 The designer must decide if these are "overlaid" (using absolute coordinates) or "floating" (interacting with the surrounding text).24

Fourth is the **Componentization Layer**. If the design features repeating elements like "Warning Boxes" or "Step-by-Step Indicators," these should not be coded manually each time. Instead, the designer should define a function—for example, let step-box(num, body) \= {... }—that encapsulates the styling, borders, and numbering.15

Fifth is the **Introspection Layer**. The designer looks for elements that depend on their location. Does the page number change color in the "Introduction" chapter? Does the footer show the current page's section title? These require the context keyword and query system to make the document reactive.18

## **Leveraging the Advanced Package Ecosystem**

While the core of Typst is powerful, the ecosystem provides pre-built tools for the most creative and impressive layouts.41

For complex graphics and visualizations, **CeTZ** is the industry standard, providing a coordinate-based system for drawing anything from simple flowcharts to complex scientific plots.41 For designers focused on commutative diagrams or arrow-based logic, **Fletcher** and **Quill** offer specialized syntaxes.41

When designing books or instructional materials, **showybox** is an essential tool for creating colorful, breakable, and titled containers.42 It provides granular control over shadows, inset, and multi-part borders.44 For absolute positioning challenges, **Pinit** allows the designer to place "pins" in the flow of text and then draw lines or place content relative to those pins on the final page—a feature that is virtually impossible in standard word processors.42

Finally, for the "contest" environment where time is limited, **drafting** and **meander** can be utilized to visualize the layout grid and manage complex text wrap-around or threading.41 Using rule-grid from the drafting package helps cross-hatch the page with reference lines, allowing for pinpoint accuracy when positioning elements to match an source image.46

| Package | Design Specialty | Key Functional Tool |
| :---- | :---- | :---- |
| cetz | Vector Graphics | Coordinate-based drawing API 41 |
| showybox | Admonitions | Titled, shadowed, breakable boxes 44 |
| pinit | Anchored Annotations | Pin-based relative positioning 43 |
| fletcher | Diagrams | Commutative diagrams with nodes 41 |
| drafting | Layout Refinement | Page-wide rule grids and margin notes 42 |
| codly | Code Presentation | Line numbers and syntax highlights 42 |

## **Synthesis and Strategic Recommendations**

Success in a Typst design contest requires a shift in perspective: from a "content writer" to a "document architect." By treating the page as a coordinate system and the document as a series of nested functions, the designer can achieve pixel-perfect reconstructions of even the most complex magazine and book layouts.

The strategic workflow begins with a comprehensive set of document-wide rules to establish the typography and page geometry.17 This is followed by the construction of the primary grid—the skeletal structure that will hold the content.27 From there, the designer utilizes show rules to automate the styling of headings and lists, ensuring that the visual logic is consistent and maintainable.16

For elements that defy the grid, the place function and absolute positioning provide the final layer of creative control.24 By combining these primitives with the reactive power of context and the specialized capabilities of the package ecosystem, the designer transforms a static text file into a dynamic, beautiful, and structurally sound work of professional typography.1 The result is a document that not only looks impressive but is engineered to the highest standards of the digital age.

#### **Referenzen**

1. typst/typst: A markup-based typesetting system that is powerful and easy to learn. \- GitHub, Zugriff am Februar 26, 2026, [https://github.com/typst/typst](https://github.com/typst/typst)  
2. Exploring Typst: A LaTeX Alternative \- The PCLinuxOS Magazine, Zugriff am Februar 26, 2026, [https://pclosmag.com/html/Issues/202411/page08.html](https://pclosmag.com/html/Issues/202411/page08.html)  
3. Function Type – Typst Documentation, Zugriff am Februar 26, 2026, [https://typst.app/docs/reference/foundations/function/](https://typst.app/docs/reference/foundations/function/)  
4. Typst: A Possible LaTeX Replacement \- Hacker News, Zugriff am Februar 26, 2026, [https://news.ycombinator.com/item?id=45393842](https://news.ycombinator.com/item?id=45393842)  
5. typst/docs/dev/architecture.md at main \- GitHub, Zugriff am Februar 26, 2026, [https://github.com/typst/typst/blob/main/docs/dev/architecture.md](https://github.com/typst/typst/blob/main/docs/dev/architecture.md)  
6. Syntax – Typst Documentation, Zugriff am Februar 26, 2026, [https://typst.app/docs/reference/syntax/](https://typst.app/docs/reference/syntax/)  
7. Scripting – Typst Documentation, Zugriff am Februar 26, 2026, [https://typst.app/docs/reference/scripting/](https://typst.app/docs/reference/scripting/)  
8. Image Function – Typst Documentation, Zugriff am Februar 26, 2026, [https://typst.app/docs/reference/visualize/image/](https://typst.app/docs/reference/visualize/image/)  
9. dashing-dept-news – Typst Universe, Zugriff am Februar 26, 2026, [https://typst.app/universe/package/dashing-dept-news/](https://typst.app/universe/package/dashing-dept-news/)  
10. Counters \- Typst Examples Book \- GitHub Pages, Zugriff am Februar 26, 2026, [https://sitandr.github.io/typst-examples-book/book/basics/states/counters.html](https://sitandr.github.io/typst-examples-book/book/basics/states/counters.html)  
11. Zugriff am Februar 26, 2026, [https://typst.app/docs/guides/for-latex-users/\#:\~:text=Typst%20differentiates%20between%20markup%20mode,and%20execute%20segments%20of%20code.](https://typst.app/docs/guides/for-latex-users/#:~:text=Typst%20differentiates%20between%20markup%20mode,and%20execute%20segments%20of%20code.)  
12. Writing in Typst – Typst Documentation, Zugriff am Februar 26, 2026, [https://typst.app/docs/tutorial/writing-in-typst/](https://typst.app/docs/tutorial/writing-in-typst/)  
13. For LaTeX Users – Typst Documentation, Zugriff am Februar 26, 2026, [https://typst.app/docs/guides/for-latex-users/](https://typst.app/docs/guides/for-latex-users/)  
14. Heading Function – Typst Documentation, Zugriff am Februar 26, 2026, [https://typst.app/docs/reference/model/heading/](https://typst.app/docs/reference/model/heading/)  
15. Making a Template – Typst Documentation, Zugriff am Februar 26, 2026, [https://typst.app/docs/tutorial/making-a-template/](https://typst.app/docs/tutorial/making-a-template/)  
16. Styling – Typst Documentation, Zugriff am Februar 26, 2026, [https://typst.app/docs/reference/styling/](https://typst.app/docs/reference/styling/)  
17. Formatting – Typst Documentation, Zugriff am Februar 26, 2026, [https://typst.app/docs/tutorial/formatting/](https://typst.app/docs/tutorial/formatting/)  
18. Page Setup – Typst Documentation, Zugriff am Februar 26, 2026, [https://typst.app/docs/guides/page-setup/](https://typst.app/docs/guides/page-setup/)  
19. Is there a more elegant way for an Enclosure chapter with main heading visible in outline, subchapters invisible, with custom titles shown and shown when referenced? \- Typst Forum, Zugriff am Februar 26, 2026, [https://forum.typst.app/t/is-there-a-more-elegant-way-for-an-enclosure-chapter-with-main-heading-visible-in-outline-subchapters-invisible-with-custom-titles-shown-and-shown-when-referenced/7907](https://forum.typst.app/t/is-there-a-more-elegant-way-for-an-enclosure-chapter-with-main-heading-visible-in-outline-subchapters-invisible-with-custom-titles-shown-and-shown-when-referenced/7907)  
20. Advanced Styling – Typst Documentation, Zugriff am Februar 26, 2026, [https://typst.app/docs/tutorial/advanced-styling/](https://typst.app/docs/tutorial/advanced-styling/)  
21. Query Function – Typst Documentation, Zugriff am Februar 26, 2026, [https://typst.app/docs/reference/introspection/query/](https://typst.app/docs/reference/introspection/query/)  
22. Using \`query\` together with \`counter.at\` · typst typst · Discussion \#1109 \- GitHub, Zugriff am Februar 26, 2026, [https://github.com/typst/typst/discussions/1109](https://github.com/typst/typst/discussions/1109)  
23. Query \- Typst Examples Book \- GitHub Pages, Zugriff am Februar 26, 2026, [https://sitandr.github.io/typst-examples-book/book/basics/states/query.html](https://sitandr.github.io/typst-examples-book/book/basics/states/query.html)  
24. Place Function – Typst Documentation, Zugriff am Februar 26, 2026, [https://typst.app/docs/reference/layout/place/](https://typst.app/docs/reference/layout/place/)  
25. Box Function – Typst Documentation, Zugriff am Februar 26, 2026, [https://typst.app/docs/reference/layout/box/](https://typst.app/docs/reference/layout/box/)  
26. Stack Function – Typst Documentation, Zugriff am Februar 26, 2026, [https://typst.app/docs/reference/layout/stack/](https://typst.app/docs/reference/layout/stack/)  
27. Grid Function – Typst Documentation, Zugriff am Februar 26, 2026, [https://typst.app/docs/reference/layout/grid/](https://typst.app/docs/reference/layout/grid/)  
28. How to set up grid of rectangles with different cell width/height? \- Typst Forum, Zugriff am Februar 26, 2026, [https://forum.typst.app/t/how-to-set-up-grid-of-rectangles-with-different-cell-width-height/7498](https://forum.typst.app/t/how-to-set-up-grid-of-rectangles-with-different-cell-width-height/7498)  
29. Tables – Typst Documentation, Zugriff am Februar 26, 2026, [https://typst.app/docs/guides/tables/](https://typst.app/docs/guides/tables/)  
30. Context – Typst Documentation, Zugriff am Februar 26, 2026, [https://typst.app/docs/reference/context/](https://typst.app/docs/reference/context/)  
31. How do I highlight text context-dependent in the header section? \- Questions \- Typst Forum, Zugriff am Februar 26, 2026, [https://forum.typst.app/t/how-do-i-highlight-text-context-dependent-in-the-header-section/6331](https://forum.typst.app/t/how-do-i-highlight-text-context-dependent-in-the-header-section/6331)  
32. Counter Type – Typst Documentation, Zugriff am Februar 26, 2026, [https://typst.app/docs/reference/introspection/counter/](https://typst.app/docs/reference/introspection/counter/)  
33. Layout Function – Typst Documentation, Zugriff am Februar 26, 2026, [https://typst.app/docs/reference/layout/layout/](https://typst.app/docs/reference/layout/layout/)  
34. Observations from this new Typst user \- General, Zugriff am Februar 26, 2026, [https://forum.typst.app/t/observations-from-this-new-typst-user/6395](https://forum.typst.app/t/observations-from-this-new-typst-user/6395)  
35. anti-matter – Typst Universe, Zugriff am Februar 26, 2026, [https://typst.app/universe/package/anti-matter/](https://typst.app/universe/package/anti-matter/)  
36. How to structure a book project? \- Questions \- Typst Forum, Zugriff am Februar 26, 2026, [https://forum.typst.app/t/how-to-structure-a-book-project/7298](https://forum.typst.app/t/how-to-structure-a-book-project/7298)  
37. Format Front Matter, Body Matter, and Back Matter \- Amazon Kindle Direct Publishing, Zugriff am Februar 26, 2026, [https://kdp.amazon.com/help/topic/GDDYZG2C7RVF5N9J](https://kdp.amazon.com/help/topic/GDDYZG2C7RVF5N9J)  
38. Zugriff am Januar 1, 1970, [https://sitandr.github.io/typst-examples-book/book/layout/index.html](https://sitandr.github.io/typst-examples-book/book/layout/index.html)  
39. Layout – Typst Documentation, Zugriff am Februar 26, 2026, [https://typst.app/docs/reference/layout/](https://typst.app/docs/reference/layout/)  
40. statementsp – Typst Universe, Zugriff am Februar 26, 2026, [https://typst.app/universe/package/statementsp/](https://typst.app/universe/package/statementsp/)  
41. Typst Universe, Zugriff am Februar 26, 2026, [https://typst.app/universe/](https://typst.app/universe/)  
42. Search — Typst: Universe, Zugriff am Februar 26, 2026, [https://typst.app/universe/search/](https://typst.app/universe/search/)  
43. pinit – Typst Universe, Zugriff am Februar 26, 2026, [https://typst.app/universe/package/pinit/](https://typst.app/universe/package/pinit/)  
44. showybox – Typst Universe, Zugriff am Februar 26, 2026, [https://typst.app/universe/package/showybox/](https://typst.app/universe/package/showybox/)  
45. Showybox's Manual | PDF | Cartesian Coordinate System | Space \- Scribd, Zugriff am Februar 26, 2026, [https://www.scribd.com/document/700741506/Showybox-s-Manual](https://www.scribd.com/document/700741506/Showybox-s-Manual)  
46. Layout \- Typst Examples Book \- GitHub Pages, Zugriff am Februar 26, 2026, [https://sitandr.github.io/typst-examples-book/book/packages/layout.html](https://sitandr.github.io/typst-examples-book/book/packages/layout.html)  
47. drafting – Typst Universe, Zugriff am Februar 26, 2026, [https://typst.app/universe/package/drafting/](https://typst.app/universe/package/drafting/)  
48. Typst: The new foundation for documents, Zugriff am Februar 26, 2026, [https://typst.app/](https://typst.app/)

[image1]: <data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAaCAYAAACO5M0mAAAAu0lEQVR4XmNgGAW0BjxALIYuiAzUgPg4ED8C4hNAHA7EjCgqgMAFiJ8DcT4QM0PFfgKxJVwFFDwD4ulAzIIk9h+IJyHxwcZ/BWJjZEEGiMKFyAJ+QNyKLAAE3AwQhenIgiBFIMXIQBOInwCxIkwAFBQHgFgHJgAF5UCcgSygxADxbQySGCgE3gExK5IY2EqQW0DhtgWKQSEQiawIZu1bZEFsAGbtATRxDODJALEWPWgwQCIDxER9dImhBgBnnh/2TCJJ+QAAAABJRU5ErkJggg==>