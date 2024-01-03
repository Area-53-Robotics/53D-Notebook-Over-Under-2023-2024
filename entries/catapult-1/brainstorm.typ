#import "/template/template.typ": *

#show: create_entry.with(
  title: "Catapult #1",
  type: "brainstorm",
  start_date: datetime(year: 2023, month: 9, day: 23),
  attendance: "Ajibola, Ishika, Eric, Emma",
)

#nb_todo(date: datetime(year: 2023, month: 9, day: 23), monthly-schedule: "On")[
  + Brainstorm possible configurations for the catapult. (Everyone)
  + Select the best and most versatile catapult option using a decision matrix. (Everyone)
  + Create a plan for the construction of the catapult using CAD. (Ajibola)
]

#tablex(
  columns: (1fr, 1fr, 1fr, 1fr),
  rows: 4,
  header-rows: 1,
  align: left + top,

  cellx()[*Catapult Type*], 
  cellx(fill: green)[*Pros*], 
  cellx(fill: red)[*Cons*],
  cellx(fill: gray)[*Notes*],

  cellx(align: center + horizon)[#image("./brainstorm/cata.svg") #image("./brainstorm/cata-front.svg")],
  [
    - *Angle* - Due to the catapult's nature, it will result in higher trajectories
    - *Familiarity* - The majority of the club has constructed this catapult before
  ],
  [
    - *Speed* - This version has a long rewind time, making fast cycles difficult
    - *Maintenance* - The moving parts of a catapult, including the release mechanism and tensioning system, may experience wear over time.
  ],
  [
    - Very easy to teach the novice builders to make
  ],

  cellx(align: center + horizon)[#image("./brainstorm/scata.svg") #image("./brainstorm/scata-front.svg")],
  [
    - *Powerful* - Uses two sets of rubber bands on each side instead of one
    - *Accuracy* - Higher accuracy than the normal catapult due to its unique structure
    - *Alignment* - The main benefit is that it keeps the alignment of object placed the same
  ],
  [
    - *Space* - Incredibly bulky and wide. 
    - *Difficulty* - The Scata is a mixed hybrid of a four-bar and catapult. It will be harder to teach the novices how to build it
  ],
  [
      - Very impractical for this season because of the abnormal triball shape
  ],
  
  cellx(align: center + horizon)[#image("./brainstorm/low-cata.svg") #image("./brainstorm/low-cata-front.svg")],
  [
    - *Intaking* - Having the catapult low to the ground helps with intaking to the catapult
    - *Trajectory* - The low angle allows for steeper trajectory, creating the possibility of shooting directly into the goal.
    - *Descoring* - With a low cata our robot would remain short enough to go under the opposing teams nets to descore triballs.
  ],
  [
    - *Block* - It is a lot easier for other teams to block our shots because of how low it is
    - *Tension* - Due to the nature of rubber bands, having the towers being so close to the ground will make it more challenging to tension
  ],
  [],
)