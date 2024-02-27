#import "/template/template.typ": *

#show: create_entry.with(
  title: "Kicker #1 - Platform",
  type: "identify",
  start_date: datetime(year: 2024, month: 1, day: 14),
  attendance: "Ajibola, Jin, Ishika, Makhi, Rory, Eric",
  designed: "Ajibola",
  witnessed: "Jin",
)

#nb_todo(
  date: datetime(year: 2024, month: 1, day: 14),
  monthly-schedule: "On",
  yearly-schedule: "Behind",
  (
    (true, "Identify the design constraints and goals for the kicker. (Everyone)"),
    (true, "Brainstorm possible kicker platforms (Everyone)"),
    (true, "Select the best kicker platform using a decision matrix. (Everyone)"),
    (false, "Create a plan for the construction of the kicker platform. (Ajibola & Jin)"),
  )
)


#grid(
  columns: 2,

  [
    A kicker platform allows us to set the orientation of the triball when we place it down. Having a secure kicker platform can dramatically improve the grouping of our triballs. Most teams use lexan platforms or stand offs to minimize the weight of the kicker platform as well.
  ],
  box(height: 25%)[#image("/assets/identify/identify-kicker-platform.excalidraw.svg")]
)

#tablex(
  columns: (1fr),
  rows: 4,
  header-rows: 1,
  align: left + top,

  cellx(fill: gray, align: center)[*Aspects of the Subsystem*],
  [*Scoring* - A kicker platform may be designed to assist the kicker in accurately shooting or kicking triballs into designated scoring areas.],
  [*Control* - The kicker platform may provide precise control over the trajectory, speed, and direction of launched objects, allowing for strategic gameplay and scoring opportunities.],
  [*Agility* - Integrating a kicker platform into a robot's design can streamline and enhance match loading speed.],
)

#tablex(
  columns: (1fr, 1fr),
  rows: 2,
  header-rows: 1,
  align: left + top,

  cellx(fill: green)[*Design Goals*], 
  cellx(fill: red)[*Design Constraints*],
  [
    - Provide a constant orientation for the triballs when they are placed on the platform
      - We don't want different orientations because different angles can affect the triball's tragectory
    - Allow for smooth placement of the triballs
    - Prevent the triballs from falling off the kicker
  ],
  [
    - Must be compact enough to fit onto the kicker
    - Cannot be too bulky, otherwise it will slow down the robot
  ],
)