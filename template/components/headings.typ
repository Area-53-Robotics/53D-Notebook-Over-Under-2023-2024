#import "../colors.typ": *

#let nb_heading(it) = {
  // TODO: move highlight to a single spot, rn I have like 5 of them
  let highlight(color: none, body, width: auto, bottom-border-size: 0pt, bottom-color: color) = {
    box(
      fill: color,
      outset: 5pt,
      radius: 1.5pt,
      height: auto,
      width: width,
      stroke: {
        if bottom-border-size != 0pt {(bottom: bottom-border-size + bottom-color)}
      }
    )[
      #align(horizon)[#body]
    ]
  }
  
  if it.level == 1 {
      set text(size: 15pt)
      highlight(color: gray.lighten(60%), bottom-border-size: 3pt, bottom-color: gray)[
        #box(baseline: 130%, it.body)
      ]
  } else if it.level == 2 {
      set text(size: 13pt)
        highlight(color: gray.lighten(70%), bottom-border-size: 0pt, bottom-color: gray)[
        #box(baseline: 130%, it.body)
      ]
  } else if it.level == 3 {
      set text(size: 12pt)
      it.body
  }
  v(3pt)
}