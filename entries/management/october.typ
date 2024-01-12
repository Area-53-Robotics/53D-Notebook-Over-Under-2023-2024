#import "/template/template.typ": *

#show: create_entry.with(
  title: "October Gantt Chart",
  type: "management",
  start_date: datetime(year: 2023, month: 10, day: 7),
  attendance: "Ajibola, Ishika, Eric, Rory, Makhi"
)


#nb_todo(
  date: datetime(year: 2023, month: 10, day: 7),
  (
    (true, "Plan out the October meetings by creating a Gantt chart (Everyone)"),
  )
)

