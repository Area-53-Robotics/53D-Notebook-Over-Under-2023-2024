#include "main.h"

// Returns the curved output based off of the joystick value input as a parameter
float GetCurveOutput(int input) {
    return (std::exp(-20/12.7)+std::exp((std::abs(input)-127)/12.7)*(1-std::exp(-20/12.7))) * input;
}

/**
 * Runs the operator control code. This function will be started in its own task
 * with the default priority and stack size whenever the robot is enabled via
 * the Field Management System or the VEX Competition Switch in the operator
 * control mode.
 *
 * If no competition control is connected, this function will run immediately
 * following initialize().
 *
 * If the robot is disabled or communications is lost, the
 * operator control task will be stopped. Re-enabling the robot will restart the
 * task, not resume it from where it left off.
 */
void opcontrol()
{
	//autonomous();
	ControllerDisplay();
	// Integer variables to store the current position of the left (Axis 3) and right Y axis (Axis 2) joysticks
	short int leftAxis;
	short int rightAxis;

	int count = 0;

	// Activates the white LED light on the optical sensor
	Optical.set_led_pwm(100);

	while (true)
	{
		// Update Joysticks
		leftAxis = controller.get_analog(pros::E_CONTROLLER_ANALOG_LEFT_Y);
		rightAxis = controller.get_analog(pros::E_CONTROLLER_ANALOG_RIGHT_Y);

		// Deadzone
		if(abs(leftAxis) <= 10) leftAxis = 0;
		if(abs(rightAxis) <= 10) rightAxis = 0;
		
		// When the A button on the controller is pressed...
		if(controller.get_digital_new_press(pros::E_CONTROLLER_DIGITAL_A))
		{
      		// First, the controller rumbles to alert the driver that kicker control mode has been toggled
			controller.rumble(".");
      		// Second, the drivetrain controls are reversed
			drivetrainReversed = !drivetrainReversed;
      		// Third, the driver controller display is updated to reflect the reversal of the drive controls
			ControllerDisplay();
		}

		// When the Y button on the controller is pressed...
		if(controller.get_digital_new_press(pros::E_CONTROLLER_DIGITAL_Y)) {
      		// First, the controller rumbles to alert the driver that the reverse functionality has been activated
			controller.rumble(".");
			// Second, the kicker toggles its control mode from manual to the opposite of its current state
			manualKicker = !manualKicker;
			// Third, the driver controller display is updated to reflect the change in kicker control mode
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
		
		// When R2 is pressed, the activation of the horizontal wings is toggled
		if(controller.get_digital_new_press(pros::E_CONTROLLER_DIGITAL_R2))
			ToggleHorizontalPneumaticWings();

		// When R1 is pressed, the activation of the vertical wings is toggled
		if(controller.get_digital_new_press(pros::E_CONTROLLER_DIGITAL_R1))
			ToggleVerticalPneumaticWings();

		// If L1 is behind held, the intake spins forward at maximum velocity
		if(controller.get_digital(pros::E_CONTROLLER_DIGITAL_L1))
			IntakeMotor.move(127);
		// Otherwise, L2 is behind held, the intake spins bakcward at maximum velocity
		else if(controller.get_digital(pros::E_CONTROLLER_DIGITAL_L2))
			IntakeMotor.move(-127);
		// If neither L1 nor L2 is behind held, the intake brakes
		else
			IntakeMotor.brake();
		
		// When the if statement is manually set to true, the kicker code is used. When it is manually set to false, the elevation code is used.
		if (true) {
			// If the kicker is in manual control mode...
			if(manualKicker) {
				// Then when B is pressed...
				if(controller.get_digital_new_press(pros::E_CONTROLLER_DIGITAL_B))
					// The ki	cker toggles activation between off and on
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
		} else {
			// If UP is being held, the elevation mechanism spins forward, lifting the robot upwards
			if(controller.get_digital(pros::E_CONTROLLER_DIGITAL_UP)) KickerMotor.move(127);
			// Otherwise, if DOWN is being held, the elevation mechanism spins downward, allowing the robot to fall
			else if(controller.get_digital(pros::E_CONTROLLER_DIGITAL_DOWN)) KickerMotor.move(-127);
			// If neither UP nor DOWN are being held, the elevation mechanism brakes and holds its current position
			else KickerMotor.brake();
		}

		count++;

		// Creates a 20 millisecond delay between each loop of the driver control code to prevent the starving of PROS kernel resources
		pros::delay(20);
	}
}