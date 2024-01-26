#import "/template/template.typ": *

#show: create_entry.with(
  title: "Drivetrain #2 - RPM",
  type: "select",
  start_date: datetime(year: 2023, month: 12, day: 27),
  attendance: "Ajibola, Ishika, Makhi, Rory, Eric",
  designed: "Jin",
  witnessed: "Makhi",
)

After brainstorming the different RPM drivetrains, we needed to select one to build. We collectively determined that the criteria used to select this drivetrain should be the same as the criteria we used to evaluate the wheel configurations in our #nb_entry_reference(date: datetime(year: 2023, month: 7, day: 22), type: "select", title: "Drivetrain #1"), minus the "Omni-Directionality" criteria.

#nb_matrix_criteria[
  - Speed - The maximum speed of the drivetrain configuration.
  - Turning - The smoothness of the turns made with the drivetrain configuration.
  - Force - How much force the drivetrain configuration can generate.
  - Compactness - How little space the drivetrain configuration takes up.
  - Ease of Programming - How easy the drivetrain configuration is to program.
  - Ease of Driving - How easy the drivetrain configuration is to drive.
]

#nb_decision_matrix(
  criteria: (
    ("Speed", 5),
    ("Turning", 5),
    ("Force", 5),
    ("Compactness", 5),
    ("Ease of Programming", 2),
    ("Ease of Driving", 3),
  ),
  choices: (
    ("600 RPM", 4, 2, 2, 3, 3, 4),
    ("450 RPM", 3, 4, 3, 4, 3, 3),
    ("360 RPM", 3, 2, 4, 2, 3, 3),
  ),
)

#nb_admonition(type: "select", title: "Final Selection")[
  A 450 RPM drivetrain satisfies most of the criteria we identified without any major drawbacks, such as a significant decrease in torque.
]

#nb_cad(
  folder: "drivetrain-2",
  sheets: 5,
  add-views: ("Isometric", "Top", "Side", "Front"),
  date: datetime(year: 2023, month: 12, day: 27),
  designed: "Jin",
  witnessed: "Makhi",
)