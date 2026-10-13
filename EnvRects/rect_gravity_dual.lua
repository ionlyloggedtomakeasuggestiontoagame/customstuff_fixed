function p.__on_touch(level,bp)
    ga_set_i("multi.custom.stats.gravity_timer",2)
    if ga_get_i("multi.custom.stats.gravity_timer") <= 0 then
        ga_set_b("multi.custom.stats.gravity", false)
        game_movement_gravity.disable()
    else
        ga_set_b("multi.custom.stats.gravity", true)
        game_movement_gravity.enable()
    end
    --game_inf2.enable()
end