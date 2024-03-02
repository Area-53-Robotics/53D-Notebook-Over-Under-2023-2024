#import "/template/template.typ": *

#show: create_entry.with(
  title: "Autonomous - Implementation",
  type: "select",
  start_date: datetime(year: 2024, month: 2, day: 13),
  attendance: "Ajibola, Ishika, Eric, Makhi",
  designed: "Ajibola",
  witnessed: "Ishika",
)

After brainstorming the autonomous implementation options, we needed to select one to use.

#nb_matrix_criteria[
  - Setup Intuitiveness - How easy the implementation method is to setup
  - PID Robustness - How flexible the PID movement made using the implementation method is
  - PID Implementation Time - How little time it takes to get the PID made using the implementation method working
  - Pure Pursuit Robustness - How flexible the Pure Pursuit movement made using the implementation method is
  - Pure Pursuit Implementation Time - How little time it takes to get the Pure Pursuit made using the implementation method working
]

#nb_decision_matrix(
  criteria: (
    ("Setup Intuitiveness", 2),
    ("PID Robustness", 5),
    ("PID Implementation Time", 4),
    ("Pure Pursuit Robustness", 3),
    ("Pure Pursuit Implementation Time", 3),
  ),
  choices: (
    ("DIY Implementation", 2, 5, 3, 2, 1),
    ("LemLib", 3, 5, 4, 3, 3),
    ("ARMS", 5, 4, 4, 1, 1),
  ),
)

#nb_admonition(type: "select", title: "Final Selection")[
  LemLib offers the greatest flexibility with autonomous movement using both PID and Pure Pursuit.
]

= Implementation Plan
+ Install the LemLib template to our program
+ Use the LemLib documentation to setup the LemLib code