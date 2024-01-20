#let nb_highlight(color: red, body) = {
  // Felix's
  box(fill: color, outset: 3pt, radius: 1.5pt)[
    #set align(center + horizon)
    #body
  ]
}

#let glossary_footnote(body) = [
  #footnote[See "#body" glossary entry]
]

#let vex-rule(body) = [
  #text(red.darken(20%))[
    *<#body>*
  ]
]