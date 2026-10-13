function p.__on_start(wid)
    p.make_list(wid)
end

--Helper function.
function p.make_list(wid)
    local ammo7 = ga_get_i("xar.player.gun7.ammo")
    local ammo8 = ga_get_i("xar.player.gun8.ammo")
    local ammo9 = ga_get_i("xar.player.gun9.ammo")
    --
    local min_y = 0.4
    local max_y = 0.6
    local char_w = 0.015
    local char_h = 0.03
    local col = {x=0.0, y=0.5, z=0.5}
    local options = {
        "Press 7: 50 railgun ammo for 100 gold. (cur ammo = " .. ammo7 .. ")",
        "Press 8: 2 EMP ammo for 100 gold. (cur ammo = " .. ammo8 .. ")",
        "Press 9: 2 Nuke ammo for 100 gold. (cur ammo = " .. ammo9 .. ")"}
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
    if string.match(sel_name, "Press 7") or
        game_key.pressed_or_spammed(wid, "7") then sel_str = "7" end
    if string.match(sel_name, "Press 8") or
        game_key.pressed_or_spammed(wid, "8") then sel_str = "8" end
    if string.match(sel_name, "Press 9") or
        game_key.pressed_or_spammed(wid, "9") then sel_str = "9" end

    if sel_str == "7" then
        local price = 2
        for i = 1,50 do
            local ammo = ga_get_i("xar.player.gun7.ammo")
            local ammo_max = game_wep_modes.get_ammo_max(7)
            if (gold >= price and ammo < ammo_max) then
                ammo = ammo + 1
                gold_delta = gold_delta - price
            end
            ga_set_i("xar.player.gun7.ammo", ammo)
        end
        p.make_list(wid)
        ga_win_widget_small_list_set_selected(wid, 0) --Fragile!!!
    end

    if sel_str == "8" then
        local price = 50
        for i = 1,2 do
            local ammo = ga_get_i("xar.player.gun8.ammo")
            local ammo_max = game_wep_modes.get_ammo_max(8)
            if (gold >= price and ammo < ammo_max) then
                ammo = ammo + 1
                gold_delta = gold_delta - price
            end
            ga_set_i("xar.player.gun8.ammo", ammo)
        end
        p.make_list(wid)
        ga_win_widget_small_list_set_selected(wid, 1) --Fragile!!!
    end

    if sel_str == "9" then
        local price = 50
        for i = 1,2 do
            local ammo = ga_get_i("xar.player.gun9.ammo")
            local ammo_max = game_wep_modes.get_ammo_max(9)
            if (gold >= price and ammo < ammo_max) then
                ammo = ammo + 1
                gold_delta = gold_delta - price
            end
            ga_set_i("xar.player.gun9.ammo", ammo)
        end
        p.make_list(wid)
        ga_win_widget_small_list_set_selected(wid, 2) --Fragile!!!
    end

    if (gold_delta ~= 0) then
        std.set_bydelta_i("xar.player.gold.amount", gold_delta)
        ga_play_sound("buy")
    end
end
