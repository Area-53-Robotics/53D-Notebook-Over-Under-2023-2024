#import "/template/entries.typ": create_entry
#import "/template/widgets.typ": *
#include "/template/codly.typ"

#create_entry(
  title: "Game Challenge Analysis",
  type: "identify",
  start_date: datetime(year: 2023, month: 4, day: 30),
  attendance: "Ajibola, Emma, Von",
  [
    #nb_todo(schedule: "N/A")[
      + Analyze the game challenge rules to identify the game objectives for the season.
    ]

    #nb_heading([Robot Rules], level: 1)
    - <R4> Robot must fit within an 18” x 18” x 18” volume
    - <SG2> Horizontal expansion is limited to 36”
    - There is NO limit on vertical expansion
    
    #nb_heading(
      [Field Elements #footnote(
          [All diagrams sourced from: #link(
              "https://content.vexrobotics.com/docs/23-24/vrc-overunder/VRC-Manual-2324-1.1-Release.pdf",
            )],
        )],
      level: 1,
    )
  ]
)