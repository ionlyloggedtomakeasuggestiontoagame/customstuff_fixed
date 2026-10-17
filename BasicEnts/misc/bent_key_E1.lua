function p.payload(level, bp)
    ga_set_b("multi.custom.key.E1", true)
    ga_play_sound("pickup_powerup")
    ga_bent_remove_perm(level, bp)
    if ga_get_b("multi.custom.key.E1") then
        game_msg.add("You already carry this key")
    else
        game_msg.add("You now carry the entrance to E1")
    end
end

function p.__get_touch_dist()
    local dist = ga_get_f("xar.normal_bent_touch_dist")
    return dist
end

function p.__on_touch(level, bp)
    p.payload(level, bp)
end

function p.__get_use_msg(level, bp)
    return "E1 Key"
end

function p.__on_use(level, bp)
    p.payload(level, bp)
end

function p.on_telekinesis(level, bp)
    p.payload(level, bp)
end
