#include "main.h"

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
void opcontrol() {
	// if(!pros::competition::is_connected) autonomous(); -- this line of code doesn't work for some reason
	// autonomous();
	ControllerDisplay();
	while (true) {
		SetDriveMotors();

		if(Controller.get_digital_new_press(pros::E_CONTROLLER_DIGITAL_A)) DirectionToggle();
    	// When LEFT is pressed on the controller, the PneumaticWings() function is called, opening/closing the wings
		if(Controller.get_digital_new_press(pros::E_CONTROLLER_DIGITAL_LEFT)) PneumaticWings();

		if(Controller.get_digital(pros::E_CONTROLLER_DIGITAL_L1)) IntakeMotor.move(127);
		else if(Controller.get_digital(pros::E_CONTROLLER_DIGITAL_L2)) IntakeMotor.move(-127);
		else IntakeMotor.brake();

		if(Controller.get_digital(pros::E_CONTROLLER_DIGITAL_R1)) FlywheelMotor.move(127);
		else if(Controller.get_digital(pros::E_CONTROLLER_DIGITAL_R2)) FlywheelMotor.move(-127);
		else FlywheelMotor.brake();

		if(Controller.get_digital(pros::E_CONTROLLER_DIGITAL_DOWN)) ArmMotor.move(100);
		else if(Controller.get_digital(pros::E_CONTROLLER_DIGITAL_UP)) ArmMotor.move(-100);
		else ArmMotor.brake();

		// Creates a 20 millisecond delay between each loop of the driver control code to prevent the starving of PROS kernel resources
		pros::delay(20);
	}
}