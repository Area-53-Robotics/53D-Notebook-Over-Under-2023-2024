#import "/template/template.typ": *

#show: create_entry.with(
  title: "Intake #1",
  type: "program",
  start_date: datetime(year: 2023, month: 11, day: 3),
  attendance: "Ajibola, Ishika, Rory, Makhi"
)

#nb_todo(
  date: datetime(year: 2023, month: 11, day: 3),
  monthly-schedule: "On",
  yearly-schedule: "On",
  (
    (true, "Program the intake to be usable during driver control. (Ajibola and Ishika)"),
    (true, "Test the intake (Everyone)"),
  )
)

= Intake Driver Control
#nb_admonition(type: "identify", title: "Mini-Identify: Intake Driver Control")[
  Makhi, our driver, identified that he wants the intake to:
  - Intake (take in a triball) when holding down R1 on the controller
  - Outtake (release the held triball) when holding down R1 on the controller
]

First, we declared a global intake motor class to use throughout the program.
#align(center)[*53D_OverUnder/src/global.cpp*]
```cpp
// ... non-relevant prior lines of code excluded

// Declares the speed (blue cartridge) motor connected to port 15 in the program with motor telemetry units set to degrees
pros::Motor IntakeMotor(11, pros::v5::MotorGears::blue);```

We made driver control of the intake possible with the following lines of code:

== Completed Intake Driver Control Code
#align(center)[*53D_OverUnder/src/opcontrol.cpp*]
```cpp
void opcontrol() {
	while (true) {
		// ... non-relevant prior lines of code excluded

    // When the button L1 is being held, the intake motor intakes (moves forward) at maximum speed
    if(Controller.get_digital(pros::E_CONTROLLER_DIGITAL_L1)) IntakeMotor.move(127);
    // When the button L2 is being held, the intake motor outtakes (moves backward) at maximum speed
		else if(Controller.get_digital(pros::E_CONTROLLER_DIGITAL_L2)) IntakeMotor.move(-127);
    // Otherwise, the intake motor brakes, and does not move until the buttons L1 or L2 are held
		else IntakeMotor.brake();

		// Creates a 20 millisecond delay between each loop of the driver control code to prevent the starving of PROS kernel resources
		pros::delay(20);
	}
}
```

= Intake Autonomous Function
While working on the driver control version of the intake code, we were simultaneously developing an autonomous function to control the intake during the autonomous period.

```cpp
/*
  Takes in one parameters:
  msec - How many milliseconds do you want the itnake to spin for
  // isReverse - do you want the intake to spin backwards
*/
void AutonIntake(unsigned short int msec) {
  // The intake spins forward at 200 RPM
	IntakeMotor.move_velocity(200);

  // The next command is delayed by the number of milliseconds passed in by the user
	pros::delay(msec);

  // After that number of milliseconds has passed, the intake motor brakes and stops moving 
	IntakeMotor.brake();
}
```