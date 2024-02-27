#import "/template/template.typ": *

#show: create_entry.with(
  title: "",
  type: "select",
  start_date: datetime(year: 2023, month: 9, day: 23),
  attendance: "Ajibola, Jin, Ishika, Makhi, Rory, Eric",
  designed: "Ajibola",
  witnessed: "Jin",
)


#nb_matrix_criteria[
  - Crit - e
]

#nb_decision_matrix(
  criteria: (
    ("-", 5),
    ("-", 5),
    ("-", 3),
    ("-", 4),
    ("-", 5),
    ("-", 4),
  ),
  choices: (
    ("-", 2, 4, 4, 4, 3, 0),
    ("-", 0, 0, 0, 0, 0, 0),
    ("-", 2, 3, 3, 2, 3, 4),
  ),
)

#nb_admonition(type: "select", title: "Final Selection")[
  E
]