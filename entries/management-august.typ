#import "/template/entries.typ": create_entry
#import "/template/widgets.typ": *
#include "/template/codly.typ"

#create_entry(
  title: "August Gantt Chart",
  type: "management",
  start_date: datetime(year: 2023, month: 8, day: 23),
  attendance: "Ajibola, Ishika, Eric, Emma",
  [
    #nb_todo(date: datetime(year: 2023, month: 7, day: 14), schedule: "")[
      + Plan out the August meetings by creating a Gantt chart. (Everyone)
    ]

    Keeping on track with our goal to be more organized this season, we planned out our goals for the upcoming august meetings. We knew that the drivetrain would take a long time to complete, so we dedicated a lot of time to building it.

    #image("/assets/management/August Over Under Gantt Chart.png")
  ]
)