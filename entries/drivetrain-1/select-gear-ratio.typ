#import "/template/template.typ": *

#show: create_entry.with(
  title: "Drivetrain #1 - Gear Ratio",
  type: "select",
  start_date: datetime(year: 2023, month: 7, day: 29),
  attendance: "Ishika, Eric, Emma",
)

#nb_todo(date: datetime(year: 2023, month: 7, day: 29), schedule: "Behind Schedule")[
  + Select the best gear ratio for the tank drive using a decision matrix. (Everyone)
]

#nb_admonition(type: "select", title: "Decision Matrix")[
  *Ranking Criteria:*
  - Inches per Second - The expected speed of the drivetrain using the gear ratio.
  - RPM - The expected output RPM using the gear ratio.
  - Strength - The amount of force the drivetrain can generate using the gear ratio.
  - Maneuverability - The responsiveness of the drivetrain using the gear ratio.

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

  map-cells: cell => {
  let fill-color = []
    if cell.x > 0 and cell.y > 0 and cell.y < 5 {
      let value = int(cell.content.text)
      let fill-color = if value == 4 {
        green
      } else if value == 3 {
        yellow
      } else if value == 2 {
        red
      } else if value == 1 {
        red.darken(20%)
      } else {
        red.darken(50%)
      }
      (..cell, fill: {
        if cell.x > 0 and cell.y > 0 and cell.y < 7 {fill-color}
      })
    } else {cell}
  },

  [], [5:3 Ratio;4 Inch Wheel; 200 RPM motor], [3:5 Ratio;4 Inch Wheel; 600 RPM motor], [5:3 Ratio: 3.25 Inch Wheel; 200 RPM motor], [3:5 Ratio; 3.25 Inch Wheel; 600 RPM motor],

  [Inches per second], [4], [4], [2], [3],
  [RPM], [3], [4], [3], [4],
  [Strength], [3], [2], [3], [4],
  [Maneuverability], [2], [3], [2], [4],

  [Total], cellx(fill: yellow.darken(20%))[12], cellx(fill: yellow.darken(20%))[13], cellx(fill: red.darken(20%))[12], cellx(fill: green.darken(20%))[15],
)

#nb_admonition(type: "select")[
  We decided to use a 3.25 inch wheel powered by a 600 RPM motor geared with a 3:5 gear ratio.
]