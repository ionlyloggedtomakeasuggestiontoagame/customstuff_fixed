function p.__render(wid)
    ga_win_set_background(wid, std.vec(0.0, 0.0, 0.0), 0.95)

    ga_win_set_char_size(wid, 0.03, 0.06)
    ga_win_txt_center(wid, 0.85, "GATEWAY MODE")

    ga_win_set_char_size(wid, 0.02, 0.04)
    ga_win_txt_center(wid, 0.2, "DO IT?")
    ga_win_txt_center(wid, 0.15, "Y / N")

    ga_win_txt_center(wid, 0.05, "Go Back (ESC)")

    ga_win_set_front_color(wid, std.vec(1.0, 0.0, 0.0))
    ga_win_txt_center(wid, 0.80, "DAMAGE TO ENEMIES: 100%")
    ga_win_txt_center(wid, 0.75, "DAMAGE FROM ENEMIES: 75%")

    ga_win_quad(wid, 0.35, 0.3, 0.65, 0.7, "icon_hard_1")
end

function p.__process_input(wid)
    if ga_win_key_pressed(wid, "Y") then
        --Actually changing the difficulty.
        game_difficulty.set(1)
        ga_play_sound("harp")
        ga_main_menu_pop_all(true)
        return
    end
    if  ga_win_key_pressed(wid, "ESC") or
        ga_win_key_pressed(wid, "N")
    then
        ga_play_sound("menu_back")
        ga_main_menu_pop()
        return
    end
end
