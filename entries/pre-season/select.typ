#import "/template/template.typ": *

#show: create_entry.with(
  title: "Game Challenge - Design Strategies",
  type: "select",
  start_date: datetime(year: 2023, month: 7, day: 14),
  attendance: "Ajibola, Ishika, Eric, Emma",
  designed: "Ajibola",
  witnessed: "Ishika",
)

#nb_matrix_criteria[
  - Traction - The grip of the robot onto the surface below it
  - Maneuverability - The responsiveness of the robot
  - Versatility - How useful the robot would be in a variety of situations
  - Energy Efficiency - How small the rate of energy consumption would be
  - Game Strategy - How niche the robot is; filling a niche could help us find alliance partners
  - Impact Resistance - How well the robot can maintain its structure with pressure applied to it
]

#nb_decision_matrix(
  criteria: (
    ("Traction", 3),
    ("Maneuverability", 3),
    ("Versatility", 5),
    ("Energy Efficiency", 5),
    ("Game Strategy", 5),
    ("Impact Resistance", 3),
  ),
  choices: (
    ("Heavy", 4, 3, 3, 2, 2, 4),
    ("Light", 2, 4, 3, 4, 2, 3),
    ("Descore", 2, 4, 2, 4, 4, 3),
  ),
)

#nb_admonition(type: "select", title: "Final Selection")[
  A descore-focused robot meets the most of the criteria we identified for the robot design strategy. However, as the meta evolves throughout the season, we may switch the design strategy in later design cycles.
]