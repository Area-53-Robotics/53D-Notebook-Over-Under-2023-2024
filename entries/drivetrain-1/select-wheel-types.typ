#import "/template/template.typ": *

#show: create_entry.with(
  title: "Drivetrain #1 - Wheel Types",
  type: "select",
  start_date: datetime(year: 2023, month: 7, day: 22),
  attendance: "Ajibola, Ishika, Eric, Emma",
)

#nb_todo(date: datetime(year: 2023, month: 7, day: 22), schedule: "Behind Schedule")[
  + Select the best wheel configurations for the tank drive using a decision matrix. (Everyone)
]

#nb_admonition(type: "select", title: "Decision Matrix")[
  *Ranking Criteria:*
  - Speed - The maximum speed of the wheel configuration.
  - Compactness - How little space the wheel configuration takes up.
  - Strafing - The ability of the wheel configuration to move from side-to-side.
  - Turning - The smoothness of the turns made with the drivetrain configuration.
  - Traction - The grip of the wheels of the wheel configuration onto the surface below it.
  - Ease of Programming - How easy the drivetrain configuration is to program.
  - Ease of Driving - How easy the drivetrain configuration is to drive.

  *Number Key:*
  - 4 - Excellent
  - 3 - Fair
  - 2 - Poor
  - 1 - Very Poor
  - 0 - Incapable
]

#tablex(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr),
  rows: 9,
  align: center + horizon,

  map-cells: cell => {
  let fill-color = []
    if cell.x > 0 and cell.y > 0 and cell.y < 8 {
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
        if cell.x > 0 and cell.y > 0 and cell.y < 8 {fill-color}
      })
    } else {cell}
  },

  [], [Omnis], [Traction], [Hybrid (Omni & Traction)], [Mecanums],
  [Speed], [4], [2], [4], [2],
  [Compactness], [3], [4], [3], [2],
  [Strafing], [3], [1], [2], [4],
  [Turning], [3], [2], [3], [3],
  [Traction],[2], [4], [3], [2],
  [Ease of Programming], [3], [3], [3], [3],
  [Ease of Driving], [4], [2], [4], [2],

  [*Total*], cellx(fill: green.darken(20%))[*22*], cellx(fill: yellow.darken(20%))[18], cellx(fill: green.darken(20%))[*22*], cellx(fill: yellow.darken(20%))[18],
)