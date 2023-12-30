#import "/template/template.typ": *

#show: create_entry.with(
  title: "Drivetrain #1 - Drive Configurations",
  type: "select",
  start_date: datetime(year: 2023, month: 7, day: 21),
  attendance: "Ajibola, Ishika, Eric, Emma",
)

#nb_todo(date: datetime(year: 2023, month: 7, day: 21), monthly-schedule: "On")[
  + Select the best configuration for the drivetrain using a decision matrix. (Everyone)
]

#nb_admonition(type: "select", title: "Decision Matrix")[
  *Ranking Criteria:*
  - Speed - The maximum speed of the drivetrain configuration.
  - Turning - The smoothness of the turns made with the drivetrain configuration.
  - Force - How much force the drivetrain configuration can generate.
  - Compactness - How little space the drivetrain configuration takes up.
  - Omni-Directionality - The ability of the drivetrain configuration to move in multiple directions.
  - Ease of Programming - How easy the drivetrain configuration is to program.
  - Ease of Driving - How easy the drivetrain configuration is to drive.

  *Number Key:*
  - 4 - Excellent
  - 3 - Fair
  - 2 - Poor
  - 1 - Very Poor
  - 0 - Incapable
]

#nb_decision_matrix(
  criteria: (
    ("Speed", 5),
    ("Turning", 4),
    ("Force", 4),
    ("Compactness", 3),
    ("Omni-Directionality", 2),
    ("Ease of Programming", 2),
    ("Ease of Driving", 2),
    ),
  choices: (
    ("Tank Drive", 3, 3, 4, 4, 2, 4, 4),
    ("H-Drive", 3, 3, 3, 2, 3, 3, 3),
    ("Holonomic", 4, 4, 2, 2, 4, 2, 3),
    ),
)