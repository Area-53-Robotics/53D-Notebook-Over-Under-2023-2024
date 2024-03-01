#import "/template/template.typ": *

#show: create_entry.with(
  title: "Sleds #1",
  type: "identify",
  start_date: datetime(year: 2024, month: 1, day: 17),
  attendance: "Ajibola, Jin, Ishika, Makhi, Rory, Eric",
  designed: "Ajibola",
  witnessed: "Jin",
)

#nb_todo(
  date: datetime(year: 2024, month: 1, day: 17),
  monthly-schedule: "On",
  yearly-schedule: "Behind",
  (
    (true, "Identify the design constraints and goals for the sleds. (Everyone)"),
    (true, "Brainstorm possible sled configurations (Everyone)"),
    (true, "Select the best sled configurations using a decision matrix. (Everyone)"),
    (false, "Create a plan for the construction of the sleds. (Ajibola & Jin)"),
  )
)

#grid(
  columns: 2,

  [
    The quickest way to get from one side of the field to the other is by crossing over the middle barrier. We will need some type of sleds on our robot in order to achieve that goal.

    Sleds work best on low-friction surfaces or structures that allow a robot to slide or move smoothly across. Specifically for this challenge, the sleds need to help the robot glide over the middle barrier.
  ],
  box(height: 35%)[#image("/assets/identify/Identify-sleds.excalidraw.svg")]
)

#tablex(
  columns: (1fr),
  rows: 4,
  header-rows: 1,
  align: left + top,

  cellx(fill: gray, align: center)[*Aspects of Sleds*],
  [*Mobility* - Sleds may be used to enhance a robot's mobility when the drivetrain is interacting with different objects],
  [*Sledding* - Sleds allow the robot to sled over round obstacles, specifically the middle barrier],
  [*Friction* - Reduce friction upon contact which helps us move over obstacles],
)

#tablex(
  columns: (1fr, 1fr),
  rows: 2,
  header-rows: 1,
  align: left + top,

  cellx(fill: green)[*Design Goals*], 
  cellx(fill: red)[*Design Constraints*],
  [
    - Able to lift the robot upward to get across the middle barrier
    - Durable and does not break under medium to low stress
    - Reduce the friction of the drivetrain when crossing obstacles
  ],
  [
    - At all points throughout the game, the robot must satisfy #vex-rule[SG2]: Horizontal expansion is limited to 36”
    - Due to the flexibility of polycarbonate, any side impact on the sleds will cause them to crack or break
  ],
)