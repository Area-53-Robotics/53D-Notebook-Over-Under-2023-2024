#import "/template/template.typ": *

#show: create_entry.with(
  title: "Wedges #2",
  type: "select",
  start_date: datetime(year: 2024, month: 1, day: 15),
  attendance: "Ajibola, Jin, Ishika, Makhi, Rory, Eric",
  designed: "Ajibola",
  witnessed: "Jin",
)


#nb_matrix_criteria[
  - Durability - How long the wedges will last until they need maintenance
  - Stability - How stable the wedges are
  - Weight - How little the wedges weigh
  - Maneuverability - How easy it is for the drivetrain to maneuver across the field with the wedges
  - Clearance - How little space the wedges take up
]

#nb_decision_matrix(
  criteria: (
    ("Durability", 4),
    ("Stability", 5),
    ("Weight", 2),
    ("Maneuverability", 2),
    ("Clearance", 1),
  ),
  choices: (
    ("Aggressive Wedges", 3, 4, 4, 3, 3),
    ("Passive Wedges", 4, 4, 4, 3, 3),
    ("Wing Wedges", 3, 3, 4, 3, 3),
  ),
)

#nb_admonition(type: "select", title: "Final Selection")[
  Passive wedges provide the greatest versatility out of all the wedge choices. However, all of the wedges serve different purposes, so it may be possible for us to implement the other wedges later on.
]

#nb_admonition(type: "note")[
  We previously tried to implement wedges but failed because they got in the way of the catapult. Hopefully with a kicker, there will be more room to implement the wedges.
]