#import "./entries.typ": *
#import "./toc.typ": *
#import "./colors.typ": *
#import "./glossary.typ": nb_print_glossary
#import "/appendix/resources.typ": nb_print_resources
#import "/appendix/innovate.typ": nb_print_innovate

#import "@preview/codly:0.1.0": *

#let program-icon(codepoint) = {
  box(
    height: 0.8em,
    baseline: 0.05em,
    image(codepoint)
  )
  h(0.1em)
}

#codly(languages: (
  cpp: (name: "C++", icon: program-icon("/template/program-icons/brand-cpp.svg"), color: rgb("#CE412B")),
  python: (name: "Python", icon: program-icon("/template/program-icons/brand-python.svg"), color: rgb("#CE412B")),
  powershell: (name: "Powershell", icon: program-icon("/template/program-icons/brand-powershell.svg"), color: rgb("#CE412B")),
))

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
  
  show: codly-init.with()

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