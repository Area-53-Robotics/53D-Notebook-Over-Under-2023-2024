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

    #grid(
      columns: (1fr, 1fr),
      rows: auto,
      gutter: 50pt,
      [
        #nb_heading([2023/8/5], level: 1)

        #lorem(6)
      ],
      [#image("/assets/Engineering Design Process.svg", width: auto)],
    )
  ]
)
