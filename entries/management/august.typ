#import "/template/template.typ": *

#show: create_entry.with(
  title: "August Gantt Chart",
  type: "management",
  start_date: datetime(year: 2023, month: 8, day: 5),
  attendance: "Ajibola, Ishika, Eric, Emma",
)

#nb_todo(
  date: datetime(year: 2023, month: 8, day: 5),
  (
    (true, "Plan out the August meetings by creating a Gantt chart (Everyone)"),
    (true, "Build the gear configurations for the left side of the drivetrain (Eric and Emma)"),
    (true, "Build the wheel configurations for the left side of the drivetrain (Ajibola and Ishika)"),
  )
)

Keeping on track with our goal to be more organized this season, we planned out our goals for the upcoming august meetings. We knew that the drivetrain would take a long time to complete, so we dedicated a lot of time to building it.

#image("/assets/management/August Over Under Gantt Chart.png")