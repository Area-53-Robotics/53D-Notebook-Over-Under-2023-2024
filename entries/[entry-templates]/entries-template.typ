#import "/template/template.typ": *

#show: create_entry.with(
  title: "",
  type: "",
  start_date: datetime(year: 2024, month: 1, day: 1),
  attendance: "",
  designed: "",
  witnessed: "",
)

#nb_todo(
  date: datetime(year: 2024, month: 1, day: 1),
  (
    (true, ""),
  )
)

= ---