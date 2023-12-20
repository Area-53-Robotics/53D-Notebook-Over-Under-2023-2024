#import "/template/template.typ": *

#show: create_entry.with(
  title: "",
  type: "",
  start_date: datetime(year: 2023, month: 12, day: 1),
  attendance: ""
)

#nb_todo(date: datetime(year: 2023, month: 12, day: 1), schedule: "")[
  + --- (Everyone)
]

= ---