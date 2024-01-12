#import "/template/template.typ": *

#show: create_entry.with(
  title: "November Gantt Chart",
  type: "management",
  start_date: datetime(year: 2023, month: 11, day: 3),
  attendance: ""
)

#nb_todo(
  date: datetime(year: 2023, month: 11, day: 3),
  (
    (true, ""),
  )
)

= ---
// #image("./gantt-charts/november-gantt-chart.png")