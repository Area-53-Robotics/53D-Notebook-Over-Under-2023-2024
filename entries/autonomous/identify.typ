#import "/template/template.typ": *

#show: create_entry.with(
  title: "Autonomous Movement",
  type: "identify",
  start_date: datetime(year: 2024, month: 1, day: 25),
  attendance: "Ajibola, Ishika, Eric, Makhi",
  designed: "Ajibola",
  witnessed: "Ishika",
)

#nb_todo(
  date: datetime(year: 2023, month: 7, day: 15),
  monthly-schedule: "On",
  yearly-schedule: "On",
  (
    (true, "Identify the design constraints and goals for the drivetrain. (Everyone)"),
    (true, "Determine the mathematical and scientific concepts involved in drivetrain design (Everyone)"),
  )
)


#grid(
  columns: 2,

  [
    With the signature event coming up (2024/02/03), we wanted to dedicate a design cycle towards autonomous movement this time to get the best autonomous possible. We want to give our best possible performance at our first signature event, and that necessitates quality performance auton routines.

    There are multiple methods of programming an autonomous, ranging from DIY implementations to libraries made by other teams. Before brainstorming implementations we could use, we first identified the aspects that would go into autonomous programming.
  ],
  box(height: 25%)[#image("/assets/identify/identify-drivetrain.excalidraw.svg")]
)

#tablex(
  columns: (1fr),
  rows: 4,
  header-rows: 1,
  align: left + top,

  cellx(fill: gray, align: center)[*Aspects of an Auton Routine*],
  [*Auton Bonus* - the team that wins the autonomous phase of a match starts the match ahead with 8 points, which can be a tiebreaker in very close rounds.],
  [*Auton Win Point (AWP)* - any alliance that completes all of the tasks outlined in rule #vex-rule[SC7] gets an AWP, which does not affect the outcome of the round, but does affect their standing in the qualification match rankings.],
  [*Early Scoring* - the 15 second autonomous phase precedes the driver control phase, so teams with good autonomous routines can get ahead in scoring triballs to get into an advantageous position.],
  [*Programming Skills* - 50% of a team's total skills score is determined by their programming skills score, so having a good programming skills auton is crucial.]
)

#tablex(
  columns: (1fr, 1fr),
  rows: 2,
  header-rows: 1,
  align: left + top,

  cellx(fill: green)[*Design Goals*], 
  cellx(fill: red)[*Design Constraints*],
  [
    We want three auton routines:
    + *Left (Defensive) Side Auton* - scores 
  ],
  [
    - It must fit within the 18-inch cubed limit.
      - In order to fit other subsystems, the drivetrain will have to be constrained further than this. These are the preliminary size limits we came up with:
        - Length: 16 in
        - Width: 16 in
        - Height: 6 in
    - The total power drawn from the motors in the drivetrain cannot exceed 88W.
  ],
)