#import "/template/entries.typ": create_entry
#import "/template/widgets.typ": *
#include "/template/codly.typ"

#create_entry(
  title: "Drivetrain #1 - Drive Configurations",
  type: "select",
  start_date: datetime(year: 2023, month: 7, day: 21),
  attendance: "Ajibola, Ishika, Eric, Emma",
  [
    #nb_todo(date: datetime(year: 2023, month: 7, day: 21), schedule: "On Schedule")[
      + Select the best configuration for the drivetrain using a decision matrix. (Everyone)
    ]

    #nb_admonition(type: "select", title: "Drive Configurations Decision Matrix")[
      *Ranking Criteria:*
      - Speed (0 - 4) - The maximum speed of the drivetrain configuration.
      - Turning (0 - 4) - The smoothness of the turns made with the drivetrain configuration.
      - Force (0 - 4) - How much force the drivetrain configuration can generate.
      - Compactness (0 - 4) - How little space the drivetrain configuration takes up.
      - Omni-Directionality (0 - 4) - The ability of the drivetrain configuration to move in multiple directions.
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