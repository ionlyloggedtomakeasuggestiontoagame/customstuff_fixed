function p.__render(wid)
    ga_win_set_background_default(wid)

    local price = ga_get_i("temp.xar.ent.buy_nuke.price")
    ga_win_txt_center(wid, 0.5,
        "Press ENTER: buy 1 nuke for " .. price .. " gold")

    local gold = ga_get_i("xar.player.gold.amount")
    ga_win_txt_center(wid, 0.9, "GOLD IN INVENTORY = " .. gold)

    local nukes = ga_get_i("xar.player.gun9.ammo")
    ga_win_txt_center(wid, 0.8, "NUKES IN INVENTORY = " .. nukes)

    ga_win_set_char_size(wid, 0.02, 0.04)
    ga_win_txt_center(wid, 0.12, "Go Back (ESC or F)")
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
        local cost = ga_get_i("temp.xar.ent.buy_nuke.price")
        local gold = ga_get_i("xar.player.gold.amount")
        local ammo_max = game_wep_modes.get_ammo_max(9)
        local ammo = ga_get_i("xar.player.gun9.ammo")
        if (gold >= cost and
            ammo < ammo_max)
        then
            local new_gold = gold - cost
            ga_set_i("xar.player.gold.amount", new_gold)
            std.set_bydelta_i("xar.player.gun9.ammo", 1)
            ga_play_sound("buy")
        end
    end
end
