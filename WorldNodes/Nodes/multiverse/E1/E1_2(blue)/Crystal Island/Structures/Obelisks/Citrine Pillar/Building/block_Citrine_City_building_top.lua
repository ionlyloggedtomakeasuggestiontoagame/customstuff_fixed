function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_concrete_brown_border"
end

function p.__main()
    set_default_block("block_E1_2_air")
    srand(seed_normal())
    create_rect("block_Citrine_City",0,0,9,15,15,9)
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
        set_pos(posx,posy,9,"block_Citrine_City_building_bottom")
        set_pos(posx2,posy,9,"block_Citrine_City_building_bottom")
        set_pos(posx,posy2,9,"block_Citrine_City_building_bottom")
        set_pos(posx2,posy2,9,"block_Citrine_City_building_bottom")
        set_pos(posx,posy,15,"block_Citrine_City_building_top")
        set_pos(posx2,posy,15,"block_Citrine_City_building_top")
        set_pos(posx,posy2,15,"block_Citrine_City_building_top")
        set_pos(posx2,posy2,15,"block_Citrine_City_building_top")
    end
    end
    create_rect("block_E1_2_air",0,4,10,15,11,15)
    create_rect("block_E1_2_air",4,0,10,11,15,15)
    omniverse.replace_rect("block_Citrine_City_building_bottom","block_Citrine_City",4,0,9,11,15,9)
    omniverse.replace_rect("block_Citrine_City_building_bottom","block_Citrine_City",0,4,9,15,11,9)
    --building exit
    create_rect("XAR_SOLID_BORING_DARK_CONCRETE_ORANGE_BORDER",0,0,0,15,15,8)
    omniverse.create_edges("block_Citrine_Sponge",0,0,0,15,15,8)
    create_rect("block_E1_2_air",1,1,1,14,14,7)
    create_rect("block_Citrine_Sponge_inv",1,1,8,14,14,8)
    create_rect("XAR_ONE_WAY_Z_POS",1,1,7,14,14,7)
    create_rect("block_dockbay",7,7,0,8,8,0)
    set_pos(7,7,4,"block_Citrine_City_building_treasure")
    add_bent(7,7,1,"bent_base_ring_green")
    set_pos(3,3,8,"block_Citrine_Sponge")
    set_pos(12,3,8,"block_Citrine_Sponge")
    set_pos(3,12,8,"block_Citrine_Sponge")
    set_pos(12,12,8,"block_Citrine_Sponge")
    --monsters
    if(randf() < 0.125) then
         local x = randi(0,15)
         local y = randi(0,15)
         local z = randi(9,15)
            if not bt_get_is_solid_physically(get_pos(x,y,z)) then
                add_ment(x,y,z,"ment_monster_mad_goblin")
            end
    end

    --rings
    if(randf() < 0.25) then
         local x = randi(0,15)
         local y = randi(0,15)
         local z = randi(9,15)
         if not bt_get_is_solid_physically(get_pos(x,y,z)) then
            if(randf() > 0.3) then
                add_bent(x,y,z,"bent_base_ring_green")
            else
                add_bent(x,y,z,"bent_base_ring_red")
            end
        end
    end
end
