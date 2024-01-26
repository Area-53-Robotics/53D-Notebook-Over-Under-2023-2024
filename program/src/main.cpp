#include "main.h"

/**
 * A callback function for LLEMU's center button.
 *
 * When this callback is fired, it will toggle line 2 of the LCD text between
 * "I was pressed!" and nothing.
 */
void on_center_button() {
	static bool pressed = false;
	pressed = !pressed;
	if (pressed) {
		pros::lcd::set_text(2, "I was pressed!");
	} else {
		pros::lcd::clear_line(2);
	}
}

/**
 * Runs initialization code. This occurs as soon as the program is started.
 *
 * All other competition modes are blocked by initialize; it is recommended
 * to keep execution time for this mode under a few seconds.
 */
void initialize() {
	// Initializes the brain display
	pros::lcd::initialize();
	pros::lcd::set_text(1, "Hello PROS User!");

	pros::lcd::register_btn1_cb(on_center_button);

	// Calibrates the LemLib chassis (takes 3 seconds)
	chassis.calibrate();

	 pros::Task screenTask([&]() {
        lemlib::Pose pose(0, 0, 0);
        while (true) {
            // print robot location to the brain screen
            pros::lcd::print(0, "X: %f", chassis.getPose().x); // x
            pros::lcd::print(1, "Y: %f", chassis.getPose().y); // y
            pros::lcd::print(2, "Theta: %f", chassis.getPose().theta); // heading
            // log position telemetry
            lemlib::telemetrySink()->info("Chassis pose: {}", chassis.getPose());
            // delay to save resources
            pros::delay(50);
        }
    });
	/*
	* Sets the starting X coordinate, Y coordinate, and
	* orientation of the robot in the program depending on which
	* autonomous is being used.
	*/
	switch (autonSelect) {
		case 0:
			// Odom Tests
			chassis.setPose(0, 0, 0); // X, Y, Heading (degrees)
			break;
		case 1:
			// Left Quals
			chassis.setPose(23,58, 90); // X, Y, Heading (degrees)
			break;
		case 2:
			// Right Quals
			chassis.setPose(0, 0, 0); // X, Y, Heading (degrees)
			break;
		case 3:
			// Left Elims
			chassis.setPose(0, 0, 0); // X, Y, Heading (degrees)
			break;
		case 4:
			// Right Elims
			chassis.setPose(0, 0, 0); // X, Y, Heading (degrees)
			break;
		case 5:
			// Full Autonomous Win Point
			chassis.setPose(0, 0, 0); // X, Y, Heading (degrees)
			break;
		case 6:
			// No Auton
			chassis.setPose(0, 0, 0); // X, Y, Heading (degrees)
			break;
		case 7:
			// Programming Skills
			chassis.setPose(0, 0, 0); // X, Y, Heading (degrees)
			break;
	}

	// Sets the kicker motor to hold its position when it is stopped
	KickerMotor.set_brake_mode(pros::E_MOTOR_BRAKE_HOLD);
	KickerMotor.brake();
	// Clears the controller screen
	controller.clear();
	// Resets the inertial sensor readings
	Inertial.reset();
}

/**
 * Runs while the robot is in the disabled state of Field Management System or
 * the VEX Competition Switch, following either autonomous or opcontrol. When
 * the robot is enabled, this task will exit.
 */
void disabled() {}

/**
 * Runs after initialize(), and before autonomous when connected to the Field
 * Management System or the VEX Competition Switch. This is intended for
 * competition-specific initialization routines, such as an autonomous selector
 * on the LCD.
 *
 * This task will exit when the robot is enabled and autonomous or opcontrol
 * starts.
 */
void competition_initialize() {}