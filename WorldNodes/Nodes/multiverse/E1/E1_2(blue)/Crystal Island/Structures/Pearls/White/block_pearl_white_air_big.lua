function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__main()
    set_default_block("block_pearl_white_air")
    if randf() < 0.25 then
        local x = randi(0,15)
        local y = randi(0,15)
        local z = randi(0,15)
        if not bt_get_is_solid_physically(get_pos(x,y,z)) then
            add_ment(x,y,z,"ment_monster_goliath")
        end
    end
    if randf() < 1/64 then
        local x = randi(0,15)
        local y = randi(0,15)
        local z = randi(0,15)
        set_pos(x,y,z,"XAR_ELEVATOR_RED_GREEN")
    end
end
