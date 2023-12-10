#import "/template/entries.typ": create_entry
#import "/template/widgets.typ": *
#include "/template/codly.typ"

#create_entry(
  title: "Game Challenge Analysis",
  type: "identify",
  start_date: datetime(year: 2023, month: 4, day: 30),
  attendance: "Ajibola",
  [
    #nb_heading([Robot Rules], level: 1)
    - <R4> Robot must fit within an 18” x 18” x 18” volume
    - <SG2> Horizontal expansion is limited to 36”
    - There is no limit on vertical expansion

    #nb_admonition(type: "note")[Among Us]
  ]
)
