#import "/template/entries.typ": create_entry
#import "/template/widgets.typ": *
#include "/template/codly.typ"

#create_entry(
  title: "Wings #1",
  type: "select",
  start_date: datetime(year: 2023, month: 9, day: 23),
  attendance: "Ajibola, Ishika, Eric, Emma",
  [
    #nb_todo(date: datetime(year: 2023, month: 9, day: 23), schedule: "On Schedule")[
      + Select the wings configuration using a decision matrix. (Everyone)
    ]

    #nb_admonition(type: "select", title: "Decision Matrix")[
      *Ranking Criteria:*
      - Speed (0 - 4) -
      - Consistency (0 - 4) -
      - Energy Efficiency (0 - 4) -
      - Strength (0 - 4) -

      *Number Key:*
      - 4 - Excellent
      - 3 - Fair
      - 2 - Poor
      - 1 - Very Poor
      - 0 - Incapable
    ]

    #tablex(
      columns: (1fr, 1fr, 1fr, 1fr),
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

      [], [Horizontal Pneumatic], [Horizontal Motorized], [Vertical Motorized],
      [Speed], [4], [0], [0],
      [Consistency], [2], [0], [0],
      [Energy Efficiency], [3], [0], [0],
      [Strength], [3], [0], [0],
      [Score], cellx(fill: green.darken(20%))[12], cellx(fill: red.darken(50%))[0], cellx(fill: red.darken(50%))[0]
    )
  ]
)