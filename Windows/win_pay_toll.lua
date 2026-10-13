function p.__render(wid)
    ga_win_set_background_default(wid)

    local price = ga_get_i("temp.xar.ent.pay_toll.price")
    ga_win_txt_center(wid, 0.75, "Press ENTER")
    ga_win_txt_center(wid, 0.65, "to pay ^x00ff00" .. tostring(price) .. "^! gold")
    ga_win_txt_center(wid, 0.55, "to open the toll door")

    ga_win_set_char_size(wid, 0.015, 0.03)
    ga_win_txt_center(wid, 0.30, "It will remain open forever")

    -- local gold = ga_get_i("xar.player.gold.amount")
    -- ga_win_txt_center(wid, 0.9, "GOLD IN INVENTORY = " .. gold)

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

    if game_key.pressed_or_spammed(wid, "ENTER") then
        --Removing the door.
        game_toll_door.remove_toll_door()
        ga_window_pop()
    end
end
