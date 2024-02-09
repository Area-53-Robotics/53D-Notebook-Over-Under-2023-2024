#import "/template/template.typ": *

#show: create_entry.with(
  title: "Elevation #1",
  type: "select",
  start_date: datetime(year: 2024, month: 2, day: 1),
  attendance: "Ajibola, Jin, Ishika, Makhi, Eric, Rory",
  designed: "Ajibola",
  witnessed: "Jin",
)

#nb_matrix_criteria[ 
  - Elevation Tier - How high the elevation mechanism can lift the robot
  - Elevation Speed - How fast it takes for the elevation mechanism to lift the robot from the floor to the top position
  - Set-up Speed - How fast it takes to get the robot into a position to begin elevating with the elevation mechanism
  - Effectiveness - How smoothly the elevation mechanism can elevate the robot
  - Integration - How well the elevation mechanism could be integrated into existing mechanisms
  - Space - How little space the elevation mechanism takes up on the robot
]

#nb_decision_matrix(
  criteria: (
    ("Elevation Tier", 5),
    ("Elevation Speed", 5),
    ("Set-up Speed", 3),
    ("Effectiveness", 5),
    ("Integration", 1),
    ("Space", 1),
  ),
  choices: (
    ("Middle Barrier Hang", 2, 4, 4, 4, 3, 4),
    ("Pull Up Hang", 3, 3, 3, 4, 4, 3),
    ("Upside-Down Hang", 4, 1, 2, 2, 1, 3),
  ),
)

#nb_admonition(type: "select", title: "Final Selection")[
  Although the middle barrier hang won, both the pull up hang and the middle bar hang can be built on our robot. We want to implement both options to give us flexibility in elevation methods.
]

/*
#nb_cad(
  folder: "wings-1",
  sheets: 3,
  add-views: ("Isometric", "Top", "Side", "Front"),
  date: datetime(year: 2023, month: 9, day: 23),
  designed: "Ajibola",
  witnessed: "Makhi",
)
*/