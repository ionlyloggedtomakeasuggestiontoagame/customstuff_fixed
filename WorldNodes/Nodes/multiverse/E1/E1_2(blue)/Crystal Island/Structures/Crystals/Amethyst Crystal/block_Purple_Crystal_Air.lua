function p.__get_is_solid()
    return false
end

function p.__get_tex()
    return ""
end

function p.__main()
    set_default_block("block_Purple_Crystal_Air")
    if (randf() < 1/500) then
        set_pos(5,5,5,"XAR_AMETHYST_GEM")
    else
        set_pos(5,5,5,"block_E1_2_rhombus")
    end

    --monsters
    local x = randi(0,15)
    local y = randi(0,15)
    local z = randi(0,15)
    if not bt_get_is_solid_physically(get_pos(x,y,z)) then
        add_ment(x,y,z,"ment_monster_amethyst_rock")
    end

    --bents
    if(randf() < 0.25) then
         local x = randi(0,15)
         local y = randi(0,15)
         local z = randi(0,15)
         if not bt_get_is_solid_physically(get_pos(x,y,z)) then
            if(randf() > 0.5) then
                if (randf() > 0.3) then
                    add_bent(x,y,z,"bent_base_ring_green")
                else
                    add_bent(x,y,z,"bent_base_ring_red")
                end
            else
                add_bent_s(x,y,z,"bent_base_txt","There is a chance of 1/500 one of these blocks is an amethyst.")
            end
        end
     end
end