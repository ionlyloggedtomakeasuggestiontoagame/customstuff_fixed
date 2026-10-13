function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_dark_concrete_red_border"
end

function p.__main()
    set_default_block("block_multiversal_air")
        create_rect("byork",0,0,0,15,15,0)
        buildingsmid = {"block_byork_building_middle","XAR_MYLANTIS_CITY_BUILDING_MID_BORING"}
        buildingstop = {"block_byork_building_top","XAR_MYLANTIS_CITY_BUILDING_RANDOM_TOP"}
        randID = randi(1,2) 
        if get_input_adj_bt(0,0,1) == "XAR_ORANGE_GROUND_CITY" then
            height = 14
            create_rect("XAR_SOLID_BORING_DARK_CONCRETE_BLUE_BORDER",0,0,15,15,15,15)
        else
            height = 15
        end
        if get_input_adj_bt(0,0,1) == "block_custom_jericho_caves" then
            height = 14
            create_rect("XAR_SOLID_BORING_DARK_CONCRETE_BLUE_BORDER",0,0,15,15,15,15)
        else
            height = 15
        end
        create_rect(buildingsmid[randID],0,0,0,0,0,height)
        create_rect(buildingsmid[randID],0,15,0,0,15,height)
        create_rect(buildingsmid[randID],15,0,0,15,0,height)
        create_rect(buildingsmid[randID],15,15,0,15,15,height)
        set_pos(0,0,height,buildingstop[randID])
        set_pos(0,15,height,buildingstop[randID])
        set_pos(15,0,height,buildingstop[randID])
        set_pos(15,15,height,buildingstop[randID])
        set_pos(0,0,0,"block_byork_buildings_bottom")
        set_pos(0,15,0,"block_byork_buildings_bottom")
        set_pos(15,0,0,"block_byork_buildings_bottom")
        set_pos(15,15,0,"block_byork_buildings_bottom")

    if(randf() < 0.25) then
         local x = randi(0,15)
         local y = randi(0,15)
         local z = randi(0,15)
               add_bent(x,y,z,"bent_base_ring_green")
     end
end
