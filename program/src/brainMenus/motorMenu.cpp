#include "liblvgl/lvgl.h"
#include "autonSelector.hpp"
#include "main.h"

lv_obj_t * motorScr = lv_obj_create(NULL);

void OpenMotorMenu() {
    lv_scr_load_anim(motorScr, LV_SCR_LOAD_ANIM_NONE, 0, 0, false);

    CreateMotorTable();
    CreateTelemetryRectangle();
    CreateTelemetryButtons();
}

void MotorTableCB(lv_event_t * e)
{
    lv_obj_t * obj = lv_event_get_target(e);
    lv_obj_draw_part_dsc_t * dsc = lv_event_get_draw_part_dsc(e);

    /*If the cells are drawn...*/
    if(dsc->part == LV_PART_ITEMS) {
        uint32_t row = dsc->id /  lv_table_get_col_cnt(obj);
        uint32_t col = dsc->id - row * lv_table_get_col_cnt(obj);

        // Align all cells to the left
        dsc->label_dsc->align = LV_TEXT_ALIGN_LEFT;

        // Make the second column (temperature and power) red
        if(col == 1) {
            dsc->rect_dsc->bg_color = lv_color_mix(lv_palette_main(LV_PALETTE_RED), dsc->rect_dsc->bg_color, LV_OPA_40);
            // dsc->rect_dsc->bg_opa = LV_OPA_COVER; - this line doesn't seem to do anything
        }

        // Make the third column (velocity and voltage) blue
        else if(col == 2) {
            dsc->rect_dsc->bg_color = lv_color_mix(lv_palette_main(LV_PALETTE_BLUE), dsc->rect_dsc->bg_color, LV_OPA_40);
            // dsc->rect_dsc->bg_opa = LV_OPA_COVER; - this line doesn't seem to do anything
        }

        // Make the fourth column (torque and current) yellow
        else if(col == 3) {
            dsc->rect_dsc->bg_color = lv_color_mix(lv_palette_main(LV_PALETTE_YELLOW), dsc->rect_dsc->bg_color, LV_OPA_40);
            // dsc->rect_dsc->bg_opa = LV_OPA_COVER; - this line doesn't seem to do anything
        }
    }
}

lv_obj_t * motorTable;
bool showingTemp = true;
bool showingVelocity = true;
bool showingTorque = true;

void CreateMotorTable() {
    motorTable = lv_table_create(motorScr);

    lv_table_set_row_cnt(motorTable, MotorObjectList.size());
    lv_table_set_col_cnt(motorTable, 4);

    lv_table_set_col_width(motorTable, 0, 74);
    lv_table_set_col_width(motorTable, 1, 76);
    lv_table_set_col_width(motorTable, 2, 76);
    lv_table_set_col_width(motorTable, 3, 76);

    lv_obj_set_size(motorTable, 305, 230);
    lv_obj_set_style_pad_ver(motorTable, (111 / MotorObjectList.size()) - 5, LV_PART_ITEMS); //8
    lv_obj_set_style_pad_hor(motorTable, 2, LV_PART_ITEMS);
    lv_obj_set_style_text_font(motorTable, &lv_font_montserrat_10, LV_PART_ITEMS);
    lv_obj_align(motorTable, LV_ALIGN_TOP_RIGHT, -5, 5);

    /*Add an event callback to to apply some custom drawing*/
    lv_obj_add_event_cb(motorTable, MotorTableCB, LV_EVENT_DRAW_PART_BEGIN, NULL);

    for(int i = 0; i < MotorObjectList.size(); i++) {
        lv_table_set_cell_value_fmt(motorTable, i, 0, "%s", MotorNameList[i].c_str());
    }

    UpdateRedColumn(true);
    UpdateBlueColumn(true);
    UpdateYellowColumn(true);
}

void UpdateRedColumn(bool showTemp) {
    if(showTemp) { 
        for(int i = 0; i < MotorObjectList.size(); i++) {
            lv_table_set_cell_value_fmt(motorTable, i, 1, "%lf C", MotorObjectList[i].get_temperature());
        }
    } else {
        for(int i = 0; i < MotorObjectList.size(); i++) {
            lv_table_set_cell_value_fmt(motorTable, i, 1, "%lf W", MotorObjectList[i].get_power());
        }
    }
}

