#import "template/entries.typ": *
#import "template/widgets.typ": *
#import "@preview/codetastic:0.2.2": qrcode

#page(
  margin: (left: 5em, right: 5em),
  background: nb_side_margin_color(color: gray),

  header: [
    #nb_heading([About Our Notebook], level: 0)
  ],
  footer: [#nb_frontmatter_footer()],
  [

    #nb_heading([How Was This Made?], level: 1)
    This notebook was written with Typst, a programming language similar to Markdown and LaTeX. We write instructions about formatting in Typst, and they get automatically rendered into a printable PDF.


    #nb_heading([Why Go Digital?], level: 1)

    We decided to use a digital notebook over a physical notebook this year for the following reasons:

    - Easier to embed pictures and diagrams
    - Easier for multiple members to work on it simultaneously
    - Consistent styling throughout the notebook

    #nb_heading([Why Use Typst?], level: 1)

    Typst gives us multiple benefits compared to Google Slides, the platform that we used last year.

    - Management and collaboration using Git #footnote([See "Git" glossary entry])
    - Verification of notebook history using Git
    - The development of multiple branches (versions) of the notebook at the same time using Git
    - Native scripting support, allowing for advanced styling
    - Native support for math and code rendering

    /*
    #nb_heading([Source Code], level: 1)

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

    #nb_heading([Notebook Entry Types], level: 1)

    Entries all have 1 out of 8 types displayed in the top left corner, labeled in the bottom right corner, and shown in the table of contents. 6 out of 8 of our types are part of the engineering design process.

    Here are the existing types:

    #grid(
      columns: 2,
      rows: 8,
      gutter: 25pt,
      align(horizon)[#box(baseline: 30%, nb_label(label: "identify", size: 2em)) #h(10pt) *Identify the Problem*],
      nb_label_box(type: "identify"),
      align(horizon)[#box(baseline: 30%, nb_label(label: "brainstorm", size: 2em)) #h(10pt) *Brainstorm Solutions*],
      nb_label_box(type: "brainstorm"),
      align(horizon)[#box(baseline: 30%, nb_label(label: "select", size: 2em)) #h(10pt) *Select the Best Solution*],
      nb_label_box(type: "select"),
      align(horizon)[#box(baseline: 30%, nb_label(label: "build", size: 2em)) #h(10pt) *Build the Solution*],
      nb_label_box(type: "build"),
      align(horizon)[#box(baseline: 30%, nb_label(label: "program", size: 2em)) #h(10pt) *Program the Solution*],
      nb_label_box(type: "program"),
      align(horizon)[#box(baseline: 30%, nb_label(label: "test", size: 2em)) #h(10pt) *Test the Solution*],
      nb_label_box(type: "test"),
      align(horizon)[#box(baseline: 30%, nb_label(label: "management", size: 2em)) #h(10pt) *Team Management*],
      nb_label_box(type: "management"),
      align(horizon)[#box(baseline: 30%, nb_label(label: "competition", size: 2em)) #h(10pt) *Competition Reflection*],
      nb_label_box(type: "competition"),
    )
  ],
)
