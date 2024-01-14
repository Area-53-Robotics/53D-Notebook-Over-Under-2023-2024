#import "../colors.typ": *

#let nb_title(color: gray, beginning: none, beginning-fill: none, end: none, body) = {
  
  let highlight(color: none, body, width: auto, bottom-border-size: 0pt, bottom-color: color) = {
    box(
      fill: color,
      outset: 5pt,
      radius: 1.5pt,
      body,
      height: 1em,
      width: width,
      stroke: {
        if bottom-border-size != 0pt {(bottom: bottom-border-size + bottom-color)}
      }
    )
  }

  set text(size: 18pt, weight: "bold")

  if not beginning == none {
    if beginning-fill != none {
      highlight(color: color, bottom-border-size: 5pt, bottom-color: color)[
        #box(baseline: -30%, beginning)
      ]
      h(5pt)
    } else {
      box(baseline: 30%, align(left)[#beginning])
    }
    h(10pt)
  }

  if not end == none {
    highlight(color: color)[
      #end
    ]
    h(10pt)
  }

  highlight(color: color.lighten(50%), width: 1fr, bottom-border-size: 5pt, bottom-color: color)[
    #box(baseline: -30%, body)
  ]
}