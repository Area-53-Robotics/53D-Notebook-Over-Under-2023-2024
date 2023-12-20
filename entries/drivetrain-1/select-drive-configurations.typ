#import "/template/template.typ": *

#show: create_entry.with(
  title: "Drivetrain #1 - Drive Configurations",
  type: "select",
  start_date: datetime(year: 2023, month: 7, day: 21),
  attendance: "Ajibola, Ishika, Eric, Emma",
)

#nb_todo(date: datetime(year: 2023, month: 7, day: 21), schedule: "On Schedule")[
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

#tablex(
  columns: (1fr, 1fr, 1fr, 1fr),
  rows: 9,
  center: center + horizon,
  
  cellx()[], cellx()[Tank Drive], cellx()[H-Drive], cellx()[Holonomic Drive],
  cellx()[Speed], cellx(fill: yellow)[3], cellx(fill: yellow)[3], cellx(fill: green)[4],
  cellx()[Turning], cellx(fill: yellow)[3], cellx(fill: yellow)[3], cellx(fill: green)[4],
  cellx()[Force], cellx(fill: green)[4], cellx(fill: yellow)[3], cellx(fill: red)[2],
  cellx()[Compactness], cellx(fill: green)[4], cellx(fill: red)[2], cellx(fill: red)[2],
  cellx()[Omni-Directionality], cellx(fill: red)[2], cellx(fill: yellow)[3], cellx(fill: green)[4],
  cellx()[Ease of Programming], cellx(fill: green)[4], cellx(fill: yellow)[3], cellx(fill: red)[2],
  cellx()[Ease of Driving], cellx(fill: green)[4], cellx(fill: yellow)[3], cellx(fill: yellow)[3],
  cellx()[*Total*], cellx(fill: green.darken(20%))[*24*], cellx(fill: red.darken(20%))[3], cellx(fill: yellow.darken(20%))[4],
)