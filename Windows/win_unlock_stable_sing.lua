function p.get_area_name()
    return ga_get_s("temp.xar.ent.unlock_stable_sing.area")
end

function p.get_already_unlocked()
    return ga_get_b("temp.xar.ent.unlock_stable_sing.already_unlocked")
end

function p.__render(wid)
    ga_win_set_background_default(wid)

    local already_unlocked = p.get_already_unlocked()

    if not already_unlocked then
        ga_win_txt_center(wid, 0.9, "YOU HAVE JUST UNLOCKED A DOOR")
    else
        ga_win_txt_center(wid, 0.9, "DOOR ALREADY UNLOCKED")
    end
    ga_win_txt_center(wid, 0.84, "IN YOUR STABLE SINGLETONS ROOM")
    ga_win_txt_center(wid, 0.78, "FOR THE AREA")
    local area = p.get_area_name()
    if not already_unlocked then
        ga_win_txt_center(wid, 0.72, "^x00ff00" .. area)
    else
        ga_win_txt_center(wid, 0.72, area)
    end

    ga_win_set_char_size(wid, 0.015, 0.03)
    ga_win_txt_center(wid, 0.5, "YOU CAN FIND YOUR STABLE SINGLETONS ROOM")
    ga_win_txt_center(wid, 0.45, "BY TELEPORTING TO YOUR \"EMERGENCY\" WAYPOINT")

    ga_win_set_char_size(wid, 0.02, 0.04)
    ga_win_txt_center(wid, 0.06, "Go Back (ESC or F)")
end

function p.__process_input(wid)
    if( ga_win_key_pressed(wid, "ESC") or
        ga_win_key_pressed(wid, "F") or
        ga_win_mouse_pressed(wid, true) )
    then
        ga_play_sound("menu_back")
        ga_window_pop()
    end
end
