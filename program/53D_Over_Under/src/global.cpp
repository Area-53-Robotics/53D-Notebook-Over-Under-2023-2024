#include "main.h"

pros::Controller Controller(pros::E_CONTROLLER_MASTER);

/*
    Dead Ports: 5, 10, 16, 17 (last updated 12/9/23)
    Best Battery: 13
*/

pros::Motor BLMotor(-8, pros::v5::MotorGears::blue, pros::v5::MotorEncoderUnits::rotations);
pros::Motor FLMotor(-9, pros::v5::MotorGears::blue, pros::v5::MotorEncoderUnits::rotations);
pros::Motor BRMotor(18, pros::v5::MotorGears::blue, pros::v5::MotorEncoderUnits::rotations);
pros::Motor FRMotor(19, pros::v5::MotorGears::blue, pros::v5::MotorEncoderUnits::rotations);

pros::MotorGroup LMotors({-8, -9}, pros::v5::MotorGears::blue, pros::v5::MotorEncoderUnits::rotations);
pros::MotorGroup RMotors({18, 19}, pros::v5::MotorGears::blue, pros::v5::MotorEncoderUnits::rotations);
pros::MotorGroup Drivetrain({-8, -9, 18, 19}, pros::v5::MotorGears::blue, pros::v5::MotorEncoderUnits::rotations);
pros::MotorGroup LTDrivetrain({-8, -9, -18, -19}, pros::v5::MotorGears::blue, pros::v5::MotorEncoderUnits::rotations);
pros::MotorGroup RTDrivetrain({8, 9, 18, 19}, pros::v5::MotorGears::blue, pros::v5::MotorEncoderUnits::rotations);

pros::Motor FlywheelMotor(15, pros::v5::MotorGears::blue, pros::v5::MotorUnits::degrees);
pros::Motor ArmMotor(7, pros::v5::MotorGears::red, pros::v5::MotorUnits::degrees);

pros::Motor IntakeMotor(11, pros::v5::MotorGears::blue);

pros::adi::DigitalOut WingPistons(2);

std::array<std::string,7> MotorNameList = {"BL", "FL", "BR", "FR", "Arm", "Flywheel", "Intake"};
std::array<pros::Motor,7> MotorObjectList = {BLMotor, FLMotor, BRMotor, FRMotor, ArmMotor, FlywheelMotor, IntakeMotor};

pros::Rotation CataSensor(4);

void ControllerDisplay() {
    if(!isReverse) Controller.print(0, 0, "Reversed: false");
    else if(isReverse) Controller.print(0, 0, "Reversed: true");
    pros::delay(50);
}

/*
    1: Left Quals
    2: Right Quals
    3: Left Elims
    4: Right Elims
    5: Full Autonomous Win Point
    6: No Auton
    7: Programming Skills
*/
unsigned short int autonSelect = 2;

/*
*   Integer variable to represent the current game phase: 
    1: Pre-Autonomous
    2: Autonomous
    3: Driver Control
*/
unsigned short int GamePhase = 1;