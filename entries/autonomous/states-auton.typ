#import "/template/template.typ": *

#show: create_entry.with(
  title: "States Autonomous Routines",
  type: "program",
  start_date: datetime(year: 2024, month: 3, day: 1),
  attendance: "Ajibola, Jin, Makhi, Ishika, Eric, Rory",
  designed: "Ajibola",
  witnessed: "Ishika",
)

#nb_todo(
  date: datetime(year: 2024, month: 3, day: 2),
  (
    (true, "Program a match autonomous routine (Ajibola)"),
    (true, "Program an autonomous skills routine (Ishika)"),
  )
)

= Left (Close) Side Autonomous Routine
For our match autonomous routine, we wanted to focus on meeting half of the requirements for the Autonomous Win Point. This way, we can increase our chances of getting the AWP during our matches at states, increasing our ranking. Our auton routine descores the triball from the match load station, and ends the autonomous period touching the elevation bar.

#code-header[src/autonomous.cpp]
```cpp
controller.print(0, 0, "Left Elims Auton");
// Sets the robot's current position relative to the middle point of the field
chassis.setPose(-48 - (7.0 / 2), -60, 135); // X, Y, Heading (degrees)
// Lowers the vertical wings, activating them
ToggleVerticalPneumaticWings();
pros::delay(250);
// Turns to the left to begin descoring the match load triball
chassis.turnTo(0, -60, 2000);
pros::delay(250);
// Drives forward to finish descoring the match load triball
chassis.moveToPoint(-45, -60, 2000);
// Lifts the vertical wings, deactivating them
ToggleVerticalPneumaticWings();
pros::delay(250);
// Turns to the elevation bar
chassis.turnTo(0, -60 - 2, 2000);
pros::delay(250);
// Drives towards the elevation bar, stopping in time for the ziptie attached to the intake to touch the elevaiton bar
chassis.moveToPoint(0 - 20, -60 - 2, 2000);
pros::delay(250);
// Outtakes the pre-loaded alliance triball onto the other side of the field
AutonIntake(1000, true);
controller.print(1, 0, "Auton Completed");
```

= Programming Skills
For programming skills, we want to spend the first third of the skills period shooting triballs, and the rest of the skills period scoring those triballs. However, we were not able to completely finish the route. What we have right now shoots the match load triballs and then drives the robot under the elevation bar.

#code-header[src/autonomous.cpp]
```cpp
  controller.print(0, 0, "Programming Skills - New Version");
  // Sets the robot's current position relative to the middle point of the field
  chassis.setPose(-72 + 26.5, -60, 133); // X, Y, Heading (degrees)
  // Pushes the initially placed triballs into the close side goal
  chassis.moveToPose(-60 + 5, -24 + 24, 180, 2500, {.forwards = false, .chasePower = 8});
  // Delays the next command until the drivetrain is done moving
  chassis.waitUntilDone();
  // Re-sets the position coordinates of the robot to account for wheel slippage
  chassis.setPose(-72 + 26.5, -29.25, 180); // X, Y, Heading (degrees)
  // The robot drives backwards into loading position
  chassis.moveToPose(-48, -48 + 3, 70, 2500, {.forwards = false, .chasePower = 8 + 6});
  // Delays the next command until the drivetrain is done moving
  chassis.waitUntilDone();
  // Activates the vertical wings so that they are touching the match load bar
  ToggleVerticalPneumaticWings();
  // 0.5 second delay to allow the wings to fall
  pros::delay(500);
  // Activates the kicker
  KickerMotor.move(127);
  // Allows the kicker to shoot for 25 seconds
  pros::delay(25000);
  // Brakes the kicker
  KickerMotor.brake();
  // 0.5 second delay to allow the kicker to stop moving
  pros::delay(500);
  // Deactivates the vertical wings
  ToggleVerticalPneumaticWings();
  // 0.5 second delay to allow the wings to rise
  pros::delay(500);
  // Turns the robot towards the bottom of the field
  chassis.turnTo( -36,  -60,  2500);
  // Drives the robot towards the bottom of the field
  chassis.moveToPoint(-36, -60, 2500);
  // Turns the robot towards the elevation bar
  chassis.turnTo(0,-60,2500);
  // Drives towards the elevation bar
  chassis.moveToPoint(24, -60, 2500);
  
  controller.print(1, 0, "Skills Complete");
```
