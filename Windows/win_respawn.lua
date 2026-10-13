function p.__render(wid)
    ga_win_set_background(wid, std.vec(0.0, 0.0, 0.0), 1.0)

    ga_win_txt_center(wid, 0.6, "^xff0000Press ENTER to respawn.^!")
    ga_win_txt_center(wid, 0.5, "^xff0000You will be teleported to your respawn point.")
    ga_win_txt_center(wid, 0.4, "^xff0000YOU WILL LOSE ALL AMMO AND ARMOR!!!")
    ga_win_txt_center(wid, 0.3, "^xff0000You will lose 30 gold.")

    ga_win_set_char_size(wid, 0.02, 0.04)
    ga_win_txt_center(wid, 0.06, "Go Back (ESC or F)")
end

function p.__process_input(wid)
    if( ga_win_key_pressed(wid, "ESC") or
        ga_win_key_pressed(wid, "F") )
    then
        ga_play_sound("menu_back")
        ga_window_pop()
    end

    if( ga_win_key_pressed(wid, "ENTER") ) then
        --Actually respawning.
        ga_play_sound_menu("harp")
        ga_window_pop()
        ga_command("respawn force")
    end
end
