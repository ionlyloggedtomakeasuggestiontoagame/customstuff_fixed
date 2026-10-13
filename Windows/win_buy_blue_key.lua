--Helper function.
function p.price_helper(price)
    local num = 10
    if (price == 1) then num = 100 end
    if (price == 2) then num = 50 end
    return num
end

function p.__render(wid)
    ga_win_set_background_default(wid)

    local price = ga_get_i("temp.xar.ent.buy_blue_key.price")
    ga_win_txt_center(wid, 0.5, "PRESS ENTER TO BUY A BLUE KEY FOR " .. price .. " GOLD")

    local gold = ga_get_i("xar.player.gold.amount")
    ga_win_txt_center(wid, 0.9, "GOLD IN INVENTORY = " .. gold)

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
        local price = ga_get_i("temp.xar.ent.buy_blue_key.price")
        local cost = price
        local gold = ga_get_i("xar.player.gold.amount")
        if (gold >= cost) then
            new_gold = gold - cost
            ga_set_i("xar.player.gold.amount", new_gold)
            ga_set_f("xar.key_time.blue", 20.0)
            ga_play_sound("pickup_powerup")
            ga_window_pop()
        end
    end
end
