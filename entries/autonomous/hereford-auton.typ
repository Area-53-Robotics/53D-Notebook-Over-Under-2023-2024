#import "/template/template.typ": *

#show: create_entry.with(
  title: "Autonomous Programming - Hereford Zone",
  type: "program",
  start_date: datetime(year: 2023, month: 12, day: 1),
  attendance: "Ajibola, Ishika, Eric, Rory, Makhi"
)

#grid(
  columns: 2,

  [
    We had a lot less time than we originally planned to program an auton for the Hereford Zone Stampede tournament, so we decided to make a simple auton that pushes a triball into the goal. An advantage of this auton is that it works regardless of whether we start on the offensive or defensive side, so our alliance partners can perform their auton on whichever side suits them best.
  ],
  image("/assets/autonomous/hereford-auton.excalidraw.svg")
)

Unfortunately we ran into a big hurdle when attempting to program autonomous. 

```cpp
/*
  Brief: The robot drives the given length at the given velocity

  Parameters:
  - length - A decimal value representing how many wheel rotations the drivetrain should move
  - velocity - A positive value from 0 - 600 reprenting how fast the drivetrain should move in RPM
*/
void drive(double length, unsigned short int velocity) {
  // Delays the function until the drivetrain has stopped moving
	while(LMotors.get_actual_velocity(1) > 0 || RMotors.get_actual_velocity(1) > 0) pros::delay(1);
  // Drives the robot forward the given length at the given velocity
	Drivetrain.move_relative(length, velocity);
  // Delays the rest of the auton until the drivetrain has stopped moving
	while(Drivetrain.get_actual_velocity(1) > 0) pros::delay(1);
}

/*
  Brief: The robot turns in the given direction at the given length

  Parameters:
  - direction - A letter, either 'L' or 'R' representing whether the drivetrain should turn left or right
  - length - A decimal value representing how many wheel rotations the drivetrain should turn
  - velocity - A positive value from 0 - 600 reprenting how fast the drivetrain should turn in RPM
*/
void turn(char direction, double length, unsigned short int velocity) {
  // Delays the function until the drivetrain has stopped moving
	while(LMotors.get_actual_velocity(1) > 0 || RMotors.get_actual_velocity(1) > 0) pros::delay(1);

  // If the drivetrain is set to turn left...
  if (direction == 'L') {
    // The left drive moves backwards the given length at the given velocity
    LMotors.move_relative(length * -1, velocity);
    // The right drive moves forwards the given length at the given velocity
    RMotors.move_relative(length, velocity);
  // If the drivetrain is set to turn right...
  } else if (direction == 'R') {
    // The left drive moves backwards the given length at the given velocity
    LMotors.move_relative(length, velocity);
    // The left drive moves backwards the given length at the given velocity
    RMotors.move_relative(length * -1, velocity);
  }
}
```