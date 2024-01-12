#import "/template/template.typ": *

#show: create_entry.with(
  title: "Intake #1 - Identify Design Goals and Constraints",
  type: "identify",
  start_date: datetime(year: 2023, month: 10, day: 14),
  attendance: "Ajibola, Ishika, Eric, Rory, Makhi",
)

#nb_todo(
  date: datetime(year: 2023, month: 10, day: 14),
  monthly-schedule: "On",
  yearly-schedule: "On",
  (
    (true, "Identify the design constraints and goals for the intake. (Everyone)"),
    (true, "Determine the mathematical and scientific concepts involved in intake design (Everyone)"),
    (true, "Brainstorm possible configurations for the intake. (Everyone)"),
    (true, "Select the intake configuration using a decision matrix. (Everyone)"),
    (true, "Create a plan for the construction of the intake using CAD. (Ajibola)"),
  )
)

#grid(
  columns: 2,

  [
    With our catapult (outtake) and wings (lateral triball manipulation) mechanisms completed, all that is left is to create an intake to manipulate triballs with precision.

    An intake refers to a mechanism designed to gather or take in game elements during a competition. The intake is a crucial component of a robot's design, and its effectiveness is essential for successfully manipulating and controlling the game objects based on the specific challenges of the season.
  ],
  box(height: 35%)[#image("/assets/identify/identify-intake.svg")]
)

#tablex(
  columns: (1fr),
  rows: 3,
  header-rows: 1,
  align: left + top,

  cellx(fill: gray, align: center)[*Purposes of an Intake*],
  [*Game Element Acquisition* - The primary function of an intake is to grab, collect, or intake game elements from the playing field. This is essential for robots to interact with and manipulate the objects required to score points in a competition.],
  [*Control* - Once the intake gathers the objects, other subsystems take over to perform specific tasks.],
  [*Handling* - The intake allows us to manipulate and handle a single triball at a time. This prevents any unpredictability of its movement.],
)

#colbreak()

#tablex(
  columns: (1fr, 1fr),
  rows: 2,
  header-rows: 1,
  align: left + top,

  cellx(fill: green)[*Design Goals*], 
  cellx(fill: red)[*Design Constraints*],
  [
    - Design an intake mechanism that can quickly and reliably gather triballs from the playing field.
      - Focus on speed, accuracy, and consistency
    - Ensure seamless integration of the intake with the overall robot design
    - Prioritize speed and agility in the intake's movements to minimize cycle times and maximize the number of triballs collected during a match.
  ],
  [
    - The number and type of motors used for the intake are often limited.
    - Must be able to handle the abnormal shape of the triball 
    - The intake design should be compatible with potential alliance partners
    - #vex-rule[SG7] Possession is limited to one Triball
  ],
)