void UpdateBlueColumn(bool showVelocity) {
    if(showVelocity) { 
        for(int i = 0; i < MotorObjectList.size(); i++) {
            lv_table_set_cell_value_fmt(motorTable, i, 2, "%lf RPM", MotorObjectList[i].get_actual_velocity());
        }
    } else {
        for(int i = 0; i < MotorObjectList.size(); i++) {
            lv_table_set_cell_value_fmt(motorTable, i, 2, "%lf mV", MotorObjectList[i].get_voltage());
        }
    }
}

void UpdateYellowColumn(bool showTorque) {
    if(showTorque) { 
        for(int i = 0; i < MotorObjectList.size(); i++) {
            lv_table_set_cell_value_fmt(motorTable, i, 3, "%lf Nm", MotorObjectList[i].get_torque());
        }
    } else {
        for(int i = 0; i < MotorObjectList.size(); i++) {
            lv_table_set_cell_value_fmt(motorTable, i, 3, "%lf mA", MotorObjectList[i].get_current_draw());
        }
    }
}

lv_obj_t * telemetryRect;

void CreateTelemetryRectangle() {
    static lv_style_t telemetryRectStyle;
    lv_style_init(&telemetryRectStyle);
    lv_style_set_pad_all(&telemetryRectStyle, 0);
    lv_style_set_pad_gap(&telemetryRectStyle, 0);
    lv_style_set_pad_top(&telemetryRectStyle, 2.5);
    lv_style_set_pad_bottom(&telemetryRectStyle, 2.5);

    telemetryRect = lv_obj_create(motorScr);
    lv_obj_set_size(telemetryRect, 160, 185);
    lv_obj_align(telemetryRect, LV_ALIGN_TOP_LEFT, 5, 50);
    lv_obj_add_style(telemetryRect, &telemetryRectStyle, 0);
}

void ButtonMatrixCB(lv_event_t * e)
{
    lv_obj_t * obj = lv_event_get_target(e);
    uint32_t id = lv_btnmatrix_get_selected_btn(obj);

    short int i;
    for(i = 0; i < 2; i++) {
        if(lv_btnmatrix_has_btn_ctrl(obj, i, LV_BTNMATRIX_CTRL_CHECKED)) break;
    }
    lv_btnmatrix_set_btn_ctrl(obj, i, LV_BTNMATRIX_CTRL_CHECKED);

    if(strcmp(lv_btnmatrix_get_btn_text(obj, id), "Temp") == 0) {
        UpdateRedColumn(true);
        showingTemp = true;
    } else if(strcmp(lv_btnmatrix_get_btn_text(obj, id), "Power") == 0) {
        UpdateRedColumn(false);
        showingTemp = false;
    } else if(strcmp(lv_btnmatrix_get_btn_text(obj, id), "Velocity") == 0) {
        UpdateBlueColumn(true);
        showingVelocity = true;
    } else if(strcmp(lv_btnmatrix_get_btn_text(obj, id), "Voltage") == 0) {
        UpdateBlueColumn(false);
        showingVelocity = false;
    } else if(strcmp(lv_btnmatrix_get_btn_text(obj, id), "Torque") == 0) {
        UpdateYellowColumn(true);
        showingTorque = true;
    } else if(strcmp(lv_btnmatrix_get_btn_text(obj, id), "Current") == 0) {
        UpdateYellowColumn(false);
        showingTorque = false;
    }
}

