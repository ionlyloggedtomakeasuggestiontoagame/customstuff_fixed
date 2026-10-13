local main_button_handle = 1

function p.__start(wid)
    local txt = "PRESS ENTER"
    ga_win_widget_button_start(wid, main_button_handle, 0.0, 0.65, 0.02, 0.04, txt)
    ga_win_widget_button_center_x_at(wid, main_button_handle, 0.5)

    local go_back_button_y = 0.06
    local w = 0.02
    local h = 0.04
    local go_back_msg = "Return To Game (ESC or F)"
    ga_win_widget_go_back_button_start(
        wid, go_back_button_y, w, h, go_back_msg)
end

function p.__render(wid)
    ga_win_set_background_default(wid)

    -- ga_win_txt_center(wid, 0.75, "Press ENTER")
    local price = ga_get_i("temp.xar.ent.pay_growth.price")
    local price_str = game_str.add_commas(price)
    ga_win_txt_center(wid, 0.55, "TO PAY ^x00ff00" .. price_str .. "^! GOLD")
    ga_win_txt_center(wid, 0.45, "TO ^xff0000GROW ^!1 LEVEL")
end

function p.__process_input(wid)
    if( ga_win_widget_go_back_button_process_input(wid) or
        ga_win_key_pressed(wid, "F") )
    then
        ga_play_sound("menu_back")
        ga_window_pop()
        return
    end

    local which_button = ga_win_widget_button_process_input(wid)

    if( which_button == main_button_handle or 
        game_key.pressed_or_spammed(wid, "ENTER") )
    then
        --Removing the door.
        ga_grow2(std.block_center(std.bp(7,7,7)))
        ga_play_sound("pickup_gold_medium")
        ga_play_sound("grow")
        ga_window_pop()
        return
    end
end
