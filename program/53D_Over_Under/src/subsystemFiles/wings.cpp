#include "main.h"

bool wingPistonsActivated = false;

void PneumaticWings() {
    if (!wingPistonsActivated) {
        WingPistons.set_value(1);
        wingPistonsActivated = true;
    } else {
        WingPistons.set_value(0);
        wingPistonsActivated = false;
    }
}