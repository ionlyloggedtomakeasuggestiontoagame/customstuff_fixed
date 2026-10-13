function p.__get_can_use(level, bp)
    return false
end

function p.__get_pulsates()
    return false
end

function p.__on_touch(level,bp)
    ga_kill_player();
end

function p.__on_use(level, bp)
    local play_sound = true
    ga_save(play_sound)
end
