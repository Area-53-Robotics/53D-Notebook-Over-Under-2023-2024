#import "@preview/codly:0.2.0": *
#import "../colors.typ": *

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
    cpp: (name: "C++", icon: program-icon("/template/tabler-icons/brand-cpp.svg"), color: blue),
    py: (name: "Python", icon: program-icon("/template/tabler-icons/brand-python.svg"), color: yellow),
    sh: (name: "Bash", icon: program-icon("/template/tabler-icons/brand-powershell.svg"), color: gray),
    yml: (name: "YAML", icon: program-icon("/template/tabler-icons/brand-github-filled.svg"), color: purple),
  ),
  breakable: true,
  // set breakable lines to false when the next codly update comes out
)