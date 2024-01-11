#import "/template/template.typ": *

#show: create_entry.with(
  title: "September Gantt Chart",
  type: "management",
  start_date: datetime(year: 2023, month: 9, day: 8),
  attendance: ""
)

#nb_todo(
  date: datetime(year: 2023, month: 9, day: 8),
  (
    (true, ""),
  )
)

= ---