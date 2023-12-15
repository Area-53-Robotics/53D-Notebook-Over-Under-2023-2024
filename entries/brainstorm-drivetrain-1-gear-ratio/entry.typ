#import "/template/entries.typ": create_entry
#import "/template/widgets.typ": *
#include "/template/codly.typ"

#create_entry(
  title: "Drivetrain #1 - Gear Ratio",
  type: "brainstorm",
  start_date: datetime(year: 2023, month: 7, day: 28),
  attendance: "Ajibola, Ishika, Eric, Emma",
  [
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

      [#image("./200 RPM & 5-3 Ratio.png")], [200 RPM (Green Cartridge)], [60:36 Gear Ratio\ 5:3 Ratio], [333 RPM], [4 Inch Wheels], [71.995 in/sec],
      [#image("./600 RPM & 3-5 Ratio.png")], [600 RPM (Blue Cartridge)], [36:60 Gear Ratio\ 3:5 Ratio ], [360 RPM], [4 Inch Wheels], [77.754 in/sec],
      [#image("./200 RPM & 5-3 Ratio & 3.25 Inch.png")], [200 RPM (Green Cartridge)], [60:36 Gear Ratio\ 5:3 Ratio], [333 RPM], [3.25 Inch Wheels], [56.723 in/sec],
      [#image("./600 RPM & 3-5 Ratio & 3.25 Inch.png")], [600 RPM (Blue Cartridge)], [36:60 Gear Ratio\ 3:5 Ratio], [360 RPM], [3.25 Inch Wheels], [61.261 in/sec],
    )
  ]
)