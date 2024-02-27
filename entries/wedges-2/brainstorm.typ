#import "/template/template.typ": *

#show: create_entry.with(
  title: "Wedges #2",
  type: "brainstorm",
  start_date: datetime(year: 2024, month: 1, day: 15),
  attendance: "Ajibola, Jin, Ishika, Makhi, Eric, Rory",
  designed: "Jin",
  witnessed: "Ajibola",
)

#nb_todo(
  date: datetime(year: 2024, month: 1, day: 15),
  monthly-schedule: "On",
  yearly-schedule: "Behind",
  (
    (true, "Brainstorm possible wedges (Everyone)"),
    (true, "Select the best wedges using a decision matrix. (Everyone)"),
    (false, "Create a plan for the construction of the wedges. (Ajibola & Jin)"),
  )
)

Similar to when we brainstormed kicker platforms, we came up with ideas for the second iteration of the wedges based on our general observations from recent competitions.

#nb_pro_con(
  name: "Aggressive Wedges",
  image: image("./brainstorm/Aggressive wedges 2.excalidraw.svg"),
  pros: [
    - *Defensive Capability:* Effective at playing defense during matches
    - *Disruption:* Can disrupt the scoring attempts of opposing robots by offsetting their balance
  ],
  cons: [
    - *Limited Offense:* Aggressive wedges prioritize defensive capabilities over offensive scoring mechanism
  ],
  notes: [
    - Very popular this season
    - It could interfere with us going over the middle bar
  ],
)

#nb_pro_con(
  name: "Passive Wedges",
  image: image("./brainstorm/Passive Wedges 2.excalidraw.svg"),
  pros: [
    - *Triball Control:* Passive wedges help the robot gain even more control over the triballs
    - *Simplicity:* Simple and easy to implement
  ],
  cons: [
    - *Lack of Versatility:* Designed for specific tasks or scenarios and may lack versatility compare to other mechanisms
  ],
  notes: [
    - It could interfere with us going over the middle bar
    - We aren't sure if we have enough space in the back to make them
  ],
)

#colbreak()

#nb_pro_con(
  name: "Wing Wedges",
  image: image("./brainstorm/Wing wedges.excalidraw.svg"),
  pros: [
    - *Large Surface Area:* Since these sleds are on the wings, they have a large surface area and increase in surface area when the wings are activated
    - *Versatility:* Can act as both passive and aggressive sleds
  ],
  cons: [
    - *High Maintenance:* Because this design is the most complex, it also requires the most maintenance
  ],
  notes: [
    - We can use these sleds to help descore from under the opponent's goal
  ],
)