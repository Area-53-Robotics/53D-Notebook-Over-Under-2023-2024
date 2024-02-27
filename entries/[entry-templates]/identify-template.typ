#import "/template/template.typ": *

#show: create_entry.with(
  title: "",
  type: "identify",
  start_date: datetime(year: 2023, month: 7, day: 15),
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
    (false, "Create a plan for the construction of the kicker platform using CAD. (Ajibola & Jin)"),
  )
)


#grid(
  columns: 2,

  [
    --
  ],
  box(height: 25%)[#image("/assets/identify/identify-drivetrain.excalidraw.svg")]
)

#tablex(
  columns: (1fr),
  rows: 4,
  header-rows: 1,
  align: left + top,

  cellx(fill: gray, align: center)[*Aspects of the Subsystem*],
  [*--* - e],
)

#tablex(
  columns: (1fr, 1fr),
  rows: 2,
  header-rows: 1,
  align: left + top,

  cellx(fill: green)[*Design Goals*], 
  cellx(fill: red)[*Design Constraints*],
  [
    - --
  ],
  [
    - --
  ],
)