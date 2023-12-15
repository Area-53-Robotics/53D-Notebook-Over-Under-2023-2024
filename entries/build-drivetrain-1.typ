#import "/template/entries.typ": create_entry
#import "/template/widgets.typ": *
#include "/template/codly.typ"

#create_entry(
  title: "Drivetrain #1",
  type: "build",
  start_date: datetime(year: 2023, month: 8, day: 5),
  end_date: datetime(year: 2023, month: 9, day: 15),
  attendance: "Ishika, Eric, Eli",
  [
    #nb_todo(date: datetime(year: 2023, month: 8, day: 5), schedule: "")[
      + Build the chassis of one side of the drivetrain (Everyone)
    ]

    #nb_heading([---], level: 1)
  ]
)
