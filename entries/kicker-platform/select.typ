#import "/template/template.typ": *

#show: create_entry.with(
  title: "Kicker #1 - Platform",
  type: "select",
  start_date: datetime(year: 2023, month: 9, day: 23),
  attendance: "Ajibola, Jin, Ishika, Makhi, Rory, Eric",
  designed: "Ajibola",
  witnessed: "Jin",
)


#nb_matrix_criteria[
  - Triball Placement Consistency - How consistently triballs placed on the platform will have the same orientation
  - Stability - How stable the platform is
  - Weight - How little the platform weighs
  - Durability - How long the platform will last until it needs maintenance
  - Compatibility - How easy it would be to impelement the platform onto the kicker
  - Grouping & Precision - How often triball shots made with the platform land in the same spot
]

#nb_decision_matrix(
  criteria: (
    ("Triball Placement Consistency", 5),
    ("Stability", 4),
    ("Weight", 5),
    ("Durability", 3),
    ("Compatibility", 4),
    ("Grouping & Precision", 5),
    ),
  choices: (
    ("Tray Platform", 4, 3, 3, 3, 2, 4),
    ("Tower Platform", 2, 4, 3, 4, 4, 2),
    ("Lexan Wings Platform", 3, 3, 4, 2, 3, 4),
    ),
)

#nb_admonition(type: "select", title: "Final Selection")[
  Although it was a close match, we chose to make the wings because of how easy and quick they can be made.
]