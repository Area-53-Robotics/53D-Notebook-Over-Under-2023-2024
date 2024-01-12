#include "liblvgl/lvgl.h"
#include "autonSelector.hpp"

lv_obj_t * autonScr = lv_obj_create(NULL);

lv_obj_t * autonList;
lv_obj_t * leftQualsBtn;
lv_obj_t * rightQualsBtn;
lv_obj_t * leftElimsBtn;
lv_obj_t * rightElimsBtn;
lv_obj_t * fullAWPBtn;
lv_obj_t * noAutonBtn;
lv_obj_t * pSkillsBtn;

void AutonListCB(lv_event_t * e)
{
    lv_obj_t * obj = lv_event_get_target(e);
    lv_obj_t * label = lv_obj_get_child(menuRectangle, 0);

    if(strcmp(lv_list_get_btn_text(autonList, obj), "Left Quals") == 0) {
        autonSelect = 1;
        lv_label_set_text(label,
                        "Selected: Left Quals Auton\n"
                        "Last Updated: 11/19/23\n"
                        "-----------------------------------------------------\n"
                        "Pending Description"
        );
    } else if(strcmp(lv_list_get_btn_text(autonList, obj), "Right Quals") == 0) {
        autonSelect = 2;
        lv_label_set_text(label,
                        "Selected: Right Quals Auton\n"
                        "Last Updated: 11/19/23\n"
                        "-----------------------------------------------------\n"
                        "Pending Description"
        );
    } else if(strcmp(lv_list_get_btn_text(autonList, obj), "Left Elims") == 0) {
        autonSelect = 3;
        lv_label_set_text(label,
                        "Selected: Left Elims Auton\n"
                        "Last Updated: 11/19/23\n"
                        "-----------------------------------------------------\n"
                        "Pending Description"
        );
    } else if(strcmp(lv_list_get_btn_text(autonList, obj), "Right Elims") == 0) {
        autonSelect = 4;
        lv_label_set_text(label,
                        "Selected: Right Elims Auton\n"
                        "Last Updated: 11/19/23\n"
                        "-----------------------------------------------------\n"
                        "Pending Description"
        );
    } else if(strcmp(lv_list_get_btn_text(autonList, obj), "Full AWP") == 0) {
        autonSelect = 5;
        lv_label_set_text(label,
                        "Selected: Full Auton Win Point\n"
                        "Last Updated: 11/19/23\n"
                        "-----------------------------------------------------\n"
                        "Pending Description"
        );
    } else if(strcmp(lv_list_get_btn_text(autonList, obj), "No Auton") == 0) {
        autonSelect = 6;
        lv_label_set_text(label,
                        "Selected: No Auton\n"
                        "Last Updated: 11/19/23\n"
                        "-----------------------------------------------------\n"
                        "It does nothing, what did you expect?"
        );
    } else if(strcmp(lv_list_get_btn_text(autonList, obj), "P-Skills") == 0) {
        autonSelect = 7;
        lv_label_set_text(label,
                        "Selected: Programming Skills\n"
                        "Last Updated: 11/19/23\n"
                        "-----------------------------------------------------\n"
                        "Pending Description"
        );
    }
}

void CreateAutonList()
{
    /*Create a list*/
    autonList = lv_list_create(autonScr);
    lv_obj_set_size(autonList, 160, 185);
    lv_obj_align(autonList, LV_ALIGN_TOP_LEFT, 5, 50);

    lv_list_add_text(autonList, "Quals Autons");
    leftQualsBtn = lv_list_add_btn(autonList, NULL, "Left Quals");
    lv_obj_add_event_cb(leftQualsBtn, AutonListCB, LV_EVENT_CLICKED, NULL);
    rightQualsBtn = lv_list_add_btn(autonList, NULL, "Right Quals");
    lv_obj_add_event_cb(rightQualsBtn, AutonListCB, LV_EVENT_CLICKED, NULL);

    lv_list_add_text(autonList, "Elims Autons");
    leftElimsBtn = lv_list_add_btn(autonList, NULL, "Left Elims");
    lv_obj_add_event_cb(leftElimsBtn, AutonListCB, LV_EVENT_CLICKED, NULL);
    rightElimsBtn = lv_list_add_btn(autonList, NULL, "Right Elims");
    lv_obj_add_event_cb(rightElimsBtn, AutonListCB, LV_EVENT_CLICKED, NULL);

    lv_list_add_text(autonList, "Other Autons");
    fullAWPBtn = lv_list_add_btn(autonList, NULL, "Full AWP");
    lv_obj_add_event_cb(fullAWPBtn, AutonListCB, LV_EVENT_CLICKED, NULL);
    noAutonBtn = lv_list_add_btn(autonList, NULL, "No Auton");
    lv_obj_add_event_cb(noAutonBtn, AutonListCB, LV_EVENT_CLICKED, NULL);
    pSkillsBtn = lv_list_add_btn(autonList, NULL, "P-Skills");
    lv_obj_add_event_cb(pSkillsBtn, AutonListCB, LV_EVENT_CLICKED, NULL);
}

void OpenAutonSelectMenu() {
    lv_scr_load_anim(autonScr, LV_SCR_LOAD_ANIM_NONE, 0, 0, false);

    CreateAutonList();
    CreateMenuRectangle();

    if(autonSelect == 1) lv_event_send(leftQualsBtn, LV_EVENT_CLICKED, NULL);
    else if(autonSelect == 2) lv_event_send(rightQualsBtn, LV_EVENT_CLICKED, NULL);
    else if(autonSelect == 3) lv_event_send(leftElimsBtn, LV_EVENT_CLICKED, NULL);
    else if(autonSelect == 4) lv_event_send(rightElimsBtn, LV_EVENT_CLICKED, NULL);
    else if(autonSelect == 5) lv_event_send(fullAWPBtn, LV_EVENT_CLICKED, NULL);
    else if(autonSelect == 6) lv_event_send(noAutonBtn, LV_EVENT_CLICKED, NULL);
    else if(autonSelect == 7) lv_event_send(pSkillsBtn, LV_EVENT_CLICKED, NULL);
}