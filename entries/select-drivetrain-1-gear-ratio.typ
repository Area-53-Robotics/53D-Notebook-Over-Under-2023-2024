#import "/template/entries.typ": create_entry
#import "/template/widgets.typ": *
#include "/template/codly.typ"

#create_entry(
  title: "Drivetrain #1 - Gear Ratio",
  type: "select",
  start_date: datetime(year: 2023, month: 7, day: 29),
  attendance: "Ishika, Eric, Emma",
  [
    #nb_todo(date: datetime(year: 2023, month: 7, day: 29), schedule: "Behind Schedule")[
      + Select the best gear ratio for the tank drive using a decision matrix. (Everyone)
    ]

    #nb_admonition(type: "select", title: "Decision Matrix")[
      *Ranking Criteria:*
      - Inches per Second (0 - 4) - The expected speed of the drivetrain using the gear ratio.
      - RPM (0 - 4) - The expected output RPM using the gear ratio.
      - Strength (0 - 4) - The amount of force the drivetrain can generate using the gear ratio.
      - Maneuverability (0 - 4) - The responsiveness of the drivetrain using the gear ratio.

      *Number Key:*
      - 4 - Excellent
      - 3 - Fair
      - 2 - Poor
      - 1 - Very Poor
      - 0 - Incapable
    ]

    #tablex(
      columns: (1fr, 1fr, 1fr, 1fr, 1fr),
      rows: 6,
      align: center + horizon,

      cellx()[], cellx()[5:3 Ratio;4 Inch Wheel; 200 RPM motor], cellx()[3:5 Ratio;4 Inch Wheel; 600 RPM motor], cellx()[5:3 Ratio: 3.25 Inch Wheel; 200 RPM motor], cellx()[3:5 Ratio; 3.25 Inch Wheel; 600 RPM motor],

      cellx()[Inches per second], cellx(fill: green)[4], cellx(fill: green)[4], cellx(fill: red)[2], cellx(fill: yellow)[3],
      
      cellx()[RPM], cellx(fill: yellow)[3], cellx(fill: green)[4], cellx(fill: yellow)[3], cellx(fill: green)[4],

      cellx()[Strength], cellx(fill: yellow)[3], cellx(fill: red)[2], cellx(fill: yellow)[3], cellx(fill: green)[4],

      cellx()[Maneuverability], cellx(fill: red)[2], cellx(fill: yellow)[3], cellx(fill: red)[2], cellx(fill: green)[4],

      cellx()[Total], cellx(fill: yellow.darken(20%))[12], cellx(fill: yellow.darken(20%))[13], cellx(fill: red.darken(20%))[12], cellx(fill: green.darken(20%))[15],
    )

    #nb_admonition(type: "select")[
      We decided to use a 3.25 inch wheel powered by a 600 RPM motor geared with a 3:5 gear ratio.
    ]
  ]
)