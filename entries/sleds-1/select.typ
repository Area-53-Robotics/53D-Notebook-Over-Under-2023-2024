#import "/template/template.typ": *

#show: create_entry.with(
  title: "Sleds #1",
  type: "select",
  start_date: datetime(year: 2024, month: 1, day: 17),
  attendance: "Ajibola, Jin, Ishika, Makhi, Rory, Eric",
  designed: "Ajibola",
  witnessed: "Jin",
)

After brainstorming ideas for the sleds, we created a decision matrix with the following criteria:

#nb_matrix_criteria[
  - Durability - How long the sleds can be used before they need to be replaced
  - Impact Resistance - How resistant the sleds are to single impacts
  - Maneuverability - How maneuverable the drivetrain is with the sleds
  - Flexibility - How versatile the sleds are for moving across different game objects
  - Weight - How little the sleds weigh
]

#nb_decision_matrix(
  criteria: (
    ("Durability", 5),
    ("Impact Resistance", 5),
    ("Maneuverability", 3),
    ("Flexibility", 3),
    ("Weight", 1),
  ),
  choices: (
    ("Triangle Sleds", 2, 4, 4, 4, 4),
    ("Circular Sleds", 2, 3, 3, 4, 4),
    ("Gusset Sleds", 4, 3, 2, 1, 3),
  ),
)

#nb_admonition(type: "select", title: "Final Selection")[
  The triangle sleds exhibit strong performance in most of our criteria, with the only weakness being its durability.
]