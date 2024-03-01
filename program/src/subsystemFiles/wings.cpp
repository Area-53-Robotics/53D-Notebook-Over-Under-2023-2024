#include "main.h"
// Boolean variable to store whether the wings' pneumatic pistons have been activated, it is initialized as false
bool horizontalWingsActivated = false;
bool verticalWingsActivated = false;

// if then sentence to set the activation value between true and false
void ToggleHorizontalPneumaticWings() {
    // When this function is called...
    if(!horizontalWingsActivated) {
        // if the pneumatic pistons were not activated before, they become activated
        HorizontalWingPistons.set_value(1);
        horizontalWingsActivated = true;
    } else {
        // if the pneumatic pistons were activated before, they become deactivated
        HorizontalWingPistons.set_value(0);
        horizontalWingsActivated = false;
    }
}

// if then sentence to set the activation value between true and false
void ToggleVerticalPneumaticWings() {
    // When this function is called...
    if(!verticalWingsActivated) {
        // if the pneumatic pistons were not activated before, they become activated
        VerticalWingPistons.set_value(1);
        verticalWingsActivated = true;
    } else {
        // if the pneumatic pistons were activated before, they become deactivated
        VerticalWingPistons.set_value(0);
        verticalWingsActivated = false;
    }
}