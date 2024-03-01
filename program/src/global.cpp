#include "main.h"

pros::Controller controller(pros::E_CONTROLLER_MASTER);

/*
    Dead Ports: 5, 10, 16, 17 (last updated 12/9/23)
    Best Battery: 13
*/

// --- Left Drivetrain Motors
// Initializes the back left motor to port 8, reversed, with a blue gearset
pros::Motor BLMotor(-1, pros::E_MOTOR_GEAR_BLUE);
// Initializes the middle left motor to port 9, reversed, with a blue gearset
pros::Motor MLMotor(-11, pros::E_MOTOR_GEAR_BLUE);
// Initializes the front left motor to port 3, reversed, with a blue gearset
pros::Motor FLMotor(-2, pros::E_MOTOR_GEAR_BLUE);

// --- Right Drivetrain Motors
// Initializes the back right motor to port 18 with a blue gearset
pros::Motor BRMotor(10, pros::E_MOTOR_GEAR_BLUE);
// Initializes the middle right motor to port 19 with a blue gearset
pros::Motor MRMotor(9, pros::E_MOTOR_GEAR_BLUE);
// Initializes the front right motor to port 20 with a blue gearset
pros::Motor FRMotor(20, pros::E_MOTOR_GEAR_BLUE);

// Drivetrain Motor Groups
pros::Motor_Group LMotors({BLMotor, MLMotor, FLMotor});
pros::Motor_Group RMotors({BRMotor, MRMotor, FRMotor});

// Initializes the kicker motor to port 12, reversed, with a red (torque) gearset
pros::Motor KickerMotor(18, pros::E_MOTOR_GEAR_RED, pros::E_MOTOR_ENCODER_DEGREES);
pros::Motor IntakeMotor(7, pros::E_MOTOR_GEAR_BLUE);

// Initializes DigitalOut objects to control the pneumatic wings.
pros::ADIDigitalOut HorizontalWingPistons('b');
pros::ADIDigitalOut VerticalWingPistons('a');

// Inertial Sensor
pros::IMU Inertial(8);

// Initializes the Optical Sensor to port 6
pros::Optical Optical(6);

// Boolean variable representing whether the kicker is on or not
bool kickerOn = false;
// Boolean variable represeting whether the drivetrain is set to drive in reverse or not
bool drivetrainReversed = false;

// Boolean variable representing whether manual mode is activated (true) or automatic mode is activated (false)
bool manualKicker = true;

// Prints driver control information onto the controller for the driver to view
void ControllerDisplay() {
    if(!drivetrainReversed) controller.print(0, 0, "Reversed: false");
    else if(drivetrainReversed) controller.print(0, 0, "Reversed: true");
    pros::delay(50);
    if(manualKicker) controller.print(1, 0, "Kicker: Manual");
    else if(!manualKicker) controller.print(1, 0, "Kicker: Automatic");
}

/*
    Integer variable representing which auton is set to run during the autonomous phase

    0: Odom Tests
    1: Left Quals
    2: Right Quals
    3: Left Elims
    4: Right Elims
    5: Full Autonomous Win Point
    6: No Auton
    7: New Programming Skills
    8: Old Programming Skills
*/
unsigned short int autonSelect = 7;

/*
    Integer variable to represent the current game phase

    1: Pre-Autonomous
    2: Autonomous
    3: Driver Control
*/
unsigned short int GamePhase = 1;

// LemLib drivetrain configuration
lemlib::Drivetrain drivetrain{
    &LMotors, // left drivetrain motors
    &RMotors, // right drivetrain motor
    10.35, // track width
    2.25, // wheel diameter
    450, // wheel rpm
    8 // chase power
};

// Odometry struct containing sensors passed into LemLib
lemlib::OdomSensors sensors{
    nullptr, // vertical tracking wheel 1 (null because we don't have one)
    nullptr, // vertical tracking wheel 2 (null because we don't have one)
    nullptr, // horizontal tracking wheel 1 (null because we don't have one)
    nullptr, // horizontal tracking wheel 2 (null because we don't have one)
    &Inertial // Inertial Sensor
};
 
// Linear Motion Controller
lemlib::ControllerSettings linearController(
    10,   // proportional gain (kP)
    0,    // integral gain (kI)
    32,   // derivative gain (kD)
    3,    // anti windup
    1,    // small error range, in inches
    100,  // small error range timeout, in milliseconds
    3,    // large error range, in inches
    500,  // large error range timeout, in milliseconds
    100    // maximum acceleration (slew)
);

// Angular Motion Controller
lemlib::ControllerSettings angularController(
    2,     // proportional gain (kP)
    0,  // integral gain (kI)
    10,    // derivative gain (kD)
    3,     // anti windup
    1,     // small error range, in degrees
    100,   // small error range timeout, in milliseconds
    3,     // large error range, in degrees
    500,   // large error range timeout, in milliseconds
    5     // maximum acceleration (slew)
);
 
// Creates the LemLib chassis
lemlib::Chassis chassis(drivetrain, linearController, angularController, sensors);