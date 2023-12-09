#import "@preview/codly:0.1.0": *
#import "./colors.typ" : *

#let program-icon(codepoint) = {
  box(
    height: 0.8em,
    baseline: 0.05em,
    image(codepoint)
  )
  h(0.1em)
}

#codly(
  languages: (
    cpp: (name: "C++", icon: program-icon("./program-icons/brand-cpp.svg"), color: blue),
    py: (name: "Python", icon: program-icon("./program-icons/brand-python.svg"), color: yellow),
    sh: (name: "Bash", icon: program-icon("./program-icons/brand-powershell.svg"), color: gray),
  )
)