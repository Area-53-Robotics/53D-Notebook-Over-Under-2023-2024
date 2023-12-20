#import "./entries.typ": *
#import "./toc.typ": *
#import "./colors.typ": *
#import "./icons/icons.typ": *
#import "./glossary.typ": *
#import "./components/components.typ": *

#import "/appendix/resources.typ": *
#import "/appendix/innovate.typ": *

#let program-icon(codepoint) = {
  box(
    height: 0.8em,
    baseline: 0.05em,
    image(codepoint)
  )
  h(0.1em)
}

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

  // show raw.where(block: false): nb_raw_not_block
  
  show: codly-init.with()

  // Headings
  show heading: it => nb_heading(it)

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

  nb_print_resources()

  nb_print_innovate()
}