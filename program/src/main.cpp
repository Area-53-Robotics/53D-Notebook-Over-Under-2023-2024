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


	// Sets the kicker motor to hold its position when it is stopped
	KickerMotor.set_brake_mode(pros::E_MOTOR_BRAKE_HOLD);
	// Brakes the kicker motor when the program is initialized
	KickerMotor.brake();
	// Clears the controller screen
	controller.clear();
	// Calibrates the LemLib chassis (takes 3 seconds)
	chassis.calibrate();

	// Prints LemLib chassis position values to the computer terminal for debugging purposes
	pros::Task terminalTask([&]() {
        while (true) {
            // print robot location to the brain screen
            std::cout << "X: " << chassis.getPose().x << std::endl; // x
            std::cout << "Y: " << chassis.getPose().y << std::endl; // y
            std::cout << "Theta: " << chassis.getPose().theta << std::endl; // heading
            std::cout << "Inertial: " << Inertial.get_heading() << std::endl; // heading
			std::cout << "Kicker: " << KickerMotor.get_position() << std::endl;
            std::cout << "----------------------------" << std::endl;
            // delay to save resources
            pros::delay(500);
        }
    });
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