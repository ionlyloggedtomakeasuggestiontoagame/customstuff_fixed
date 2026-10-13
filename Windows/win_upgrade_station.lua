function p.__on_start(wid)
    p.make_list(wid)
end

--Helper function.
function p.make_list(wid)
    local min_y = 0.2
    local max_y = 0.8
    local char_w = 0.015
    local char_h = 0.03
    local col = {x=0.0, y=0.5, z=0.5}
    local options = {
        "Press 1: plasma damage upgrade for 100 gold.",
        "Press 2: cannon damage upgrade for 100 gold.",
        "Press 3: laser damage upgrade for 100 gold.",
        "Press 4: rocket damage upgrade for 100 gold.",
        "Press 7: railgun damage upgrade for 200 gold.",
        "Press 8: EMP damage upgrade for 100 gold.",
        "Press 9: nuke damage upgrade for 200 gold.",
        "Press 0: dark hole damage upgrade for 300 gold.",
        "Press H: health max upgrade for 200 gold.",
        "Press R: health regen upgrade for 100 gold."}
    ga_win_widget_small_list_start(
        wid, min_y, max_y, char_w, char_h,
        col, options)
    ga_win_widget_small_list_set_use_nums(wid, false)
    ga_win_widget_small_list_mute_sound(wid, "select")
end

function p.__render(wid)
    ga_win_set_background_default(wid)
    ga_win_set_char_size(wid, 0.015, 0.03)

    local gold = ga_get_i("xar.player.gold.amount")
    ga_win_txt_center(wid, 0.9, "GOLD IN INVENTORY = " .. gold)

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
        return
    end

    local gold = ga_get_i("xar.player.gold.amount")
    local gold_delta = 0

    ga_win_widget_small_list_process_input(wid) --Not getting selection yet.
    local selection = -1
    if game_key.pressed_or_spammed(wid, "ENTER") then
        selection = ga_win_widget_small_list_get_selected(wid)
    end
    local sel_name = ga_win_widget_small_list_get_entry(wid, selection)
    --
    local sel_str = ""
    if string.match(sel_name, "Press 1") or
        game_key.pressed_or_spammed(wid, "1") then sel_str = "1" end
    if string.match(sel_name, "Press 2") or
        game_key.pressed_or_spammed(wid, "2") then sel_str = "2" end
    if string.match(sel_name, "Press 3") or
        game_key.pressed_or_spammed(wid, "3") then sel_str = "3" end
    if string.match(sel_name, "Press 4") or
        game_key.pressed_or_spammed(wid, "4") then sel_str = "4" end
    if string.match(sel_name, "Press 7") or
        game_key.pressed_or_spammed(wid, "7") then sel_str = "7" end
    if string.match(sel_name, "Press 8") or
        game_key.pressed_or_spammed(wid, "8") then sel_str = "8" end
    if string.match(sel_name, "Press 9") or
        game_key.pressed_or_spammed(wid, "9") then sel_str = "9" end
    if string.match(sel_name, "Press 0") or
        game_key.pressed_or_spammed(wid, "0") then sel_str = "0" end
    if string.match(sel_name, "Press H") or
        game_key.pressed_or_spammed(wid, "H") then sel_str = "H" end
    if string.match(sel_name, "Press R") or
        game_key.pressed_or_spammed(wid, "R") then sel_str = "R" end

    if sel_str == "1" then
        local price = 100
        if (gold >= price) then
            gold_delta = gold_delta - price
            std.set_bydelta_i("xar.player.gun1.damage_level", 1)
        end
        ga_win_widget_small_list_set_selected(wid, 0) --Fragile!!!
    end
    if sel_str == "2" then
        local price = 100
        if (gold >= price) then
            gold_delta = gold_delta - price
            std.set_bydelta_i("xar.player.gun2.damage_level", 1)
        end
        ga_win_widget_small_list_set_selected(wid, 1) --Fragile!!!
    end
    if sel_str == "3" then
        local price = 100
        if (gold >= price) then
            gold_delta = gold_delta - price
            std.set_bydelta_i("xar.player.gun3.damage_level", 1)
        end
        ga_win_widget_small_list_set_selected(wid, 2) --Fragile!!!
    end
    if sel_str == "4" then
        local price = 100
        if (gold >= price) then
            gold_delta = gold_delta - price
            std.set_bydelta_i("xar.player.gun4.damage_level", 1)
        end
        ga_win_widget_small_list_set_selected(wid, 3) --Fragile!!!
    end
    if sel_str == "7" then
        local price = 200
        if (gold >= price) then
            gold_delta = gold_delta - price
            std.set_bydelta_i("xar.player.gun7.damage_level", 1)
        end
        ga_win_widget_small_list_set_selected(wid, 4) --Fragile!!!
    end
    if sel_str == "8" then
        local price = 100
        if (gold >= price) then
            gold_delta = gold_delta - price
            std.set_bydelta_i("xar.player.gun8.damage_level", 1)
        end
        ga_win_widget_small_list_set_selected(wid, 5) --Fragile!!!
    end
    if sel_str == "9" then
        local price = 200
        if (gold >= price) then
            gold_delta = gold_delta - price
            std.set_bydelta_i("xar.player.gun9.damage_level", 1)
        end
        ga_win_widget_small_list_set_selected(wid, 6) --Fragile!!!
    end
    if sel_str == "0" then
        local price = 300
        if (gold >= price) then
            gold_delta = gold_delta - price
            std.set_bydelta_i("xar.player.gun0.damage_level", 1)
        end
        ga_win_widget_small_list_set_selected(wid, 7) --Fragile!!!
    end
    if sel_str == "H" then
        local price = 200
        if (gold >= price) then
            gold_delta = gold_delta - price
            std.set_bydelta_i("xar.player.health.level", 1)
        end
        ga_win_widget_small_list_set_selected(wid, 8) --Fragile!!!
    end
    if sel_str == "R" then
        local price = 100
        if (gold >= price) then
            gold_delta = gold_delta - price
            std.set_bydelta_i("xar.player.health.regen_level", 1)
        end
        ga_win_widget_small_list_set_selected(wid, 9) --Fragile!!!
    end

    if (gold_delta ~= 0) then
        std.set_bydelta_i("xar.player.gold.amount", gold_delta)
        ga_play_sound("pickup_upgrade")
    end
end
