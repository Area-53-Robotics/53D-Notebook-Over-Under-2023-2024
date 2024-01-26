#import "/template/template.typ": *

#show: create_entry.with(
  title: "Wings #1",
  type: "select",
  start_date: datetime(year: 2023, month: 9, day: 23),
  attendance: "Ajibola, Ishika, Eric, Emma",
  designed: "Ajibola",
  witnessed: "Makhi",
)

#nb_matrix_criteria[ 
  - Speed - How fast the wings can deploy
  - Consistency - How consistently the wings can deploy
  - Pneumatic Efficiency - How little air it takes to deploy the wings
  - Strength - How much pushing power the wings can exert on objects
]

#nb_decision_matrix(
  criteria: (
    ("Speed", 4),
    ("Consistency", 3),
    ("Pneumatic Efficiency", 4),
    ("Strength", 5),
  ),
  choices: (
    ("Horizontal Pneumatic", 4, 2, 3, 3),
    ("Horizontal Motorized", 0, 0, 0, 0),
    ("Vertical Motorized", 0, 0, 0, 0),
  ),
)

#nb_admonition(type: "note")[
  Because of the high wattage cost, we will not evaluate horizontally motorized wings and vertically motorized wings. 
]

#nb_cad(
  folder: "wings-1",
  sheets: 3,
  add-views: ("Isometric", "Top", "Side", "Front"),
  date: datetime(year: 2023, month: 9, day: 23),
  designed: "Ajibola",
  witnessed: "Makhi",
)