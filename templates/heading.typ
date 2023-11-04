#let nb_heading(level: 1, body) = [
  #if level == 0 [
    #heading(level: 1)[
      #set text(size: 18pt)
      #body
    ]
  ]  else if level == 1 [
    #heading(level: 2)[
      #set text(size: 15pt)
      #body
    ]
  ] else if level == 2 [
    #heading(level: 3)[
      #set text(size: 13pt)
      #body
    ]
  ]
]