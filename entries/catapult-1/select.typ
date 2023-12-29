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

#nb_decision_matrix(
  criteria: (
    ("Speed", 5),
    ("Range", 5),
    ("Power", 3),
    ("Difficulty Getting Blocked", 4),
    ("Rapid Fire Capability", 5),
    ("Goal Scoring Capability", 4),
    ),
  choices: (
    ("Catapult", 2, 4, 4, 4, 3, 0),
    ("Scata", 0, 0, 0, 0, 0, 0),
    ("Low Catapult", 2, 3, 3, 2, 3, 4),
    ),
)

#nb_admonition(type: "note")[
  The scata was not scored because of how impractical it is for this season.
]

#nb_admonition(type: "select", title: "Final Selection")[
  Despite the tie, we chose the low catapult because of its ability to descore. We believe that with enough power, it will consistently be able to fire triballs directly into the goal. This would give us versatility on both offense and defense.
]