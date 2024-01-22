#import "/template/template.typ": *

#show: create_entry.with(
  title: "Wings #1",
  type: "brainstorm",
  start_date: datetime(year: 2023, month: 9, day: 23),
  attendance: "Ajibola, Ishika, Eric, Makhi",
  designed: "Ajibola",
  witnessed: "Makhi",
)

#nb_pro_con(
  name: "Horizontal Pneumatic",
  image: image("./brainstorm/Horizontally penumatic wings.svg"),
  pros: [
    - *Speed* - Using pneumatics, the pressurized air allows for quick extensions
    - *Weight* - This wing design allows for light and agile designs
    - *Energy* - Does not require motors to operate
    - *Compactness* - The most compact of the designs we came up with
  ],
  cons: [
    - *Fragile* - Lacks power to resistance force pushing against the wings
    - *Leaks* - Pneumatics are at risk of leaking. This can affect the consistency of the wings
    - *Power Loss* - WIth each wing usage, the canister loses air. Limited wing usage
  ],
  notes: [
    - Could reliably work this season
  ],
)

#nb_pro_con(
  name: "Horizontal Motorized",
  image: image("./brainstorm/Motorized horizontal wings.svg"),
  pros: [
    - *Strength* - It is a linear horizontal expansion, so it cannot be pushed back
  ],
  cons: [
    - *Energy* - Requires 2 motors to function
    - *Complexity* - Difficulty building. No one is really familiar with rails on the team
    - *Weight* - The hatching pattern of the wings added to the motors creates a lot of weight
  ],
  notes: [
    - Not reliable for this season
  ],
)

#colbreak()

#nb_pro_con(
  name: "Vertical Motorized",
  image: [
    #image("./brainstorm/Motorized vertical expansion.svg")
    #image("./brainstorm/Motorized vertical wings.svg")
  ],
  pros: [
    - *Height* - Due to it being vertical, we can use it to our advantage as a blocker
  ],
  cons: [
    - *Friction* - We risk running into a friction problem because of the screw joints needed to connect the c-channel
    - *Energy* - requires four motors to do
    - *Strength* - Incredibly weak and easy to bend or push around
  ],
  notes: [
    - Not reliable for this season
  ],
)