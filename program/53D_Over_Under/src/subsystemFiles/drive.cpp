#include "main.h"

// Integer variable to store the value of Axis 3
short int LYAxis;
// Integer variable to store the value of Axis 2
short int RYAxis;
// Boolean variable to keep track of whether the robot is moving in reverse or not
bool isReverse = false;

// Reverses the direction of the drivetrain
void DirectionToggle() {
    isReverse = !isReverse;
    ControllerDisplay();
}

// Returns the curved output based off of the joystick value input as a parameter
float GetCurveOutput(int input) {
    return (std::exp(-20/12.7)+std::exp((std::abs(input)-127)/12.7)*(1-std::exp(-20/12.7))) * input;
}

// Main drivetrain function called during each loop of driver control
void SetDriveMotors() {
    // Update Joystick Values
    LYAxis = Controller.get_analog(pros::E_CONTROLLER_ANALOG_LEFT_Y);
    RYAxis = Controller.get_analog(pros::E_CONTROLLER_ANALOG_RIGHT_Y);
    
    // Deadzone
    if(abs(LYAxis) <= 10) LYAxis = 0;
    if(abs(RYAxis) <= 10) RYAxis = 0;

    // Sets the motors to move based on the joystick input values
    if (!isReverse) {
        LMotors.move(GetCurveOutput(LYAxis));
        RMotors.move(GetCurveOutput(RYAxis));
    } else if (isReverse) {
        LMotors.move(GetCurveOutput(RYAxis) * -1);
        RMotors.move(GetCurveOutput(LYAxis) * -1);
    }
}