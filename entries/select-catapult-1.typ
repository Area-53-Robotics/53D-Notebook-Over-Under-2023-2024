#import "/template/entries.typ": create_entry
#import "/template/widgets.typ": *
#include "/template/codly.typ"

#create_entry(
  title: "Catapult #1",
  type: "select",
  start_date: datetime(year: 2023, month: 9, day: 23),
  attendance: "Ajibola, Ishika, Eric, Emma",
  [

    #nb_admonition(type: "select", title: "Decision Matrix")[
      *Ranking Criteria:*
      - Speed (0 - 4) - The cycle time of the catapult option.
      - Range (0 - 4) - How far shots made by this capault option can go.
      - Power (0 - 4) - How much force the catapult generates when shooting.
      - Difficulty getting blocked (0 - 4) - If the catapult option will be able to avoid blockers. 
      - Rapid Fire Capability (0 - 4) - How fast the catapult can shoot when set to shoot automatically. Useful for skills runs.

      *Number Key:*
      - 4 - Excellent
      - 3 - Fair
      - 2 - Poor
      - 1 - Very Poor
      - 0 - Incapable
    ]
  ]
)