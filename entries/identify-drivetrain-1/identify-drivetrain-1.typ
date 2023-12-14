#import "/template/entries.typ": create_entry
#import "/template/widgets.typ": *
#include "/template/codly.typ"

#create_entry(
  title: "Drivetrain #1",
  type: "identify",
  start_date: datetime(year: 2023, month: 7, day: 15),
  attendance: "Ajibola, Ishika, Eric, Emma",
  [
    #nb_todo(date: datetime(year: 2023, month: 12, day: 1), schedule: "")[
      + --- (Everyone)
    ]

    #nb_heading([---], level: 1)
  ]
)