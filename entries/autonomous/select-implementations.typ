#import "/template/template.typ": *

#show: create_entry.with(
  title: "Autonomous Movement - Implementations",
  type: "select",
  start_date: datetime(year: 2024, month: 1, day: 25),
  attendance: "Ajibola, Ishika, Eric, Makhi",
  designed: "Ajibola",
  witnessed: "Ishika",
)

After brainstorming the autonomous implementations, we needed to select one to use. Because the signature event is in one week (2023/02/03), implementation time is going to be the most restrictive criteria.

#nb_matrix_criteria[
  - Implementation Time - How little time it takes to create the algorithms and functions necessary for the autonomous implementation.
  - Testing Time - How little time it takes to develop and test the autons made using the autonomous implementation.
  - Robustness - How many types of movements can be made using the auton implementation.
  - Consistency - How consistent the autons made using the autonomous implementation are.
]

#nb_decision_matrix(
  criteria: (
    ("Implementation Time", 5),
    ("Testing Time", 5),
    ("Robustness", 3),
    ("Consistency", 4),
  ),
  choices: (
    ("Relative Movements", 4, 1, 2, 2),
    ("PID", 3, 3, 3, 3),
    ("Pure Pursuit", 1, 3, 4, 4),
  ),
)

#nb_admonition(type: "select", title: "Final Selection")[
  PID strikes the best balance between implementation & testing time and its resulting performance.
]