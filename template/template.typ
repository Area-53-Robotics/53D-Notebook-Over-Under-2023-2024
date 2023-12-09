#import "./entries.typ": *
#import "./toc.typ": *
#import "./colors.typ": *
#import "./glossary.typ": nb_print_glossary

#let notebook(
  team: "",
  organization: "",
  cover: "",
  season: "",
  about: [],
  intro: [],
  appendix: [],
  body,
) = {
  // Styling rules
  set text(font: "Linux Libertine", size: 11pt)
  set page("us-letter")

  set heading()
  set footnote.entry(separator: none)

  show image: it => [
    #align(center)[
      #set text(font: "Linux Libertine")
      #it
    ]
  ]

  show link: it => [
    #text(fill: blue, [ _ #it _ ])
  ]

  show figure.caption: it => it.body

  show figure: it => align(center)[
    #it.body
    _ #it.caption _
  ]

  show raw.where(block: false): box.with(
    fill: gray2,
    inset: (x: 3pt, y: 0pt),
    outset: (y: 3pt),
    radius: 2pt,
  )

  show raw.where(block: true): it => {
    set par(justify: false);
    // the line counter
    let i = 0;
    let box_radius = 1.5pt;

    let detail_radius = 1.5pt;
    let detailRadius = 3pt;
    if (it.lang != none) {
      grid(
        columns: (100%, 100%),
        column-gutter: (-100%),
        block(width: 100%, inset: 1em, {
          for line in it.text.split("\n") {
            box(width: 0pt, align(right, str(i + 1) + h(2em)))
            hide(line)
            linebreak()
            i = i + 1;
          }
        }),
        block(radius: box_radius, fill: blue-gray1, width: 100%, inset: 1em, {
          place(
            top + right,
            box(fill: gray3, radius: detail_radius, outset: 3pt, it.lang),
          )
          it
        }),
      )
    } else {
      block(radius: box_radius, fill: gray2, width: 100%, inset: 1em, it)
    }
  }

  // Content
  align(center, [
    // Title Page
    #set text(size: 24pt, font: "Orbitron")
      #text(size: 28pt)[
        53D Engineering Notebook
      ]

      #image(cover, height: 70%)

      2023 - 2024 \
      VEX Robotics Challenge \
      // #line(length: 50%, stroke: (thickness: 2.5pt, cap: "round"))
      Over Under
  ])

  pagebreak()
  pagebreak()

  about

  intro

  nb_toc()

  print_entries()

  nb_print_glossary()
}
