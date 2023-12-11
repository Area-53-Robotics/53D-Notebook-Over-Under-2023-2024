#import "/template/entries.typ": create_entry
#import "/template/widgets.typ": *
#include "/template/codly.typ"

#create_entry(
  title: "July Gantt Chart",
  type: "management",
  start_date: datetime(year: 2023, month: 7, day: 14),
  attendance: "Ajibola, Ishika, Eric, Emma",
  [
    #nb_todo(schedule: "N/A")[
      + Plan out the July meetings by creating a Gantt chart. (Everyone)
    ]

    After planning out the season, we also took the time to plan out our work for July. We had to keep in mind that most of our members would miss some July meetings for their summer activities. Here is what we came up with:

    #image("/assets/management/July Over Under Gantt Chart.png")
  ]
)