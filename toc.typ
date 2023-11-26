#import "templates/heading.typ": *
#import "templates/icons.typ": *

#show "Identify": name => box[
  #box(circle_icon(type: "identify", radius: 15pt))
  #name
]

#nb_heading(level: 1)[TOC]