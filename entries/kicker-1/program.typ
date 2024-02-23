#import "/template/template.typ": *

#show: create_entry.with(
  title: "Kicker #1",
  type: "program",
  start_date: datetime(year: 2024, month: 1, day: 12),
  attendance: "Ajibola, Jin, Ishika, Makhi, Eric, Rory",
  designed: "Ajibola",
  witnessed: "Ishika",
)

#nb_admonition(type: "brainstorm", title: "Sub-Brainstorm: Kicker Control Modes")[
  Makhi determined that he wanted the following control modes for the kicker during driver control:
  - *Manual Mode:* The holding of specific buttons on the controller causes the kicker to start moving and stop moving
  - *Automatic Mode:* The kicker automatically activates when it detects the presence of a triball on the kicker tray

  We will also need a method for the driver to switch between control modes during the match.
]

= Kicker Code Framework
First, we initialized the kicker motor in the program.
#code-header[src/global.cpp]
```cpp
// Initializes the kicker motor to port 12, reversed, with a red (torque) gearset
pros::Motor KickerMotor(-12, pros::E_MOTOR_GEAR_RED);
```

Second, we created a boolean variable to store the control mode (manual or automatic) of the kicker. 
#code-header[src/global.cpp]
#codly-offset(offset: 2)
```cpp
// Boolean variable representing whether manual mode is activated (true) or automatic mode is activated (false)
bool manualKicker = true;
```

Third, we made it so that when the kicker motor brakes, it holds its current position.
#code-header[src/main.cpp]
```cpp
void initialize() {
  // ... non-relevant lines of code excluded

	// Sets the kicker motor to hold its position when it is stopped
	KickerMotor.set_brake_mode(pros::E_MOTOR_BRAKE_HOLD);
	// Brakes the kicker motor when the program is initialized
	KickerMotor.brake();
}
```

= Kicker Driver Control Code Development
== Kicker Control Mode Toggle
To allow the driver to switch the control mode of the catapult between manual and automatic, we programmed the following code:

#code-header[src/opcontrol.cpp]
```cpp
// When the Y button on the controller is pressed...
if(controller.get_digital_new_press(pros::E_CONTROLLER_DIGITAL_Y)) {
  // First, the controller rumbles to alert the driver that the kicker control mode has been toggled
  controller.rumble(".");
  // Second, the kicker toggles its control mode from manual to the opposite of its current state
  manualKicker = !manualKicker;
  // Third, the driver controller display is updated to reflect the change in kicker control mode
  ControllerDisplay();
}
```

== Kicker Manual Control Mode
#code-header[src/opcontrol.cpp]
```cpp
// If the kicker is in manual control mode...
if(manualKicker) {
  // Then when B is pressed...
  if(controller.get_digital_new_press(pros::E_CONTROLLER_DIGITAL_B))
    // The kicker toggles activation between off and on
    kickerOn = !kickerOn;
}
```

== Kicker Automatic Control Mode
=== Sensor Selection & Installation
#nb_admonition(type: "brainstorm", title: "Sub-Brainstorm: Kicker Sensors")[
  We quickly brainstormed a few sensors that we could use to have the robot detect when a triball is placed on the kicker tray:
  - *Distance Sensor* - Uses a laser to determine the distance from the sensor to the object that the laser hits
  - *Optical Sensor* - Determines the hue, saturation, and brightness of the object in view of the sensor
  - *Ultrasonic Sensor* - Determines the distance from the sensor to the object in front of it by sending out a ping and determining how long it takes for that ping to hit the object
]

#nb_admonition(type: "select", title: "Final Selection: Kicker Sensors")[
  We decided to use the *Optical Sensor* because our team was out of stock of the other two sensors.
]

We then installed the optical sensor under the polycarbonate part of the kicker tray.

=== Triball Hue Determination
To determine which hue value the triballs are, we utilized the devices menu of the VEX V5 brain. We determined that triballs have a green hue value of around 70.

=== Sensor Programming
First, we initialized the sensor in the code:
#code-header[src/global.cpp]
```cpp
// Initializes the Optical Sensor to port 6
pros::Optical Optical(6);
```

Second, we programmed the optical sensor to activate at the beginning of driver control:
#code-header[src/opcontrol.cpp]
```cpp
// Activates the white LED light on the optical sensor
Optical.set_led_pwm(100);
```

Third, we programmed the color sensor to activate the kicker when the sensor detects the color green:
#code-header[src/opcontrol.cpp]
```cpp
// If the kicker is in automatic control mode...
else {
  // Then if the color sensor detects an object in the green hue range (65-80), the kicker is activated
  if(Optical.get_hue() > 65 && Optical.get_hue() < 80) kickerOn = true;
  // Otherwise, the kicker is set to not move
  else kickerOn = false;
}
```

== Kicker Movement
The code that we developed up until now sets the value of the ```cpp kickerOn``` variable, but that does not move the kicker itself. Next, we programmed the kicker to move according to the value stored in ```cpp kickerOn```.

#code-header[src/opcontrol.cpp]
```cpp
// If the kicker is supposed to be on...
if(kickerOn) {
  // Then the kicker motor continuously rotates downwards at 87% speed (so that it can hit the slip gear to shoot)
  KickerMotor.move(127);
// Otherwise, if the kicker is supposed to be off...
} else {
  // Then the kicker brakes and holds its current position
  KickerMotor.brake();
}
```

= Final Driver Control Kicker Code
```cpp
void opcontrol() {
  // ... non-relevant lines of code excluded

  // Activates the white LED light on the optical sensor
	Optical.set_led_pwm(100);

	while (true)
	{
		// ... non-relevant lines of code excluded

		// When the Y button on the controller is pressed...
		if(controller.get_digital_new_press(pros::E_CONTROLLER_DIGITAL_Y)) {
      // First, the controller rumbles to alert the driver that the reverse functionality has been activated
			controller.rumble(".");
			// Second, the kicker toggles its control mode from manual to the opposite of its current state
			manualKicker = !manualKicker;
			// Third, the driver controller display is updated to reflect the change in kicker control mode
			ControllerDisplay();
		}
		
    // If the kicker is in manual control mode...
    if(manualKicker) {
      // Then when B is pressed...
      if(controller.get_digital_new_press(pros::E_CONTROLLER_DIGITAL_B))
        // The kicker toggles activation between off and on
        kickerOn = !kickerOn;
    // Otherwise, if the kicker is in automatic control mode...
    } else {
      // Then if the color sensor detects an object in the green hue range (65-80), the kicker is activated
      if(Optical.get_hue() > 65 && Optical.get_hue() < 80) kickerOn = true;
      // Otherwise, the kicker is set to not move
      else kickerOn = false;
    }

    // If the kicker is supposed to be on...
    if(kickerOn) {
      // Then the kicker motor continuously rotates downwards at 87% speed (so that it can hit the slip gear to shoot)
      KickerMotor.move(127);
    // Otherwise, if the kicker is supposed to be off...
    } else {
      // Then the kicker brakes and holds its current position
      KickerMotor.brake();
    }

		// Creates a 20 millisecond delay between each loop of the driver control code to prevent the starving of PROS kernel resources
		pros::delay(20);
	}
}
```