void RedButtonMatrixStyleCB(lv_event_t * e)
{
    lv_obj_t * obj = lv_event_get_target(e);
    lv_obj_draw_part_dsc_t * dsc = lv_event_get_draw_part_dsc(e);

    /*When the button matrix draws the buttons...*/
    if(dsc->class_p == &lv_btnmatrix_class && dsc->type == LV_BTNMATRIX_DRAW_PART_BTN) {
        /*Change the draw descriptor of the 1st button*/
        if(dsc->id == 0) {
            if(showingTemp)  dsc->rect_dsc->bg_color = lv_palette_main(LV_PALETTE_RED);
            else dsc->rect_dsc->bg_color = lv_palette_main(LV_PALETTE_GREY);
        }
        /*Change the draw descriptor of the 2nd button*/
        else if(dsc->id == 1) {
            if(!showingTemp)  dsc->rect_dsc->bg_color = lv_palette_main(LV_PALETTE_RED);
            else dsc->rect_dsc->bg_color = lv_palette_main(LV_PALETTE_GREY);
        }
    }
}

void BlueButtonMatrixStyleCB(lv_event_t * e)
{
    lv_obj_t * obj = lv_event_get_target(e);
    lv_obj_draw_part_dsc_t * dsc = lv_event_get_draw_part_dsc(e);

    /*When the button matrix draws the buttons...*/
    if(dsc->class_p == &lv_btnmatrix_class && dsc->type == LV_BTNMATRIX_DRAW_PART_BTN) {
        /*Change the draw descriptor of the 1st button*/
        if(dsc->id == 0) {
            if(showingVelocity)  dsc->rect_dsc->bg_color = lv_palette_main(LV_PALETTE_BLUE);
            else dsc->rect_dsc->bg_color = lv_palette_main(LV_PALETTE_GREY);
        }
        /*Change the draw descriptor of the 2nd button*/
        else if(dsc->id == 1) {
            if(!showingVelocity)  dsc->rect_dsc->bg_color = lv_palette_main(LV_PALETTE_BLUE);
            else dsc->rect_dsc->bg_color = lv_palette_main(LV_PALETTE_GREY);
        }
    }
}

void YellowButtonMatrixStyleCB(lv_event_t * e)
{
    lv_obj_t * obj = lv_event_get_target(e);
    lv_obj_draw_part_dsc_t * dsc = lv_event_get_draw_part_dsc(e);

    /*When the button matrix draws the buttons...*/
    if(dsc->class_p == &lv_btnmatrix_class && dsc->type == LV_BTNMATRIX_DRAW_PART_BTN) {
        /*Change the draw descriptor of the 1st button*/
        if(dsc->id == 0) {
            if(showingTorque)  dsc->rect_dsc->bg_color = lv_palette_main(LV_PALETTE_YELLOW);
            else dsc->rect_dsc->bg_color = lv_palette_main(LV_PALETTE_GREY);
        }
        /*Change the draw descriptor of the 2nd button*/
        else if(dsc->id == 1) {
            if(!showingTorque)  dsc->rect_dsc->bg_color = lv_palette_main(LV_PALETTE_YELLOW);
            else dsc->rect_dsc->bg_color = lv_palette_main(LV_PALETTE_GREY);
        }
    }
}

const char * RedButtonMap[] = {"Temp", "Power", NULL};
const char * BlueButtonMap[] = {"Velocity", "Voltage", NULL};
const char * YellowButtonMap[] = {"Torque", "Current", NULL};

