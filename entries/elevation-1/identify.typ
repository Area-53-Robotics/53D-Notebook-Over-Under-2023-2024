#import "/template/template.typ": *

#show: create_entry.with(
  title: "Elevation #1",
  type: "identify",
  start_date: datetime(year: 2024, month: 1, day: 18),
  attendance: "Ajibola, Jin, Ishika, Makhi, Eric, Rory",
  designed: "Jin",
  witnessed: "Makhi",
)

#nb_todo(
  date: datetime(year: 2024, month: 1, day: 31),
  monthly-schedule: "On",
  yearly-schedule: "Behind",
  (
    (true, "Identify the design constraints and goals for the elevation mechanism. (Everyone)"),
    (true, "Determine the mathematical and scientific concepts involved in elevation (Everyone)"),
    (true, "Brainstorm possible configurations for the kicker. (Everyone)"),
    (true, "Select the best kicker configuration using a decision matrix. (Everyone)"),
    (false, "Create a plan for the construction of the kicker using CAD. (Ajibola & Jin)"),
    (true, "Build the kicker platform. (Everyone)"),
  )
)

At the end of the match, we can gain additional points at the end of the match when we are not touching the ground. If we can have a quick and consistent elevation (also referred to as "hang"), we can score up to 20 extra points in our matches.

#tablex(
  columns: 2,
  rows: 3,

  cellx(align: center, fill: green)[
    Successful robot elevation
  ],
  cellx(align: center, fill: red)[
    Unsuccessful robot elevation
  ],
  image("/assets/identify/identify-correct-hang.excalidraw.svg"),
  image("/assets/identify/identify-incorrect-hang.excalidraw.svg"),
  [
    - The robot is not contacting the yellow elevation bar cap
    - The robot is not contacting any other field element but the elevation bar
    - The robot is not contacting any other alliance partner that isn't elevated
  ],
  [
    - The robot is touching the yellow elevation bar cap
    - The robot is making contact with other field elements that isn't the elevation bar
    - The robot is making contact with other robots that isn't elevated
  ]
)

#colbreak()

Elevation point system:
#tablex(
  columns: (1fr, 1fr),
  align: center + horizon,
  header-rows: 1,

  cellx(fill: gray)[*Achievement*], cellx(fill: gray)[*Point Value*],
  [Elevation - Top Tier], [20 Points],
  [Elevation - 2nd Tier], [15 Points],
  [Elevation - 3rd Tier], [10 Points],
  [Elevation - 4th Tier], [5 Points]
)

#tablex(
  columns: (1fr),
  rows: 3,
  header-rows: 1,
  align: left + top,

  cellx(fill: gray, align: center)[*Purposes of Elevation*],
  [
    *Additional Points* - Elevation is one of the objectives in the game but isn't required. However, attempting a successful elevation can net at most 20 points.
  ],
  [
    *Alliance Strategy* - Since elevation is rewarded by the overall tier of all robots in the match, teams can design their robots to secure the highest tier. Alliances can cooperate to elevate in different methods (ex. one elevates using the high bar while one elevates using the barrier) to score the most points possible.
  ],
  [
    *Offensive Scoring* - Elevation is considered an offensive objective. In the last 30 seconds, elevation is “protected”, meaning that a team attempting to elevate cannot be interfered with.
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
    - To fully lift the robot off the floor
    - Being able to remain balanced on the elevation bar or middle bar
  ],
  [
    - Needs to have enough torque to lift up the robot
    - A heavier robot requires more torque 
    - The center of gravity must be at the middle to balance property
    - The elevation mechanism cannot require continuous power application through a motor, because motors are disabled at the end of the round
      - This constraint will be the most limiting as well as the most important, as it concerns the safety of our robot
  ],
)