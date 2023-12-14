#import "/template/entries.typ": create_entry
#import "/template/widgets.typ": *
#include "/template/codly.typ"

#create_entry(
  title: "Drivetrain #1 - Wheel Types",
  type: "select",
  start_date: datetime(year: 2023, month: 7, day: 22),
  attendance: "Ajibola, Ishika, Eric, Emma",
  [
    #nb_todo(date: datetime(year: 2023, month: 7, day: 22), schedule: "Behind Schedule")[
      + Select the best wheel configurations for the tank drive using a decision matrix. (Everyone)
    ]

    #nb_admonition(type: "select", title: "Decision Matrix")[
      *Ranking Criteria:*
      - Speed (0 - 4) - The maximum speed of the wheel configuration.
      - Compactness (0 - 4) - How little space the wheel configuration takes up.
      - Strafing (0 - 4) - The ability of the wheel configuration to move from side-to-side.
      - Turning (0 - 4) - The smoothness of the turns made with the drivetrain configuration.
      - Traction (0 - 4) - The grip of the wheels of the wheel configuration onto the surface below it.
      - Ease of Programming (0 - 4) - How easy the drivetrain configuration is to program.
      - Ease of Driving (0 - 4) - How easy the drivetrain configuration is to drive.

      *Number Key:*
      - 4 - Excellent
      - 3 - Fair
      - 2 - Poor
      - 1 - Very Poor
      - 0 - Incapable
    ]
  ]
)