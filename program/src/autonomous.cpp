#include "main.h"

ASSET(init_to_goal_txt)

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
	GamePhase = 3;
	
	switch (autonSelect) {
		case 2:
			// Right Qualification Match Auton (single triball using PID)
			controller.print(0, 0, "Right Quals Auton");
			// Sets the robot's current position as the starting position for LemLib
			chassis.setPose(0, 0, 0);
			// Delays the next command by 1 second
			pros::delay(1000);
			// Drives the robot backwards closer to the goal
			chassis.moveToPoint(0, -18, 3000, false, 75);
			// Rams the robot (with the backside facing front) into the goal, scoring the triball
			chassis.moveToPoint(0, -36, 3000, false, 75);
			// Delays the next command by 1 second
			pros::delay(1000);
			// Drives the robot away from the goal
			chassis.moveToPoint(0, -15, 3000, true, 75);
			// Delays the next command by 1 second
			pros::delay(1000);
			// Rams the robot (with the backside facing front) into the goal again to ensure the triball is scored
			chassis.moveToPoint(0, -48, 3000, false, 127);
			// Delays the next command by 1 second
			pros::delay(1000);
			// Drives the robot away from the goal so that it is not touching the triball at the end of the auton phase
			chassis.moveToPoint(0, -15, 3000, true, 75);
			controller.print(1, 0, "Auton Completed");
			break;
		case 3:
			// Left Side Half AWP
			controller.print(0, 0, "Left Elims Auton");
			// Sets the robot's current position relative to the middle point of the field
			chassis.setPose(-48 - (7.0 / 2), -60, 135);
			// Lowers the vertical wings, activating them
			ToggleVerticalPneumaticWings();
			pros::delay(250);
			// Turns to the left to begin descoring the match load triball
			chassis.turnTo(0, -60, 2000);
			pros::delay(250);
			// Drives forward to finish descoring the match load triball
			chassis.moveToPoint(-45, -60, 2000);
			// Lifts the vertical wings, deactivating them
			ToggleVerticalPneumaticWings();
			pros::delay(250);
			// Turns to the elevation bar
			chassis.turnTo(0, -60 - 2, 2000);
			pros::delay(250);
			// Drives towards the elevation bar, stopping in time for the ziptie attached to the intake to touch the elevaiton bar
			chassis.moveToPoint(0 - 20, -60 - 2, 2000);
			pros::delay(250);
			// Outtakes the pre-loaded alliance triball onto the other side of the field
			AutonIntake(1000, true);
			controller.print(1, 0, "Auton Completed");
			break;
		case 7:
			// Currently curves the robot to push a triball into the goal
			controller.print(0, 0, "Programming Skills - New Version");
			// Sets the robot's current position relative to the middle point of the field
			chassis.setPose(-72 + 26.5, -60, 133);
			// Pushes the initially placed triballs into the close side goal
			chassis.moveToPose(-60 + 5, -24 + 24, 180, 2500, {.forwards = false, .chasePower = 8});
			// Delays the next command until the drivetrain is done moving
			chassis.waitUntilDone();
			// Re-sets the position coordinates of the robot to account for wheel slippage
			chassis.setPose(-72 + 26.5, -29.25, 180);
			// The robot drives backwards into loading position
			chassis.moveToPose(-48, -48 + 3, 70, 2500, {.forwards = false, .chasePower = 8 + 6});
			// Delays the next command until the drivetrain is done moving
			chassis.waitUntilDone();
			// Activates the vertical wings so that they are touching the match load bar
			ToggleVerticalPneumaticWings();
			// 0.5 second delay to allow the wings to fall
			pros::delay(500);
			// Activates the kicker
			KickerMotor.move(127);
			// Allows the kicker to shoot for 25 seconds
			pros::delay(25000);
			// Brakes the kicker
			KickerMotor.brake();
			// 0.5 second delay to allow the kicker to stop moving
			pros::delay(500);
			// Deactivates the vertical wings
			ToggleVerticalPneumaticWings();
			// 0.5 second delay to allow the wings to rise
			pros::delay(500);
			// Turns the robot towards the bottom of the field
			chassis.turnTo( -36,  -60,  2500);
			// Drives the robot towards the bottom of the field
			chassis.moveToPoint(-36, -60, 2500);
			// Turns the robot towards the elevation bar
			chassis.turnTo(0,-60,2500);
			// Drives towards the elevation bar
			chassis.moveToPoint(24, -60, 2500);

			
			controller.print(1, 0, "Skills Complete");
			break;
	}
}