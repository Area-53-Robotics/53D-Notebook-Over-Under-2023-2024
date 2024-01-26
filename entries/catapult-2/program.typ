#import "/template/template.typ": *

#show: create_entry.with(
  title: "Catapult #2",
  type: "program",
  start_date: datetime(year: 2023, month: 12, day: 1),
  attendance: "Ajibola, Ishika, Eric, Rory, Makhi",
  designed: "Ajibola",
  witnessed: "Ishika",
)

#nb_admonition(type: "note", title: "Sub-Identify: Catapult Driver Control")[
  Makhi identified that he wants two modes of control for the catapult:
  - A manual mode, where holding down button R2 lowers the catapult arm
  - An automatic mode, where when R2 is pressed, the catapult will shoot and then automatically cock back to prepare for the next shot
]

= Device Declarations
First, we declared the catapult motors and catapult sensor as objects so that they are usable in the program.

#align(center)[*53D_OverUnder/src/global.cpp*]
```cpp
// Initializes the two catapult motors as a group so that we can send commands to them together
pros::MotorGroup CataMotors({-20, 3}, pros::v5::MotorGears::red, pros::v5::MotorUnits::degrees);
// Initializes the rotation sensor on port 4
pros::Rotation CataSensor(4);
```

= Catapult Device Initialization Settings
At the beginning of the round there are a few settings for the catapult devices that need to be set. We were able to configure these by using the ```cpp initialize()``` function, which contains code that runs when the program is turned on.

#align(center)[*53D_OverUnder/src/main.cpp*]
```cpp
/*
 Runs initialization code. This occurs as soon as the program is started.
*/
void initialize() {
  // Creates a task for the catapult so that the catapult controls are run in parallel (at the same time) as the rest of the code in the program
  pros::Task CataTask(runCatapult);
  // Sets the catapult motors to hold their position when they are not moving
  CataMotors.set_brake_mode(pros::E_MOTOR_BRAKE_HOLD);
  // Resets the value of the rotation sensor at the beginning of each program to prevent carryover from previous runs of the program
  CataSensor.reset();
}
```

// https://github.com/Area-53-Robotics/53D/blob/07eefd2cf4c744c5736ae259463f63a9ef65a241/src/subsystemFiles/catapult.cpp

= File & Variable Setup
For the catapult code, we created a new file: ```cpp catapult.cpp``` because we expect the code for the new catapult to be longer than the code for the previous catapult.

At the beginning of the file, we declared some important variables as well as the ```cpp runCatapult()``` function, which will contain the catapult code that runs during the match.

#align(center)[*53D_OverUnder/src/subsystemFiles/catapult.cpp*]
```cpp
// Imports PROS backend code along with variables/functions from other files in the program
#include "main.h"

/*
  Integer variable to represent the state of the catapult. The catapult is initialized as "Ready" because the catapult arm will be down at the beginning of the match.

  Key:
  1: Resetting
  2: Ready
  3: Pre-Launch
  4: Launching
*/
unsigned short int cataStatus = 2;

// Decimal value to represent the angle (in degrees) of the catapult arm detected from the rotation sensor
double cataPosition = CataSensor.get_position() / 100;
// Decimal value to represent the velocity (in degrees/sec) of the catapult arm detected from the rotation sensor
double cataVelocity = CataSensor.get_velocity() * 100;

// Boolean value representing whether the catapult is being manually controlled (true) or automatically controlled (false)
bool manualCata = true;
// Boolean value representing whether the catapult arm is currently moving
bool cataMoving = false;

/*
  Summary: Main function for the catapult code. Will be initialized as a task so that it runs synchronously with the other code in the program.

  Parameters: None
*/
void runCatapult() {
  while(true) {
    // Obtains the angle of the catapult arm detected by the rotation sensor and converts it from centidegrees to degrees
    cataPosition = CataSensor.get_position() / 100;
    // Obtains the velocity of the catapult arm detected by the rotation sensor and converts it from centidegrees/sec to degrees/sec
    cataVelocity = CataSensor.get_velocity() * 100;
```

= Manual Catapult Control Code
#codly-offset(offset: 35)
    
```cpp
    if(manualCata) {
      // When the R2 button is held, the catapult arm moves downwards
      if (Controller.get_digital(pros::E_CONTROLLER_DIGITAL_R2)) CataMotors.move(100);
      // When the R2 button is not being held, the catapult arm holds its current position
      else CataMotors.brake();
    }
```

= Automatic Catapult Control Code
#codly-offset(offset: 41)

```cpp
    else if(!manualCata) {
      // If the catapult is greater than 5 degrees above its "Ready" position, then it is still "Resetting"
      if (cataPosition > 5) cataStatus = 1;

      // If the catapult's current state is "Resetting"...
      if(cataStatus == 1) {
        // If the catapult is not within 5 degrees of the "Ready" position, it will rotate downwards
        if (cataPosition > 5) CataMotors.move(100);
        // If it is, then the state will switch to "Ready"
        else cataStatus = 2;
      }

      // If the catapult's current state is "Ready"...
      if(cataStatus == 2) {
        // then the catapult will hold its current position
        CataMotors.brake();
      }

      // If the catapult's current state is "Pre-Launch"...
      if(cataStatus == 3) {
        // If the catapult is not launching (has not hit the slip gear), then it will continue rotating downwards
        if(cataVelocity <= 0) CataMotors.move(100);
        // If the catapult is launching (has hit the slip gear), then the state will switch to "Launching"
        else if (cataVelocity > 0) cataStatus = 4;
      }

      // If the catapult's current state is "Launching"...
      if(cataStatus == 4) {
        // If the catapult is no longer moving (has hit the physical stopping point), then the state will switch to "Resetting"
        if(cataVelocity < 1) cataStatus = 1;
      }

      // When the R2 button is pressed, the FireCatapult() function is called (function is documented below)
      if(Controller.get_digital_new_press(pros::E_CONTROLLER_DIGITAL_R2)) FireCatapult();
    }
    // Creates a 20 millisecond delay between each loop of the catapult task to prevent the starving of PROS resources
    pros::delay(20);
  }
}

// When this function is called, it toggles the catapult control mode between manual and automatic, and then displays the new mode on the controller screen
void SwitchCatapultMode() {
  manualCata = !manualCata;
  ControllerDisplay();
}

// When the catapult is in automatic mode, the calling of this function switches the catapult from its "Ready" state to "Pre-Launch" state
void FireCatapult() {
  if(!manualCata) {
    if(cataStatus == 2) cataStatus = 3;
  }
}
```

= Driver Control Code
The only changes we had to make to ```cpp opcontrol.cpp``` was to add functionality for the driver to switch between the manual and automatic catapult control modes.

#align(center)[*53D_OverUnder/src/opcontrol.cpp*]
```cpp
void opcontrol() {
	while (true) {
    // ... non-relevant prior lines of code excluded

    // When the B button on the controller is pressed, the catapult toggles between manual and automatic control
		if(Controller.get_digital_new_press(pros::E_CONTROLLER_DIGITAL_B)) SwitchCatapultMode();

    // Creates a 20 millisecond delay between each loop of the driver control code to prevent the starving of PROS resources
		pros::delay(20);
	}
}
```