#import "/template/template.typ": *

#show: create_entry.with(
  title: "Intake #1",
  type: "select",
  start_date: datetime(year: 2023, month: 10, day: 14),
  attendance: "Ajibola, Ishika, Eric, Emma",
)

#nb_matrix_criteria[
  - Speed - How fast the intake can spin
  - Consistency - How consistently the intake can get the triball into similar positions
  - Compression - How well the intake can adjust to the shape of the triball
  - Strength - How strong the intake's grip on the triball is
]

#nb_decision_matrix(
  criteria: (
    ("Speed", 5),
    ("Consistency", 4),
    ("Compression", 4),
    ("Strength", 3),
  ),
  choices: (
    ("Linear Flex Wheel", 2, 4, 2, 3),
    ("Rubber Band", 3, 3, 4, 3),
    ("Flywheel", 3, 2, 1, 2),
  ),
)

#nb_cad(
  folder: "intake-1",
  sheets: 3,
  add-views: ("Isometric", "Top", "Side", "Front")
)