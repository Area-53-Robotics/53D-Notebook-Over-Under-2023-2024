#import "/template/template.typ": *

#show: create_entry.with(
  title: "Kicker #1",
  type: "identify",
  start_date: datetime(year: 2023, month: 11, day: 11),
  attendance: "Ajibola, Ishika, Makhi, Eric, Rory",
)

#nb_todo(
  date: datetime(year: 2023, month: 11, day: 11),
  monthly-schedule: "On",
  yearly-schedule: "On",
  (
    (true, "Identify the design constraints and goals for the kicker. (Everyone)"),
    (true, "Brainstorm possible configurations for the kicker. (Ajibola, Makhi, & Ishika)"),
    (true, "Select the best kicker configuration using a decision matrix. (Ajibola, Makhi, & Ishika)"),
    (false, "Create a plan for the construction of the kicker using CAD. (Ajibola)"),
  )
)

#grid(
  columns: 2,

  [
    After reviewing videos of competitive teams, we found that the number 1 team #footnote[5203G Gremlin Sugar Rush Pits & Parts Interview: https://www.youtube.com/watch?v=lIZKrpuLhwg] of the Sugar Rush signature event used a kicker.

    A kicker is a mechanism designed to launch or propel triballs, typically with a quick and forceful action in a kicking motion.
  ],
  box(height: 25%)[#image("/assets/identify/identify-kicker.excalidraw.svg")]
)

#tablex(
  columns: (1fr),
  rows: 3,
  header-rows: 1,
  align: left + top,

  cellx(fill: gray, align: center)[*Purposes of Wings*],
  [
    *Scoring* - A kicker allows for the release or placement of game elements in scoring zones such as the goals.
  ],
  [
    *Precise Shots* - A kicker allows for the precise release or placement of game elements. This precision is crucial for accurately scoring points in a designated zone in a quick cycle, or for coordination with alliance partners.
  ],
  [
    *Efficiency* - Kickers are designed for rapid and efficient gameplay. They enable a robot to engage with game elements swiftly, reducing the time required to complete scoring cycles and increasing the overall efficiency of the robot during a competition. 
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
    - Close grouping
    - Minimize the time between scoring attempts, maximizing the robot's cycle time.
    - Achieve consistent and reliable performance from the kicker throughout the duration of a match
  ],
  [
    - The robot must satisfy #vex-rule[R12a] The combined power of all motors (11W & 5.5W) must not exceed 88W
    - It must fit within the 18-inch cubed limit
    - It must be able to work regardless of the different possible angles and positions the triball could be sitting in
  ],
)