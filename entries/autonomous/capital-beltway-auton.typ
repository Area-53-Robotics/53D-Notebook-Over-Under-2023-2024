#import "/template/template.typ": *

#show: create_entry.with(
  title: "Autonomous Programming - Capital Beltway",
  type: "program",
  start_date: datetime(year: 2023, month: 12, day: 15),
  attendance: "Ajibola, Ishika, Makhi, Eric, Rory",
  designed: "Ishika",
  witnessed: "Ajibola",
)

We had more time available to us for auton programming today than we did when making the previous auton in our #nb_entry_reference(date: datetime(year: 2023, month: 12, day: 1), type: "program", title: "Autonomous Programming"). We took advantage of this time to make a higher scoring autonomous.

During the Hereford Stampede Tournament, we noticed that a lot of teams had simple auton routines that pushed a triball into the goal. We figured that some teams at the tournament tomorrow may have an auton like this, and possibly wings to descore the match load triball. If this is the case, then we can get the AWP by scoring a triball into our goal. So we decided to make an auton that can accomplish this.

The auton we created scores two triballs into the goal in about 15 seconds, scoring a total of 10 points if executed without issues.

#gridx(
  columns: (60%, 40%),
  row-gutter: 7pt,
  align: horizon,

  [
    #align(center)[*53D_OverUnder/src/autonomous.cpp*]
    ```cpp
    // Drives the robot towards the middle of the goal
    AutonDrive(7.5, 1300);
    // Turns the robot to face the goal
    AutonTurn('R', 1.5, 1300);
    // Outtakes the pre-load triball
    AutonIntake(1000, true);
    // Pushes the pre-load triball into the goal
    AutonDrive(1.2, 1300);
    // Disengages the pre-load triball
    AutonDrive(-1, 1300);
    ```
  ],
  [#image("./capital-beltway-auton/1.excalidraw.svg")],

  [
    #codly-offset(offset: 10)
    ```cpp
    // Turns to face the triball in the middle of the field
    AutonTurn('R', 3.2, 1600);
    // Drives toward the triball
    AutonDrive(3.3, 1300);
    // Intakes the triball
    AutonIntake(1000, false);
    ```
  ],
  [#image("./capital-beltway-auton/2.excalidraw.svg")],

  [
    #codly-offset(offset: 16)
    ```cpp
    // Turns to face the goal
    AutonTurn('R' , 3.2, 1300);
    // Drives towards the goal
    AutonDrive(3.3, 1300);
    // Outtakes the triball
    AutonIntake(1000, true);
    // Pushes the triball into the goal
    AutonDrive(0.5, 1300);
    // Disengages the triball
    AutonDrive(-1.5, 1300);
    ```
  ],
  [#image("./capital-beltway-auton/3.excalidraw.svg")],
)

#nb_admonition(type: "note")[
  We did not have enough time to sufficiently test the new auton. We plan to take some time before inspection at the tournament tomorrow to resolve any major issues.
]