#import "/template/template.typ": *

#show: create_entry.with(
  title: "Catapult #1 - Low Catapult",
  type: "program",
  start_date: datetime(year: 2023, month: 10, day: 7),
  attendance: "Ajibola, Ishika, Eric, Rory, Makhi"
)

= Catapult Driver Control
#nb_admonition(type: "identify", title: "Mini-Identify: Catapult Driver Control")[
  Makhi, our driver, identified that he wants the catapult controlled by holding button R2 on the controller.
]

First, we declared a global catapult motor class to use throughout the program.
#align(center)[*53D_OverUnder/src/global.cpp*]
```cpp
// ... non-relevant prior lines of code excluded

// Declares the speed (blue cartridge) motor connected to port 15 in the program with motor telemetry units set to degrees
pros::Motor CatapultMotor(15, pros::v5::MotorGears::blue, pros::v5::MotorUnits::degrees);
```

We then made the catapult controlled by button R2 possible with a few lines of code:
#align(center)[*53D_OverUnder/src/opcontrol.cpp*]
```cpp
void opcontrol() {
	while (true) {
		// ... non-relevant prior lines of code excluded

    // When the button R2 is being held, the catapult motor moves forward at maximum speed
		if(Controller.get_digital(pros::E_CONTROLLER_DIGITAL_R2)) CatapultMotor.move(127);
    // Otherwise, the catapult motor brakes, and does not move until the button R2 is held
		else CatapultMotor.brake();

		// Creates a 20 millisecond delay between each loop of the driver control code to prevent the starving of PROS kernel resources
		pros::delay(20);
	}
}
```

However, after a quick test, we realized that the catapult was moving too fast for the triball to go in a satisfactory arc. We fixed this by reducing the value in ```cpp CatapultMotor.move()``` from 127 to 115.

== Completed Catapult Driver Control Code
#align(center)[*53D_OverUnder/src/opcontrol.cpp*]
```cpp
void opcontrol() {
	while (true) {
		// ... non-relevant prior lines of code excluded

    // When the button R2 is being held, the catapult motor moves forward at near maximum speed
		if(Controller.get_digital(pros::E_CONTROLLER_DIGITAL_R2)) CatapultMotor.move(115);
    // Otherwise, the catapult motor brakes, and does not move until the button R2 is held
		else CatapultMotor.brake();

		// Creates a 20 millisecond delay between each loop of the driver control code to prevent the starving of PROS kernel resources
		pros::delay(20);
	}
}
```

= Catapult Autonomous Function
Because we had extra time, we decided to preemptively make the function necessary to use the catapult during the autonomous phase. During autonomous, after each shot of the catapult, we want the catapult to return to its original position. Taking into account the slip gear #glossary_footnote[Slip Gear], this will occur if the motor turns 360 degrees during each shot.

```cpp
void AutonCatapult() {
  // Turns the catapult motor 360 degrees forward at near maximum speed
	CatapultMotor.move_relative(360, 115);
}
```