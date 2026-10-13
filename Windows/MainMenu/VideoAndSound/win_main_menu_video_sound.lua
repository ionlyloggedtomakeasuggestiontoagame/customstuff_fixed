function p.__on_start(wid)
    local min_y = 0.3
    local max_y = 0.6
    local char_w = 0.03
    local char_h = 0.06
    local col = {x=0.0, y=0.5, z=0.5}
    local options = {}
    options = {
        "HUD",
        "FLASHING LIGHTS",
        "SOUND"}
    ga_win_widget_small_list_start(
        wid, min_y, max_y, char_w, char_h,
        col, options)
end

function p.__on_end(wid)
    --Nothing to do.
end

function p.__render(wid)
    ga_win_set_background(wid, std.vec(0.0, 0.0, 0.0), 0.95)

    ga_win_set_char_size(wid, 0.03, 0.06)
    ga_win_txt_center(wid, 0.85, "VIDEO + SOUND")

    ga_win_set_char_size(wid, 0.02, 0.04)
    ga_win_txt_center(wid, 0.06, "Go Back (ESC)")
end

function p.__process_input(wid)
    if ga_win_key_pressed(wid, "ESC") then
        ga_play_sound("menu_back")
        ga_main_menu_pop()
        return
    end

    local sel = ga_win_widget_small_list_process_input(wid)
    local sel_str = ga_win_widget_small_list_get_entry(wid, sel)

    if( sel_str == "HUD" ) then
        ga_main_menu_push("win_main_menu_hud")
    end
    if( sel_str == "FLASHING LIGHTS" ) then
        ga_main_menu_push("win_main_menu_flashes")
    end
    if( sel_str == "SOUND" ) then
        ga_main_menu_push("win_main_menu_sound")
        return
    end
end
