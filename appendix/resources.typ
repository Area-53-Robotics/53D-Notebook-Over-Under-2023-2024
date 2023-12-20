#import "/template/colors.typ": *
#import "/template/components/components.typ": *
#import "/template/globals.typ": *

#let nb_print_resources() = [
  #page(
    margin: (left: 5em, right: 5em),
    background: nb_side_margin_color(color: gray),
    header: [#nb_title[Resources]<nb_heading_resources>],
    footer: nb_appendix_footer()
  )[
    We utilized many resources throughout the season. Here is the complete list of them:

    + VEX Game Manual
  ]
]
