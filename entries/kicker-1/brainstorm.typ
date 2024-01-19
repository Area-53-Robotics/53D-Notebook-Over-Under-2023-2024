#import "/template/template.typ": *

#show: create_entry.with(
  title: "Kicker #1",
  type: "brainstorm",
  start_date: datetime(year: 2023, month: 11, day: 11),
  attendance: "Ajibola, Ishika, Makhi, Eric, Rory",
)

5203G Gremlin utilized a normal kicker, but we wanted to explore other possible options before settling on a kicker design to select.

#nb_pro_con(
  name: "Kicker",
  image: image("./brainstorm/Kicker.excalidraw.svg"),
  pros: [
    - *Simplicity* - Simpler compared to other kickers and more complex outtake mechanisms
    - *Fast Cycle Time* - A well-tuned kicker can result in a fast cycle time, enabling the robot to score multiple times within a short period
  ],
  cons: [
    - *Defense* - Kickers may be more susceptible to defense from opponent robots, as they typically require a clear line of sight to the scoring elements
  ],
  notes: [
    - The team who won the Sugar Rush Signature Event, 5203G Gremlin, had this kicker design
  ],
)

#nb_pro_con(
  name: "Double Kicker",
  image: image("./brainstorm/Double kicker.excalidraw.svg"),
  pros: [
    - *Failsafe* - Having two kickers works as a failsafe. If one kicker encounters issues or malfunctions during a match, the other can still be operational, ensuring a more reliable scoring capability
    - *Faster Cycle* - Having two kickers can decrease the cycle time, allowing for more triballs to be launched
  ],
  cons: [
    - *Higher Power Consumption* - Operating two kickers may lead to higher power consumption
  ],
  notes: [
    - We don't have enough motors available to construct this kicker
    - The faster cycle time can only be fully utilized if the drive team members can match load fast enough to match the kickers' pace
  ],
)

#colbreak()

#nb_pro_con(
  name: "Upside Down Kicker",
  image: image("./brainstorm/Upside down kicker.excalidraw.svg"),
  pros: [
    - *Different Scoring Opportunities* - the inverted orientation of the kicker may offer different scoring opportunities compared to traditional kickers.
    - *Improved Stability* - Mounting the kicker upside-down may contribute to a lower center of gravity, potentially improving the robot's stability. 
  ],
  cons: [
    - *Complex Design* - Implementing an upside-down kicker introduces complexity in the design and construction of the robot
    - *Limited Adaptability* - An upside-down kicker may not be as adaptable to all game scenarios
  ],
  notes: [
    - Might be harder to build since most of the team are newer builders
  ],
)