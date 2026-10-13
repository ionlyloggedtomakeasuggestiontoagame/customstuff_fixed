function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_concrete_brown_border"
end

function p.__main()
    set_default_block("block_E1_2_air")
    srand(seed_normal())
    omniverse.sponge("block_E1_2_air","block_Citrine_City")
    create_rect("block_E1_2_air",0,0,1,15,15,15)
    for x = 1,4 do
    for y = 1,4 do
        local posx = x*4-1
        local posy = y*4-1
        local posx2 = (x-1)*4
        local posy2 = (y-1)*4
        create_rect("block_Citrine_City_building",posx2,posy2,0, posx2,posy2,15)
        create_rect("block_Citrine_City_building",posx,posy2,0, posx,posy2,15)
        create_rect("block_Citrine_City_building",posx2,posy,0, posx2,posy,15)
        create_rect("block_Citrine_City_building",posx,posy,0, posx,posy,15)
        set_pos(posx,posy,0,"block_Citrine_City_building_bottom")
        set_pos(posx2,posy,0,"block_Citrine_City_building_bottom")
        set_pos(posx,posy2,0,"block_Citrine_City_building_bottom")
        set_pos(posx2,posy2,0,"block_Citrine_City_building_bottom")
        set_pos(posx,posy,15,"block_Citrine_City_building_top")
        set_pos(posx2,posy,15,"block_Citrine_City_building_top")
        set_pos(posx,posy2,15,"block_Citrine_City_building_top")
        set_pos(posx2,posy2,15,"block_Citrine_City_building_top")
    end
    end
    create_rect("block_E1_2_air",0,4,1,15,11,15)
    create_rect("block_E1_2_air",4,0,1,11,15,15)
    create_rect("block_E1_2_air",4,4,0,11,11,15)
    omniverse.replace_rect("block_Citrine_City_building_bottom","block_Citrine_City",4,0,0,11,15,0)
    omniverse.replace_rect("block_Citrine_City_building_bottom","block_Citrine_City",0,4,0,15,11,0)
    --building entrance
    create_rect("XAR_SOLID_BORING_DARK_CONCRETE_ORANGE_BORDER",6,6,14,9,9,15)
    create_rect("block_E1_2_air",7,7,14,8,8,14)
    create_rect("block_dockbay",7,7,15,8,8,15)
    add_bent(7,7,14,"bent_base_ring_green")


    --monsters
    if(randf() < 0.125) then
         local x = randi(0,15)
         local y = randi(0,15)
         local z = randi(0,15)
            if not bt_get_is_solid_physically(get_pos(x,y,z)) then
                add_ment(x,y,z,"ment_monster_mad_goblin")
            end
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
