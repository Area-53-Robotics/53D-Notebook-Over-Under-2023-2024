#include "liblvgl/lvgl.h"
#include "autonSelector.hpp"
#include "pros/misc.hpp"

lv_obj_t * sensorScr = lv_obj_create(NULL);

void OpenSensorMenu() {
    lv_scr_load_anim(sensorScr, LV_SCR_LOAD_ANIM_NONE, 0, 0, false);

    CreateBatteryRect();
}

void CreateBatteryRect() {
    lv_obj_t * batteryRect = lv_obj_create(sensorScr);
    lv_obj_set_size(batteryRect, 305, 100);
    lv_obj_align(batteryRect, LV_ALIGN_LEFT_MID, 0, 0);

    lv_obj_t * label1 = lv_label_create(batteryRect);
    lv_obj_align(label1, LV_ALIGN_TOP_LEFT, 0, 0);
    lv_obj_set_width(label1, 269);  /*Set smaller width to make the lines wrap*/
    lv_label_set_long_mode(label1, LV_LABEL_LONG_WRAP);
    lv_label_set_text_fmt(label1, "Battery\nLevel: %i%%\nCurrent: %lf mA\nTemperature: %lf C\nVoltage: %lf mV",
                        pros::battery::get_capacity(), pros::battery::get_current(),
                        pros::battery::get_temperature(), pros::battery::get_voltage());
    // lv_label_set_text_fmt(label1, "Capacity: %f", pros::battery::get_capacity());
}