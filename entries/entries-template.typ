#import "/template/entries.typ": create_entry
#import "/template/widgets.typ": *
#include "/template/codly.typ"

#create_entry(
  title: "",
  type: "",
  start_date: datetime(year: 2023, month: 12, day: 1),
  attendance: "",
  [
    #nb_todo(date: datetime(year: 2023, month: 12, day: 1), schedule: "")[
      + --- (Everyone)
    ]

    #nb_heading([---], level: 1)
  ]
)