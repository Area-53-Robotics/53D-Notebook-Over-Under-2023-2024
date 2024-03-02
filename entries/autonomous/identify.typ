#import "/template/template.typ": *

#show: create_entry.with(
  title: "Autonomous Movement",
  type: "identify",
  start_date: datetime(year: 2024, month: 2, day: 12),
  attendance: "Ajibola, Ishika, Eric, Makhi",
  designed: "Ajibola",
  witnessed: "Ishika",
)

#nb_todo(
  date: datetime(year: 2024, month: 2, day: 12),
  monthly-schedule: "On",
  yearly-schedule: "On",
  (
    (true, "Identify the design aspects, goals, and constraints for the auton. (Everyone)"),
    (true, "Brainstorm possible auton implementations. (Everyone)"),
    (true, "Select the best auton implementation using a decision matrix. (Everyone)"),
    (true, "Identify improvements that can be made to our elevation mechanism (Everyone)"),
  )
)

#grid(
  columns: 2,

  [
    With the state competition coming up (2024/03/02), we wanted to dedicate a design cycle towards autonomous movement this time to get the best autonomous possible. We want to give our best possible performance so we can have a chance at qualifying for worlds, and that necessitates quality performance auton routines.

    Before brainstorming autonomous implementations we could use, we first identified the aspects that would go into autonomous programming.
  ],
  [
    #image("/assets/identify/X'ed Out Controller.svg", height: 3em)
    #v(-1em)
    #image("/assets/identify/identify-drivetrain.excalidraw.svg", height: 11em)
  ]
)

#tablex(
  columns: (1fr),
  rows: 4,
  header-rows: 1,
  align: left + top,

  cellx(fill: gray, align: center)[*Aspects of an Autonomous Routine*],
  [*Auton Bonus* - the team that wins the autonomous phase of a match starts the match ahead with 8 points, which can be a tiebreaker in very close rounds.],
  [*Auton Win Point (AWP)* - any alliance that completes all of the tasks outlined in rule #vex-rule[SC7] gets an AWP, which does not affect the outcome of the round, but does affect their standing in the qualification match rankings.],
  [*Early Scoring* - the 15 second autonomous phase precedes the driver control phase, so teams with good autonomous routines can get ahead in scoring triballs to get into an advantageous position.],
  [*Programming Skills* - 50% of a team's total skills score is determined by their programming skills score, so having a good programming skills autonomous routine is crucial.]
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
    We want three auton routines:
    + *Left (Defensive) Side Auton*:
      - Descores the triball in the match load zone and touches the elevation bar at the end of the autonomous phase to satisfy 2/3 of the requirements for the AWP
      - Scores a pre-load triball into the opposing alliance's goal
      - Scores at least 5-10 points
    + *Right (Offensive) Side Auton*:
      - Scores 1-3 triballs (including our pre-load triball) into our goal to satisfy 1/3 of the requirements for the AWP
      - Scores at least 5-15 points
    + *Programming Skills*:
      - Activates the kicker for about 40 seconds for the drive team to match load triballs onto the kicker to shoot
      - In the last 20 seconds, drives into the offensive zone and scores as many triballs as possible into the goal
  ],
  [
    - The time length of all the autonomous routines must be less than or equal to the maximum autonomous period time:
      - In a match: 15 seconds
      - During Programming Skills: 60 seconds
    - #vex-rule[G11]: The autonomous period (during a match) cannot have any input from the drive team
    - The autonomous program cannot reasonably be expected to perform better than if a driver were to control it
  ],
)