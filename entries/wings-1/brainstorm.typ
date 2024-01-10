#import "/template/template.typ": *

#show: create_entry.with(
  title: "Wings #1",
  type: "brainstorm",
  start_date: datetime(year: 2023, month: 9, day: 23),
  attendance: "Ajibola, Ishika, Eric, Makhi",
)

#nb_todo(
  date: datetime(year: 2023, month: 9, day: 23),
  monthly-schedule: "On",
  (
    (true, "Brainstorm possible configurations for the wings. (Everyone)"),
  )
)

#tablex(
  columns: (1fr, 1fr, 1fr, 1fr),
  rows: 4,
  header-rows: 1,
  align: left + top,

  cellx()[*Wings*], 
  cellx(fill: green)[*Pros*], 
  cellx(fill: red)[*Cons*],
  cellx(fill: gray)[*Notes*],

  cellx(align: center + horizon)[#image("./brainstorm/Horizontally penumatic wings.svg")],
  [
    - *Speed* - Using pneumatics, the pressurized air allows for quick extensions
    - *Weight* - This wing design allows for light and agile designs
    - *Energy* - Doesn't require motors to operate
    - *Compactness* - The most compact of the designs we came up with
  ],
  [
    - *Fragile* - Lacks power to resistance force pushing against the wings
    - *Leaks* - Pneumatics are at risk of leaking. This can affect the consistency of the wings
    - *Power Loss* - WIth each wing usage, the canister loses air. Limited wing usage
  ],
  [
    - Could reliably work this season
  ],

  cellx(align: center + horizon)[#image("./brainstorm/Motorized horizontal wings.svg")],
  [
    - *Strength* - It is a linear horizontal expansion, so it cannot be pushed back
  ],
  [
    - *Energy* - Requires 2 motors to function
    - *Complexity* - Difficulty building. No one is really familiar with rails on the team
    - *Weight* - The hatching pattern of the wings added to the motors creates a lot of weight
  ],
  [
    - Not reliable for this season
  ],
  
  cellx(align: center + horizon)[#image("./brainstorm/Motorized vertical expansion.svg")
  #image("./brainstorm/Motorized vertical wings.svg")],
  [
    - *Height* - Due to it being vertical, we can use it to our advantage as a blocker
  ],
  [
    - *Friction* - We risk running into a friction problem because of the screw joints needed to connect the c-channel
    - *Energy* - requires four motors to do
    - *Strength* - Incredibly weak and easy to bend or push around
  ],
  [
    - Not reliable for this season
  ],
)