void CreateTelemetryButtons() {
    static lv_style_t teleBtnBGStyle;
    lv_style_init(&teleBtnBGStyle);
    lv_style_set_pad_all(&teleBtnBGStyle, 0);
    lv_style_set_pad_gap(&teleBtnBGStyle, 0);
    lv_style_set_clip_corner(&teleBtnBGStyle, true);
    lv_style_set_radius(&teleBtnBGStyle, LV_RADIUS_CIRCLE);
    lv_style_set_border_width(&teleBtnBGStyle, 0);

    static lv_style_t teleBtnStyle;
    lv_style_init(&teleBtnStyle);
    lv_style_set_radius(&teleBtnStyle, 0);
    lv_style_set_border_width(&teleBtnStyle, 1);
    lv_style_set_border_opa(&teleBtnStyle, LV_OPA_50);
    lv_style_set_border_color(&teleBtnStyle, lv_palette_main(LV_PALETTE_GREY));
    lv_style_set_border_side(&teleBtnStyle, LV_BORDER_SIDE_INTERNAL);
    lv_style_set_radius(&teleBtnStyle, 0);

    // 1. Red buttons (temperature and power)
    lv_obj_t * RedButtonMatrix = lv_btnmatrix_create(telemetryRect);
    lv_btnmatrix_set_map(RedButtonMatrix, RedButtonMap);

    lv_obj_add_style(RedButtonMatrix, &teleBtnBGStyle, 0);
    lv_obj_add_style(RedButtonMatrix, &teleBtnStyle, LV_PART_ITEMS);

    lv_obj_set_size(RedButtonMatrix, 150, 57);
    lv_obj_align(RedButtonMatrix, LV_ALIGN_TOP_MID, 0, 0);

    lv_obj_add_event_cb(RedButtonMatrix, ButtonMatrixCB, LV_EVENT_VALUE_CHANGED, NULL);
    lv_obj_add_event_cb(RedButtonMatrix, RedButtonMatrixStyleCB, LV_EVENT_DRAW_PART_BEGIN, NULL);

    /*Allow selecting on one number at time*/
    lv_btnmatrix_set_btn_ctrl_all(RedButtonMatrix, LV_BTNMATRIX_CTRL_CHECKABLE);

    lv_btnmatrix_set_one_checked(RedButtonMatrix, true);
    lv_btnmatrix_set_btn_ctrl(RedButtonMatrix, 0, LV_BTNMATRIX_CTRL_CHECKED);

    // 2. Blue buttons (velocity and voltage)
    lv_obj_t * BlueButtonMatrix = lv_btnmatrix_create(telemetryRect);
    lv_btnmatrix_set_map(BlueButtonMatrix, BlueButtonMap);

    lv_obj_add_style(BlueButtonMatrix, &teleBtnBGStyle, 0);
    lv_obj_add_style(BlueButtonMatrix, &teleBtnStyle, LV_PART_ITEMS);

    lv_obj_set_size(BlueButtonMatrix, 150, 57);
    lv_obj_align(BlueButtonMatrix, LV_ALIGN_CENTER, 0, 0);

    lv_obj_add_event_cb(BlueButtonMatrix, ButtonMatrixCB, LV_EVENT_VALUE_CHANGED, NULL);
    lv_obj_add_event_cb(BlueButtonMatrix, BlueButtonMatrixStyleCB, LV_EVENT_DRAW_PART_BEGIN, NULL);

    /*Allow selecting on one number at time*/
    lv_btnmatrix_set_btn_ctrl_all(BlueButtonMatrix, LV_BTNMATRIX_CTRL_CHECKABLE);

    lv_btnmatrix_set_one_checked(BlueButtonMatrix, true);
    lv_btnmatrix_set_btn_ctrl(BlueButtonMatrix, 0, LV_BTNMATRIX_CTRL_CHECKED);


    // 3. Yellow buttons (torque and current)
    lv_obj_t * YellowButtonMatrix = lv_btnmatrix_create(telemetryRect);
    lv_btnmatrix_set_map(YellowButtonMatrix, YellowButtonMap);

    lv_obj_add_style(YellowButtonMatrix, &teleBtnBGStyle, 0);
    lv_obj_add_style(YellowButtonMatrix, &teleBtnStyle, LV_PART_ITEMS);

    lv_obj_set_size(YellowButtonMatrix, 150, 57);
    lv_obj_align(YellowButtonMatrix, LV_ALIGN_BOTTOM_MID, 0, 0);

    lv_obj_add_event_cb(YellowButtonMatrix, ButtonMatrixCB, LV_EVENT_VALUE_CHANGED, NULL);
    lv_obj_add_event_cb(YellowButtonMatrix, YellowButtonMatrixStyleCB, LV_EVENT_DRAW_PART_BEGIN, NULL);

    /*Allow selecting on one number at time*/
    lv_btnmatrix_set_btn_ctrl_all(YellowButtonMatrix, LV_BTNMATRIX_CTRL_CHECKABLE);

    lv_btnmatrix_set_one_checked(YellowButtonMatrix, true);
    lv_btnmatrix_set_btn_ctrl(YellowButtonMatrix, 0, LV_BTNMATRIX_CTRL_CHECKED);
}