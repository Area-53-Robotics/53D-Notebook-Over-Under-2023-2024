#import "/template/template.typ": *

#show: create_entry.with(
  title: "August Gantt Chart",
  type: "management",
  start_date: datetime(year: 2023, month: 8, day: 5),
  attendance: "Ajibola, Ishika, Eric, Makhi",
)

#nb_todo(
  date: datetime(year: 2023, month: 8, day: 5),
  monthly-schedule: "On",
  yearly-schedule: "On",
  (
    (true, "Plan out the August meetings by creating a Gantt chart (Everyone)"),
    (true, "Build the gear configurations for the left side of the drivetrain (Eric and Makhi)"),
    (true, "Build the wheel configurations for the left side of the drivetrain (Ajibola and Ishika)"),
  )
)

#nb_admonition(type: "note")[
  Today Area 53 #glossary_footnote[Area 53] had a reshuffling of team members. Emma and Von left our team, and Makhi joined.
]
Keeping on track with our goal to be more organized this season, we planned out our goals for the upcoming august meetings. We knew that the drivetrain would take a long time to complete, so we dedicated a lot of time to building it.

#image("/assets/management/August Over Under Gantt Chart.png")