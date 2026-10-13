function p.__get_is_solid()
    return false
end

function p.__get_tex()
    return ""
end

function p.__main()
    p.cowair()
end

function p.cowair()
    set_default_block("block_cow_field_air")
    --field island
    for x = 1,14 do
    for y = 1,14 do
    for z = 1,14 do
        if(randf() < 1/65536) then
            local size = randi(0,1)
            local size2 = randi(0,1)
            create_rect("block_cow_field_structure",x-size2,y-size2,z-size2 , x+size,y+size,z+size)
        end
    end
    end
    end
    --nomster
    if(randf() < 1/16) then
        local x = randi(0,15)
        local y = randi(0,15)
        local z = randi(0,15)
        add_ment(x,y,z,"ment_monster_common_cow")
    end

    --rings
    if(randf() < 0.25) then
         local x = randi(0,15)
         local y = randi(0,15)
         local z = randi(0,15)
         if not bt_get_is_solid_physically(get_pos(x,y,z)) then
            if(randf() > 0.3) then
                add_bent(x,y,z,"bent_base_ring_green")
            else
                add_bent(x,y,z,"bent_base_ring_red")
            end
        end
    end
end
