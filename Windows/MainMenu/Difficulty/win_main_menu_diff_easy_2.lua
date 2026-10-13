function p.__on_start(wid)
    --Nothing to do.
end

function p.__on_end(wid)
    --Nothing to do.
end

function p.__render(wid)
    ga_win_set_background(wid, std.vec(0.0, 0.0, 0.0), 0.95)

    ga_win_set_char_size(wid, 0.03, 0.06)
    ga_win_txt_center(wid, 0.85, "TRANQUILITY MODE")

    ga_win_set_char_size(wid, 0.015, 0.03)
    ga_win_txt_center(wid, 0.8, "TRANQUILITY MODE IS EASIER THAN NORMAL MODE")
    ga_win_txt_center(wid, 0.75, "YOU CAN CHANGE TO THIS DIFFICULTY MODE AT ANY TIME")

    ga_win_set_char_size(wid, 0.02, 0.04)
    ga_win_txt_center(wid, 0.06, "Go Back (ESC)")

    ga_win_set_front_color(wid, std.vec(1.0, 1.0, 0.0))
    ga_win_set_char_size(wid, 0.015, 0.03)
    ga_win_txt_center(wid, 0.50, "IN TRANQUILITY MODE, YOU DEAL 400% DAMAGE TO ENEMIES.")
    ga_win_txt_center(wid, 0.45, "ENEMIES DEAL 25% DAMAGE TO YOU.")
    ga_win_txt_center(wid, 0.40, "YOU GET TWICE AS MUCH EXPERIENCE FOR FIGHTING MONSTERS.")
    ga_win_txt_center(wid, 0.35, "EVERY UPGRADE YOU GET COUNTS AS 2 UPGRADES.")

    local cur_diff = game_difficulty.human_readable2()
    if( cur_diff == "tranquility" ) then
        ga_win_set_front_color(wid, std.vec(1.0, 0.0, 0.0))
        ga_win_txt_center(wid, 0.25, "YOU ARE ALREADY IN TRANQUILITY MODE")
    else
        ga_win_txt_center(wid, 0.25, "MAKE THE SWITCH?")
        ga_win_txt_center(wid, 0.20, "Y / N")
    end
end

function p.__process_input(wid)
    local cur_diff = game_difficulty.human_readable()
    if( cur_diff ~= "tranquility" ) then
        if ga_win_key_pressed(wid, "Y") then
            --Actually changing the difficulty.
            game_difficulty.set(-2)
            ga_play_sound("pickup_gold")
            ga_main_menu_pop_all(true)
            return
        end
        if ga_win_key_pressed(wid, "N") then
            ga_play_sound("menu_back")
            ga_main_menu_pop()
            return
        end
    end
    if ga_win_key_pressed(wid, "ESC") then
        ga_play_sound("menu_back")
        ga_main_menu_pop()
        return
    end
end
