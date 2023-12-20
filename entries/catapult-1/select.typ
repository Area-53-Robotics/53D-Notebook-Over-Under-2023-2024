#import "/template/template.typ": *

#show: create_entry.with(
  title: "Catapult #1",
  type: "select",
  start_date: datetime(year: 2023, month: 9, day: 23),
  attendance: "Ajibola, Ishika, Eric, Emma",
)

#nb_admonition(type: "select", title: "Decision Matrix")[
  *Ranking Criteria:*
  - Speed - The cycle time of the catapult option.
  - Range - How far shots made by this capault option can go.
  - Power - How much force the catapult generates when shooting.
  - Difficulty getting blocked - If the catapult option will be able to avoid blockers. 
  - Rapid Fire Capability - How fast the catapult can shoot when set to shoot automatically. Useful for skills runs.
  - Goal Scoring Capability - How often the catapult can shoot into the goal from their non-offensive zone.

  *Number Key:*
  - 4 - Excellent
  - 3 - Fair
  - 2 - Poor
  - 1 - Very Poor
  - 0 - Incapable
]

#tablex(
  columns: (1fr, 1fr, 1fr, 1fr),
  rows: 8,
  align: center + horizon,

  map-cells: cell => {
    
  let fill-color = []
    if cell.x > 0 and cell.y > 0 and cell.y < 7 {
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

  [], [Catapult], [Scata], [Low Cata],
  [Speed], [2], [0], [2],
  [Range], [4], [0], [3],
  [Power], [3], [0], [3],
  [Difficulty getting blocked], [4], [0], [1],
  [Rapid Fire Capability], [3], [0], [3],
  [Goal Scoring Capability], [0], [0], [4],
  [Score], cellx(fill: green.darken(20%))[16], cellx(fill: red.darken(50%))[0], cellx(fill: green.darken(20%))[16]
)

#nb_admonition(type: "note")[
  The scata was not scored because of how impractical it is for this season.
]

#nb_admonition(type: "select")[
  Despite the tie, we chose the low catapult because of its ability to descore. We believe that with enough power, it will consistently be able to fire triballs directly into the goal. This would give us versatility on both offense and defense.
]