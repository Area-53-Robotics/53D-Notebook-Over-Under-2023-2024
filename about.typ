#import "template/entries.typ": *
#import "template/components/components.typ": *
#import "@preview/tablex:0.0.8"
#import "@preview/codetastic:0.2.2": qrcode

#show: page.with(
  margin: (left: 5em, right: 5em),
  background: nb_side_margin_color(color: gray),
  header: [
    #nb_title[About Our Notebook]
  ],
  footer: [#nb_frontmatter_footer()],
)

= How Was This Made?
This notebook was written with Typst, a programming language similar to Markdown and LaTeX. We write instructions about formatting in Typst, and they get automatically rendered into a printable PDF.

= Why Go Digital?

We decided to use a digital notebook over a physical notebook this year for the following reasons:

- Easier to embed pictures and diagrams
- Easier for multiple members to work on it simultaneously
- Consistent styling throughout the notebook

= Why Use Typst?

Typst gives us multiple benefits compared to Google Slides, the platform that we used last year.

- Management and collaboration using Git #glossary-footnote[Git]
- Verification of notebook history using Git
- The development of multiple branches (versions) of the notebook at the same time using Git
- Native scripting support, allowing for advanced styling
- Native support for math and code rendering

= Source Code

The source code for our notebook can be accessed on 
#box(baseline: 12.5%)[
  #box(
    image("/template/tabler-icons/brand-github-filled.svg", height: 1em),
    baseline: 10%
    )
  GitHub #glossary-footnote[GitHub]
] using either of the following methods:

#gridx(
  columns: (1fr, 1fr),
  gutter: 20pt,
  align: center,
  [
    == Link
    #box[
      #box(
        image("/template/tabler-icons/brand-github-filled.svg", height: 1em),
        baseline: 20%
        )
      #link("https://github.com/Area-53-Robotics/53D-Over-Under-Notebook")
    ]
  ],
  [
    == QR Code
    #qrcode("https://github.com/Area-53-Robotics/53D-Over-Under-Notebook", size: 5pt)
  ],
)

= Notebook Entry Types

Entries all have 1 out of 9 types displayed in the top left corner, labeled in the bottom right corner, and shown in the table of contents. The 6 types with a black border are part of the engineering design process.

Here are the existing types:

#align(center)[
  #set text(size: 14pt)
  #gridx(
    columns: (auto, auto, auto),
    rows: 8,
    gutter: 10pt,
    align: (center + horizon),
    
    vlinex(start: 0, end: 1, stop-pre-gutter: true, stroke: 2pt, x: 0),
    vlinex(start: 2, end: 7, stop-pre-gutter: true, stroke: 2pt, x: 0),

    nb_icon(label: "identify", size: 3em),
    [*Identify the Problem*],
    nb_icon_box(type: "identify"),

    nb_icon(label: "understand", size: 3em),
    [*Understand the Concepts*],
    nb_icon_box(type: "understand"),

    nb_icon(label: "brainstorm", size: 3em),
    [*Brainstorm Solutions*],
    nb_icon_box(type: "brainstorm"),

    nb_icon(label: "select", size: 3em),
    [*Select the Best Solution*],
    nb_icon_box(type: "select"),

    nb_icon(label: "build", size: 3em),
    [*Build the Solution*],
    nb_icon_box(type: "build"),

    nb_icon(label: "program", size: 3em),
    [*Program the Solution*],
    nb_icon_box(type: "program"),

    nb_icon(label: "test", size: 3em),
    [*Test the Solution*],
    nb_icon_box(type: "test"),

    nb_icon(label: "management", size: 3em),
    [*Team Management*],
    nb_icon_box(type: "management"),

    nb_icon(label: "competition", size: 3em),
    [*Competition Reflection*],
    nb_icon_box(type: "competition"),
  )
]