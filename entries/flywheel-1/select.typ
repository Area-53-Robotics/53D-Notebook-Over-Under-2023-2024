#import "/template/template.typ": *

#show: create_entry.with(
  title: "Flywheel #1",
  type: "select",
  start_date: datetime(year: 2023, month: 8, day: 12),
  attendance: "Ajibola, Ishika, Makhi",
)

#nb_todo(
  date: datetime(year: 2023, month: 12, day: 8),
  (
    (true, "Select the best flywheel configuration using a decision matrix. (Everyone)"),
    (true, "Create a plan for the construction of the flywheel using CAD. (Ajibola and Makhi)"),
  )
)

#nb_matrix_criteria[
  - Speed - How fast the flywheel can spin
  - Consistency - How consistently the flywheel can get the triball into similar positions
  - Height - How high the flywheel can reach when fully extended
  - Range - How far the triballs shot by the flywheel can go
  - Space - How little space the flywheel takes
  - Versatility - How adjustable the flywheel is to different situations
]

#nb_decision_matrix(
  criteria: (
    ("Speed", 4),
    ("Consistency", 4),
    ("Height", 5),
    ("Range", 4),
    ("Space", 3),
    ("Versatility", 3),
  ),
  choices: (
    ("Stationary Flywheel", 4, 4, 2, 3, 2, 3),
    ("Four Bar Flywheel", 4, 2, 4, 4, 3, 4),
    ("Two Bar Flywheel", 4, 2, 3, 4, 4, 2),
  ),
)

#nb_admonition(type: "select", title: "Final Selection")[
  A four bar flywheel gives us the best balance of all the criteria we identified along with the possibility to attach a blocker to it.
]

/*
#nb_cad(
  folder: "flywheel-1",
  sheets: #,
  add-views: ("Isometric", "Top", "Side", "Front")
)
*/