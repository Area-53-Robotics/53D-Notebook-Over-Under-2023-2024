#import "template/entries.typ": *
#import "template/components/components.typ": *
#import "@preview/tablex:0.0.7"
#import "@preview/codetastic:0.2.2": qrcode

#page(
  margin: (left: 5em, right: 5em),
  background: nb_side_margin_color(color: gray),

  header: [
    #nb_title([About Our Notebook])
  ],
  footer: [#nb_frontmatter_footer()],
  [

    = How Was This Made?
    This notebook was written with Typst, a programming language similar to Markdown and LaTeX. We write instructions about formatting in Typst, and they get automatically rendered into a printable PDF.

    = Why Go Digital?

    We decided to use a digital notebook over a physical notebook this year for the following reasons:

    - Easier to embed pictures and diagrams
    - Easier for multiple members to work on it simultaneously
    - Consistent styling throughout the notebook

    = Why Use Typst?

    Typst gives us multiple benefits compared to Google Slides, the platform that we used last year.

    - Management and collaboration using Git #footnote([See "Git" glossary entry])
    - Verification of notebook history using Git
    - The development of multiple branches (versions) of the notebook at the same time using Git
    - Native scripting support, allowing for advanced styling
    - Native support for math and code rendering

    /*
    = Source Code

    #grid(
      columns: (1fr, 1fr),
      gutter: 20pt,
      [
        The source code can be found here: #link("https://github.com/Area-53-Robotics/53D-Over-Under-Notebook").
        Alternatively, you can use the QR code to the left.
      ],
      qrcode("https://github.com/Area-53-Robotics/53D-Over-Under-Notebook", size: 5pt),
    )
    */

    \
    \
    \
    \
    \
    \
    \
    \
    \
    \
    \
    \
    \
    \
    \
    \
    \
    \
    \
    \
    \
    \

    = Notebook Entry Types

    Entries all have 1 out of 8 types displayed in the top left corner, labeled in the bottom right corner, and shown in the table of contents. 6 out of 8 of our types are part of the engineering design process.

    Here are the existing types:

    #align(center)[
      #set text(size: 14pt)
      #gridx(
        columns: 2,
        rows: 8,
        gutter: 15pt,
        align: (center + horizon),
        [#box(baseline: 40%, nb_label(label: "identify", size: 3em)) #h(11pt) *Identify the Problem*],
        nb_label_box(type: "identify"),
        [#box(baseline: 40%, nb_label(label: "brainstorm", size: 3em)) #h(11pt) *Brainstorm Solutions*],
        nb_label_box(type: "brainstorm"),
        [#box(baseline: 40%, nb_label(label: "select", size: 3em)) #h(11pt) *Select the Best Solution*],
        nb_label_box(type: "select"),
        [#box(baseline: 40%, nb_label(label: "build", size: 3em)) #h(11pt) *Build the Solution*],
        nb_label_box(type: "build"),
        [#box(baseline: 40%, nb_label(label: "program", size: 3em)) #h(11pt) *Program the Solution*],
        nb_label_box(type: "program"),
        [#box(baseline: 40%, nb_label(label: "test", size: 3em)) #h(11pt) *Test the Solution*],
        nb_label_box(type: "test"),
        [#box(baseline: 40%, nb_label(label: "management", size: 3em)) #h(11pt) *Team Management*],
        nb_label_box(type: "management"),
        [#box(baseline: 40%, nb_label(label: "competition", size: 3em)) #h(11pt) *Competition Reflection*],
        nb_label_box(type: "competition"),
      )
    ]
  ],
)
