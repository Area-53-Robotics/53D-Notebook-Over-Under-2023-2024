#import "/template/template.typ": *

#show: create_entry.with(
  title: "Outtake #1",
  type: "select",
  start_date: datetime(year: 2023, month: 9, day: 23),
  attendance: "Ajibola, Ishika, Eric, Emma",
  designed: "Ajibola",
  witnessed: "Eric",
)

// #nb_todo(
//   date: datetime(year: 2023, month: 9, day: 23), 
//   monthly-schedule: "On",
//   (
//     (true, "Select the wings configuration using a decision matrix. (Everyone)"),
//     (true, "Create a plan for the construction of the wings using CAD. (Ajibola)"),
//   )
// )

#nb_matrix_criteria[
  - Speed - The cycle time of the outtake option.
  - Consistency - How often the outtake option can shoot a triball into the same location.
  - Recoil - How stable the outtake option is after shooting.
  - Range - How far shots made by this catapult option can go.
  - Rapid Fire Capability - How fast the catapult can shoot when set to shoot automatically. Useful for skills runs.
  - Energy Efficiency - How little energy the outtake option requires per shot.
  - Block Resistance - How hard it is to block the shots made from the outtake option.
]

#nb_decision_matrix(
  criteria: (
    ("Speed", 5),
    ("Consistency", 5),
    ("Recoil", 3),
    ("Range", 5),
    ("Rapid Fire Capability", 4),
    ("Energy Efficiency", 3),
    ("Block Resistance", 3),
  ),
  choices: (
    ("Catapult", 2, 4, 2, 4, 2, 4, 4),
    ("Puncher", 3, 2, 2, 2, 2, 3, 1),
    ("Flywheel", 4, 1, 4, 4, 4, 2, 3),
  ),
)

#nb_admonition(type: "select", title: "Final Selection")[
  Despite the tie between the scores of the catapult and flywheel, we opted to use the catapult because the flywheel for this season is different from its conventional use in previous seasons. Our team is also more experienced in building catapults than flywheels.
]