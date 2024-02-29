#let nb_highlight(color: red, body) = {
  // Felix's
  box(fill: color, outset: 3pt, radius: 1.5pt)[
    #set align(center + horizon)
    #body
  ]
}

#let glossary-footnote(body) = [
  #footnote[See "#body" glossary entry]
]

#let vex-rule(body) = [
  #text(red.darken(20%))[
    *<#body>*
  ]
]

#let code-header(body) = align(center)[
  *53D_OverUnder/#body*
]