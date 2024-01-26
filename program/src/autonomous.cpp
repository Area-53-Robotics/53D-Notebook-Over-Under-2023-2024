#include "main.h"

//* The robot drives the given length at the given velocity
void drive(double length) {
	drive(length, 600);
}

void drive(double length, unsigned short int velocity) {
	// while(LMotors.get_actual_velocities().begin() > 0 || RMotors.get_actual_velocities().begin() > 0) pros::delay(1);
	LMotors.move_relative(length, velocity);
	RMotors.move_relative(length, velocity);
}

//* The robot turns in the given direction at the given length
void turn(char direction, double length) {
    turn(direction, length, 600);
}

void turn(char direction, double length, unsigned short int velocity) {
	// while(LMotors.get_actual_velocities().begin() > 0 || RMotors.get_actual_velocities().begin() > 0) pros::delay(1);
    if(direction == 'L') {
		LMotors.move_relative(length * -1, velocity);
		RMotors.move_relative(length, velocity);
    } else if(direction == 'R') {
		LMotors.move_relative(length, velocity);
		RMotors.move_relative(length * -1, velocity);
    }
}

// Activates the intake for the given amount of milliseconds in either the forward or reverse direction
void AutonIntake(unsigned short int msec, bool isReverse) {
	if(!isReverse) {
		IntakeMotor.move(115);
		pros::delay(msec);
		IntakeMotor.brake();
	} else if(isReverse) {
		IntakeMotor.move(-115);
		pros::delay(msec);
		IntakeMotor.brake();
	}
}

// Toggles the activation of the horizontal wings
void AutonWings(unsigned short int msec, bool activateWings){
	if(!activateWings){
		HorizontalWingPistons.set_value(1);
		pros::delay(msec);
		HorizontalWingPistons.set_value(0);
	} else{
		HorizontalWingPistons.set_value(0);
	}
}

/**
 * Runs the user autonomous code. This function will be started in its own task
 * with the default priority and stack size whenever the robot is enabled via
 * the Field Management System or the VEX Competition Switch in the autonomous
 * mode. Alternatively, this function may be called in initialize or opcontrol
 * for non-competition testing purposes.
 *
 * If the robot is disabled or communications is lost, the autonomous task
 * will be stopped. Re-enabling the robot will restart the task, not re-start it
 * from where it left off.
 */
void autonomous() {
	// Informs the program that the robot is in the autonomous phase
	GamePhase = 1;
	// Sets the auton to the "Left Quals" auton
	autonSelect = 1;
	
	switch (autonSelect) {
		// LemLib left quals auton in progress
		case 1:
			controller.print(0, 0, "Left Quals Auton");
			/*chassis.moveToPoint(0,8,1500);
			AutonIntake(1000,false);
			chassis.moveToPoint(0, -15, 5000, false);	
			chassis.turnTo(10,0,100);
			chassis.moveToPoint(0,-35,5000,false);
			chassis.turnTo(90,0,100,false);
			chassis.moveToPoint(0,-15,1000,false); */
			chassis.moveToPoint(0,15,1500);
			//AutonWings(1500,false);
			chassis.turnTo(90,0,100);
			AutonIntake(1000,true);
			chassis.moveToPoint(0,45,1500);
			chassis.moveToPoint(0,-10,1500,false);
			chassis.moveToPoint(0,8,1500);
			controller.print(1, 0, "Auton Completed");
			break;
		case 2:
			controller.print(0, 0, "Right Quals Auton");
			// Pushes triball
			drive(1000,600);
			pros::delay(1000);
			AutonIntake(1000,true);
			controller.print(1, 0, "Auton Completed");
			break;
		case 3:
			controller.print(0, 0, "Left Elims Auton");
			drive(4.5,2000);
			AutonIntake(1000, true);
			drive(1,2000);
			drive(-1.5,2000);
			drive(2,2000);
			controller.print(1, 0, "Auton Completed");
			break;
		case 4:
			controller.print(0, 0, "Right Elims Auton");
			controller.print(1, 0, "Auton Completed");
			break;
		case 5:
			controller.print(0, 0, "Full AWP");
			controller.print(1, 0, "Auton Completed");
			break;
		case 6:
			controller.print(0, 0, "No Auton Selected");
			break;
		case 7:
			// Activates the kicker motor for the entire programming skills run
			controller.print(0, 0, "Programming Skills");
			KickerMotor.move(127);
			pros::delay(45000);
			controller.print(1, 0, "Skills Complete");
			break;
	}
	
}