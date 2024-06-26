#import "/template/template.typ": *

#show: create_entry.with(
  title: "Kicker #1",
  type: "select",
  start_date: datetime(year: 2023, month: 12, day: 28),
  attendance: "Ajibola, Jin, Ishika, Makhi, Eric, Rory",
  designed: "Ajibola",
  witnessed: "Jin",
)

After brainstorming the different kicker designs, we had to pick one to begin building. We did so using a weighted decision matrix.

#nb_matrix_criteria[
  - Cycle Speed - How short the time inbetween intaking and shooting a triball is.
  - Consistency - How well the trajectory of the triball can be controlled.
  - Grouping - How often triballs shot end up in the same place.
  - Range - How far the triballs can be shot.
  - Energy Efficiency - How little energy it takes to activate.
  - Reliability - How small the margin is for technical failure.
]

#nb_decision_matrix(
  criteria: (
    ("Cycle Speed", 5),
    ("Consistency", 5),
    ("Grouping", 5),
    ("Range", 3),
    ("Energy Efficiency", 1),
    ("Reliability", 2),
  ),
  choices: (
    ("Kicker", 4, 4, 3, 3, 4, 3),
    ("Double Kicker", 0, 0, 0, 0, 0, 0),
    ("Upside Down Kicker", 4, 2, 3, 4, 4, 2),
  ),
)

#nb_admonition(type: "note")[
  The double kicker was not scored because of how how high of a wattage cost it would require.
]

#nb_admonition(type: "select", title: "Final Selection")[
  The normal kicker gives us the most versatility and reliability without having any critical drawbacks, such as extreme power usage.
]

#nb_cad(
  folder: "kicker-1",
  sheets: 3,
  add-views: ("Isometric", "Top", "Front", "Side"),
  date: datetime(year: 2023, month: 12, day: 28),
  designed: "Ajibola",
  witnessed: "Jin",
)