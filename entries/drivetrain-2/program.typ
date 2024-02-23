#import "/template/template.typ": *

#show: create_entry.with(
  title: "Drivetrain #2",
  type: "program",
  start_date: datetime(year: 2024, month: 1, day: 12),
  attendance: "Ajibola, Jin, Makhi, Ishika, Eric, Rory",
  designed: "Ajibola",
  witnessed: "Ishika",
)

#nb_todo(
  date: datetime(year: 2024, month: 1, day: 12),
	monthly-schedule: "On",
	yearly-schedule: "Behind",
  (
    (true, "Program the drivetrain to be usable for driver control (Ajibola & Ishika)"),
    (true, "Test the drivetrain (Jin & Makhi)"),
    (true, "Program the kicker to be usable for driver control (Ajibola & Ishika)"),
    (true, "Test the kicker (Eric & Rory)"),
  )
)

Because our new drivetrain has 2 new motors compared to our first drivetrain, the program needed to be adjusted as well.

= Motor Initialization
First, we recreated the initialization of our drive motors.

#nb_admonition(type: "note")[
  - The motors with negative port numbers are reversed so that they spin forward when intended.
]

#code-header[src/global.cpp]
```cpp
// --- Left Drivetrain Motors
// Initializes the back left motor to port 8, reversed, with a blue gearset
pros::Motor BLMotor(-8, pros::E_MOTOR_GEAR_BLUE);
// Initializes the middle left motor to port 9, reversed, with a blue gearset
pros::Motor MLMotor(-9, pros::E_MOTOR_GEAR_BLUE);
// Initializes the front left motor to port 3, reversed, with a blue gearset
pros::Motor FLMotor(-3, pros::E_MOTOR_GEAR_BLUE);

// --- Right Drivetrain Motors
// Initializes the back right motor to port 18 with a blue gearset
pros::Motor BRMotor(18, pros::E_MOTOR_GEAR_BLUE);
// Initializes the middle right motor to port 19 with a blue gearset
pros::Motor MRMotor(19, pros::E_MOTOR_GEAR_BLUE);
// Initializes the front right motor to port 20 with a blue gearset
pros::Motor FRMotor(20, pros::E_MOTOR_GEAR_BLUE);
```

#colbreak()

Second, we grouped our drive motors into motor groups to make programming them in the code easier.

#code-header[src/global.cpp]
#codly-offset(offset: 15)
```cpp
// Drivetrain Motor Groups
pros::Motor_Group LMotors({BLMotor, MLMotor, FLMotor});
pros::Motor_Group RMotors({BRMotor, MRMotor, FRMotor});
```

= Function Refactoring
We decided to take this opportunity to refactor the drive code and condense it. This involved moving the extra functions that we created in our #past_nb_entry_reference(date: datetime(year: 2023, month: 9, day: 15), type: "program", title: "Driver Control"), such as:
- The ```cpp DirectionToggle()``` function to reverse the direction of the drivetrain
- The ```cpp GetCurveOutput(int input)``` function to apply a drive curve to the controller inputs
- The deadzone we created for the [-10, 10] input interval

#code-header[src/opcontrol.cpp]
```cpp
void opcontrol()
{
	// ... non-relevant lines of code excluded

  // Integer variables to store the current position of the left (Axis 3) and right Y axis (Axis 2) joysticks
	short int leftAxis;
	short int rightAxis;

	while (true)
	{
		// Update Joysticks
		leftAxis = controller.get_analog(pros::E_CONTROLLER_ANALOG_LEFT_Y);
		rightAxis = controller.get_analog(pros::E_CONTROLLER_ANALOG_RIGHT_Y);

		// Deadzone
		if(abs(leftAxis) <= 10) leftAxis = 0;
		if(abs(rightAxis) <= 10) rightAxis = 0;
		
		// When the A button is pressed...
		if(controller.get_digital_new_press(pros::E_CONTROLLER_DIGITAL_A))
		{
      // First, the controller rumbles to alert the driver that the reverse functionality has been activated
			controller.rumble(".");
      // Second, the drivetrain controls are reversed
			drivetrainReversed = !drivetrainReversed;
      // Third, the driver controller display is updated to reflect the reversal of the drive controls
			ControllerDisplay();
		}

    // If the drivetrain is not reversed...
		if(!drivetrainReversed) {
      // the left drive moves according to the left joystick
			LMotors.move(GetCurveOutput(leftAxis));
      // and the right drive moves according to the right joystick
			RMotors.move(GetCurveOutput(rightAxis));
    // Otherwise, if the drivetrain is reversed...
		} else {
      // the right drive moves according to the reverse of the left joystick
			RMotors.move(GetCurveOutput(-leftAxis));
      // the left drive moves according to the reverse of the right joystick
			LMotors.move(GetCurveOutput(-rightAxis));
		}

	  // ... non-relevant lines of code excluded
  }
}
```