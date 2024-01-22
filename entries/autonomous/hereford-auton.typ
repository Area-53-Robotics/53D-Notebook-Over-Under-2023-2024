#import "/template/template.typ": *

#show: create_entry.with(
  title: "Autonomous Programming - Hereford Zone",
  type: "program",
  start_date: datetime(year: 2023, month: 12, day: 1),
  attendance: "Ajibola, Ishika, Eric, Rory, Makhi",
  designed: "Ajibola",
  witnessed: "Ishika",
)

#grid(
  columns: 2,

  [
    We had a lot less time than we originally planned to program an auton for the Hereford Zone Stampede tournament, so we decided to make a simple auton that pushes a triball into the goal. This auton would get us 5 points, which is not a lot, but could be the difference in a close match. An advantage of this auton is that it works regardless of whether we start on the offensive or defensive side, so our alliance partners can perform their auton on whichever side suits them best.
  ],
  image("/assets/autonomous/hereford-auton.excalidraw.svg", height: 14em)
)

= Autonomous Setup
Before making the autonomous, we needed to make autonomous movement functions for the drivetrain. They allow us to send commands to the entire drivetrain at once instead of sending commands individually to both halves of the drivetrain.

#align(center)[*53D_OverUnder/src/subsystemFiles/autonomous.cpp*]
```cpp
/*
  Summary: The robot drives the given length at the given velocity

  Parameters:
  - length - A decimal value representing how many wheel rotations the drivetrain should move
  - velocity - A positive value from 0 - 600 representing how fast the drivetrain should move in RPM
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
  Summary: The robot turns in the given direction at the given length

  Parameters:
  - direction - A letter, either 'L' or 'R' representing whether the drivetrain should turn left or right
  - length - A decimal value representing how many wheel rotations the drivetrain should turn
  - velocity - A positive value from 0 - 600 representing how fast the drivetrain should turn in RPM
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
  // or, if the drivetrain is set to turn right...
  } else if (direction == 'R') {
    // The left drive moves backwards the given length at the given velocity
    LMotors.move_relative(length, velocity);
    // The left drive moves backwards the given length at the given velocity
    RMotors.move_relative(length * -1, velocity);
  }
}
```

However, when we tried to use these movement functions, they did not work. After a few minutes of testing, we realized that for some reason, the drivetrain would only follow the autonomous commands if we sent commands to a single object at once. For example, we could send commands to ```cpp LMotors``` or ```cpp RMotors```, but we could not use the ```cpp drive()``` function we made because it commanded both of them at once. We suspect that this is a bug with PROS, and if so, than this problem is out of our control to resolve.

To get around this issue, we implemented an unorthodox solution where we initialized three copies of the drivetrain: one for driving forward/backward, one for turning left, and one for turning right. In each object, we reversed the direction of the appropriate motors for each drivetrain object to perform their function.

#align(center)[*53D_OverUnder/src/subsystemFiles/global.cpp*]
```cpp
// Initializes a group of motors to represent the drivetrain with all of their motors in their "normal" direction
pros::MotorGroup Drivetrain({-10, -9, 18, 19}, pros::v5::MotorGears::blue, pros::v5::MotorEncoderUnits::rotations);
// Initializes the motors with the left side motors reversed from their normal direction to facilitate turning left
pros::MotorGroup LTDrivetrain({-10, -9, -18, -19}, pros::v5::MotorGears::blue, pros::v5::MotorEncoderUnits::rotations);
// Initializes the motors with the right side motors reversed from their normal direction to facilitate turning right
pros::MotorGroup RTDrivetrain({10, 9, 18, 19}, pros::v5::MotorGears::blue, pros::v5::MotorEncoderUnits::rotations);
```

We then remade the autonomous movement functions using the new drivetrain objects.

#align(center)[*53D_OverUnder/src/subsystemFiles/autonomous.cpp*]
```cpp
/*
  Summary: The robot drives the given length at the given velocity

  Parameters:
  - length - A decimal value representing how many wheel rotations the drivetrain should move
  - velocity - A positive value from 0 - 600 representing how fast the drivetrain should move in RPM
  - delay - How long the drivetrain should wait (in milliseconds) before performing the next autonomous movement
*/
void AutonDrive(double length, unsigned short int velocity, unsigned short int delay) {
  // Drives the robot forward the given length at the given velocity
	Drivetrain.move_relative(length, velocity);

  // Delays the end of this function for the given amount of time
	pros::delay(delay);
}

/*
  Summary: The robot turns in the given direction at the given length

  Parameters:
  - direction - A letter, either 'L' or 'R' representing whether the drivetrain should turn left or right
  - length - A decimal value representing how many wheel rotations the drivetrain should turn
  - velocity - A positive value from 0 - 600 representing how fast the drivetrain should turn in RPM
  - delay - How long the drivetrain should wait (in milliseconds) before performing the next autonomous movement
*/
void AutonTurn(char direction, double length, unsigned short int velocity, unsigned short int delay) {
    // If the drivetrain is set to turn left...
    if (direction == 'L') {
      // The "left turn" version of the drivetrain is commanded to drive for the given length at the given velocity
		  LTDrivetrain.move_relative(length, velocity);
    // or, if the drivetrain is set to turn left...
    } else if (direction == 'R') {
      // The "right turn" version of the drivetrain is commanded to drive for the given length at the given velocity
		  RTDrivetrain.move_relative(length, velocity);
    }
  
  // Delays the end of this function for the given amount of time
	pros::delay(delay);
}
```

= Autonomous Code
With all of the setup done, we could finally program the auton itself.

#align(center)[*53D_OverUnder/src/subsystemFiles/autonomous.cpp*]
```cpp
  //  Prints a message on te controller to alert the drive team that the qualification match auton is running
  Controller.print(0, 0, "Quals Auton");

  // Drives the robot 4 wheel rotations forward to approach the goal, with a 2 second delay afterward
  AutonDrive(4, 2000);
  // Outtakes the triball
  AutonIntake(1000, true);
  // Pushes the triball into the goal
  AutonDrive(1, 2000);
  // Moves backward to disengage the robot from the triball
  AutonDrive(-1, 2000);
```