#import "/template/colors.typ": *
#import "/template/widgets.typ": *
#import "/template/globals.typ": *

#let nb_print_innovate() = [
  #page(
    margin: (left: 5em, right: 5em),
    background: nb_side_margin_color(color: gray),
    header: [#nb_heading(level: 0)[Innovate Award Submission Information Form]<nb_heading_innovate>],
    footer: nb_appendix_footer()
  )[
    // https://kb.roboticseducation.org/hc/en-us/articles/17319258476439

    #nb_heading(level: 1)[Brief Description]

    #nb_heading(level: 1)[Dcoumentation Page Numbers]
  ]
]
