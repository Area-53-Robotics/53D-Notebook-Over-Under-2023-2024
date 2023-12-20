#import "/template/colors.typ": *
#import "/template/components/components.typ": *
#import "/template/globals.typ": *

#let nb_print_innovate() = [
  #page(
    margin: (left: 5em, right: 5em),
    background: nb_side_margin_color(color: gray),
    header: [#nb_title[Innovate Award Submission Information Form]<nb_heading_innovate>],
    footer: nb_appendix_footer()
  )[
    // https://kb.roboticseducation.org/hc/en-us/articles/17319258476439

    = Brief Description

    = Dcoumentation Page Numbers
  ]
]
