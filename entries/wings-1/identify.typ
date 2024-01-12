#import "/template/template.typ": *

#show: create_entry.with(
  title: "Wings #1 - Identify Design Goals and Constraints",
  type: "identify",
  start_date: datetime(year: 2023, month: 9, day: 22),
  attendance: "Ajibola, Ishika, Eric, Rory",
)

#nb_todo(
  date: datetime(year: 2023, month: 9, day: 22),
  monthly-schedule: "On",
  yearly-schedule: "Ahead",
  (
    (true, "Identify the design constraints and goals for the wings. (Everyone)"),
    (true, "Determine the mathematical and scientific concepts involved in wing design (Everyone)"),
  )
)

#grid(
  columns: 2,

  [
    During our team talk about wing design, everyone shared their thoughts. We had a big and open discussion where everyone could say what they thought about the best way to design our project's wings. It was a team effort, and everyone had a chance to speak up and share their ideas.

    Wings are a special subsystem commonly found on each side of the drivetrain. Their primary function is to expand outwards, effectively increasing the total width of the robot. This allows us to push as many triballs as possible. This is especially useful after all match loads have been fired, causing an abundance of triballs on the field.
  ],
  box(height: 35%)[#image("/assets/identify/identify-wings.svg")]
)

#tablex(
  columns: (1fr),
  rows: 3,
  header-rows: 1,
  align: left + top,

  cellx(fill: gray, align: center)[*Purposes of Wings*],
  [*Quantity* - the wings' main purpose is to push as many triballs as possible. Due to the number of triballs in this game, it is important to have control of as many game pieces as possible.],
  [*Scoring* - wings allows for control over the release of game elements. This can help us push and control as many triballs as possible on the field and place them on our side of the match for scoring. 
  ],
)

#tablex(
  columns: (1fr, 1fr),
  rows: 2,
  header-rows: 1,
  align: left + top,

  cellx(fill: green)[*Design Goals*], 
  cellx(fill: red)[*Design Constraints*],
  [
    - The wings have to be stable
    - The wings cannot be pushed back when pushing triballs
    - Need to hold their own weight when other team's bots ram into the wings
    - The wings need to be responsive when the driver activates them
    - The wings need to be long enough to plow as much triballs as possible
  ],
  [
    - At all points throughout the game, the robot must satisfy #vex-rule[SG2]: Horizontal expansion is limited to 36”
    - Because of the angle the wings need to extend out from, leverage will be a serious problem
      - The further away the extension mechanism is away from the pivot point, the more force required to push it out
      - The wings need to be light. However, making it light will sacrifice the wing's strength. 
  ],
)