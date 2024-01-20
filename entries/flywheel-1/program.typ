#import "/template/template.typ": *

#show: create_entry.with(
  title: "Flywheel #1",
  type: "program",
  start_date: datetime(year: 2023, month: 12, day: 14),
  attendance: "Ajibola, Jin, Ishika, Makhi, Eric, Rory"
)

#nb_todo(
  date: datetime(year: 2023, month: 12, day: 14),
  (
    (true, "Program the flywheel to be usable for driver control (Ajibola & Ishika)"),
    (true, "Test the flywheel for speed and scoring distance (Everyone)"),
  )
)

#nb_admonition(type: "identify", title: "Sub-Identify: Intake Driver Control")[
  We identified that we needed the arm and flywheel to have the following capabilities:
  - The arm and the flywheel need to be controlled separately, so that it is possible to raise the blocker without activating the flywheel
  - The arm needs to hold its current position when it stops moving instead of coasting, otherwise it will just fall to the ground
]

First, we declared a global arm motor object and a global flywheel motor object to use throughout the program.

#align(center)[*53D_OverUnder/src/global.cpp*]
```cpp
// ... non-relevant prior lines of code excluded

// Instantiates a speed (blue cartridge) motor connected to port 15 in the program with motor telemetry units set to degrees
pros::Motor FlywheelMotor(15, pros::v5::MotorGears::blue, pros::v5::MotorUnits::degrees);
// Instantiates a torque (red cartridge) motor connected to port 7 in the program with motor telemetry units set to degrees
pros::Motor ArmMotor(7, pros::v5::MotorGears::red, pros::v5::MotorUnits::degrees);
```

Then, we set the brake mode of the arm motor to hold instead coast (the default), so that the arm maintain its position when it stops spinning. We want the flywheel to coast, so we did not change its brake mode from the default.

#align(center)[*53D_OverUnder/src/main.cpp*]
```cpp
void initialize() {
  // ... non-relevant prior lines of code excluded

  // When the program starts, the arm motor is set to hold at its current position when it it brakes
	ArmMotor.set_brake_mode(pros::E_MOTOR_BRAKE_HOLD);
  // Brakes the arm motor at the beginning of the program so that it begins holding its position
	ArmMotor.brake();
}
```

#colbreak()

Lastly, we made the flywheel and arm motor controllable with button presses for use in driver control.

#align(center)[*53D_OverUnder/src/opcontrol.cpp*]
```cpp
void opcontrol() {
	  // ... non-relevant prior lines of code excluded
	while (true) {
    // ... non-relevant prior lines of code excluded

    // When the R1 button is held on the controller, the flywheel will spin forward at 100% speed
		if(Controller.get_digital(pros::E_CONTROLLER_DIGITAL_R1)) FlywheelMotor.move(127);
    // When the R2 button is held on the controller, the flywheel will spin backward at 100% speed
		else if(Controller.get_digital(pros::E_CONTROLLER_DIGITAL_R2)) FlywheelMotor.move(-127);
    // if neither the R1 button nor the R2 button are being held, the flywheel will brake
		else FlywheelMotor.brake();

    // When the DOWN button is held on the controller, the Arm motor will spin forward at 79% speed, lowering the arm down
    if(Controller.get_digital(pros::E_CONTROLLER_DIGITAL_DOWN)) ArmMotor.move(100);
    // When the UP button is held on the controller, the Arm motor will spin backward at 79% speed, lifting the arm up
		else if(Controller.get_digital(pros::E_CONTROLLER_DIGITAL_UP)) ArmMotor.move(-100);
    // If neither the DOWN button nor the UP button are being held, the arm will hold its current position
		else ArmMotor.brake();

		// Creates a 20 millisecond delay between each loop of the driver control code to prevent the starving of PROS kernel resources
		pros::delay(20);
	}
}
```

#nb_admonition(type: "note")[
  Because of how the arm is geared, spinning the motor backwards moves the arm upward; and spinning the motor forwards moves the arm downward.
]