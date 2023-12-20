#import "/template/template.typ": *

#show: create_entry.with(
  title: "Drivetrain #1 - Gear Ratio",
  type: "brainstorm",
  start_date: datetime(year: 2023, month: 7, day: 28),
  attendance: "Ajibola, Ishika, Eric, Emma",
)

#nb_todo(date: datetime(year: 2023, month: 7, day: 28), schedule: "Behind Schedule")[
  + Brainstorm possible gear ratios for the tank drive. (Everyone)
]

We used a publicly available spreadsheet #footnote([#link("https://docs.google.com/spreadsheets/d/1RSoLv3tnpiCgFyHb0QayxK-42r9MgVRD_4QQmeFM618/edit#gid=0")]) to help us collect the data needed for each gear ratio.

#nb_admonition(type: "equation")[
  $"Gear Ratio" = "# Driven Gear Teeth"/"# Driving Gear Teeth" = "Driven : Driving"$
]

#nb_admonition(type: "equation")[
  $"Output RPM" = "Motor RPM" * "Gear Ratio"$
]

#tablex(
  columns: 6,
  rows: 5,
  header-rows: 1,
  align: center + horizon,
  
  cellx(fill: gray)[*Gear Ratio*], cellx(fill: gray)[*Motor Cartridge*], cellx(fill: gray)[*Gear Ratio*], cellx(fill: gray)[*RPM*], cellx(fill: gray)[*Wheel Size*], cellx(fill: gray)[*in/sec*],

  [#image("./brainstorm-gear-ratio/60.30 4 inch 200 RPM.png")], [200 RPM (Green Cartridge)], [60:36 Gear Ratio\ 5:3 Ratio], [333 RPM], [4 Inch Wheels], [71.995 in/sec],
  [#image("./brainstorm-gear-ratio/36.60 4 inch 600 RPM.png")], [600 RPM (Blue Cartridge)], [36:60 Gear Ratio\ 3:5 Ratio ], [360 RPM], [4 Inch Wheels], [77.754 in/sec],
  [#image("./brainstorm-gear-ratio/60.36 3.25 200 RPM.png")], [200 RPM (Green Cartridge)], [60:36 Gear Ratio\ 5:3 Ratio], [333 RPM], [3.25 Inch Wheels], [56.723 in/sec],
  [#image("./brainstorm-gear-ratio/36.60 3.25 600 RPM.png")], [600 RPM (Blue Cartridge)], [36:60 Gear Ratio\ 3:5 Ratio], [360 RPM], [3.25 Inch Wheels], [61.261 in/sec],
)

