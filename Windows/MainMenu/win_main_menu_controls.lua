function p.__on_start(wid)
    --Nothing to do.
end

function p.__on_end(wid)
    --Nothing to do.
end

function p.__render(wid)
    ga_win_set_background(wid, std.vec(0.0, 0.0, 0.0), 0.95)

    ga_win_set_char_size(wid, 0.03, 0.06)
    ga_win_txt_center(wid, 0.90, "DEFAULT CONTROLS")

    ga_win_set_char_size(wid, 0.01, 0.02)
    -- ga_win_set_char_size(wid, 0.02, 0.04)
    ga_win_txt_center(wid, 0.85, "TO CHANGE THE CONTROLS, GO TO")
    ga_win_txt_center(wid, 0.82, "MAIN MENU -> OPTIONS -> CONTROLS")
    ga_win_txt_center(wid, 0.79, "-> INPUT BINDINGS -> CONTROLS")

    ga_win_quad(wid, 0.25, 0.1, 0.75, 0.75, "picture_tut_controls")

    -- ga_win_txt_center(wid, 0.5, "Y / N")

    ga_win_set_char_size(wid, 0.02, 0.04)
    ga_win_txt_center(wid, 0.02, "Go Back (ESC)")

    -- ga_win_set_char_size(wid, 0.015, 0.03)
    -- ga_win_set_front_color(wid, std.vec(1.0, 1.0, 0.0))
    -- if( ga_genesis() ) then
    --     ga_win_txt_center(wid, 0.4, "YOU WILL LOSE 30 GOLD")
    -- else
    --     ga_win_txt_center(wid, 0.4, "YOU WILL LOSE HEALTH ABOVE 100%, ARMOR, AMMO, AND 30 GOLD")
    -- end
end

function p.__process_input(wid)
    -- if ga_win_key_pressed(wid, "Y") then
    --     ga_set_i("xar.player.health.amount", -1)
    --     ga_play_sound("player_death")
    --     ga_main_menu_pop_all(true)
    -- end
    -- if ga_win_key_pressed(wid, "N") then
    --     ga_play_sound("menu_back")
    --     ga_main_menu_pop()
    -- end
    if ga_win_key_pressed(wid, "ESC") then
        ga_play_sound("menu_back")
        ga_main_menu_pop()
        return
    end
end
