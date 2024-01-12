#include "liblvgl/lvgl.h"
#include "autonSelector.hpp"

lv_obj_t * menuRectangle;

void CreateMenuRectangle() {
    menuRectangle = lv_obj_create(lv_scr_act());
    lv_obj_set_size(menuRectangle, 305, 230);
    lv_obj_align(menuRectangle, LV_ALIGN_TOP_RIGHT, -5, 5);

    lv_obj_t * label1 = lv_label_create(menuRectangle);
    lv_obj_align(label1, LV_ALIGN_TOP_LEFT, 0, 0);
    lv_obj_set_width(label1, 269);  /*Set smaller width to make the lines wrap*/
    lv_label_set_long_mode(label1, LV_LABEL_LONG_WRAP);
    lv_label_set_text(label1, "");
}

void MenuDropdownCB(lv_event_t * e)
{
    lv_obj_t * dropdown = lv_event_get_target(e);
    char selected[64];
    lv_dropdown_get_selected_str(dropdown, selected, sizeof(selected));

    if(strcmp(selected, "Autons") == 0) OpenAutonSelectMenu();
    else if (strcmp(selected, "Motors") == 0) OpenMotorMenu();
    else if (strcmp(selected, "Sensors") == 0) OpenSensorMenu();
    else if (strcmp(selected, "Keybinds") == 0) OpenKeybindMenu();
    else if (strcmp(selected, "Notes") == 0) OpenNotesMenu();
}

/**
 * Create a menu from a drop-down list and show some drop-down list features and styling
 */
void CreateMenuDropdown()
{
    /*Create a drop down list*/
    lv_obj_t * menuDropdown = lv_dropdown_create(lv_layer_top());
    lv_obj_set_size(menuDropdown, 160, 40);
    lv_obj_align(menuDropdown, LV_ALIGN_TOP_LEFT, 5, 5);
    lv_dropdown_set_options(menuDropdown, "Autons\n"
                            "Motors\n"
                            "Sensors\n"
                            "Keybinds\n"
                            "Notes");

    /*In a menu we don't need to show the last clicked item*/
    lv_dropdown_set_selected_highlight(menuDropdown, false);

    lv_obj_add_event_cb(menuDropdown, MenuDropdownCB, LV_EVENT_VALUE_CHANGED, NULL);
}