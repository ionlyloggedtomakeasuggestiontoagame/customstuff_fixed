function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_concrete_blue_border"
end

function p.__main()
    set_default_block("XAR_SOLID_BORING_CONCRETE_BLUE_BORDER")
    create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",15,6,6,15,9,9)
    create_rect("XAR_ONE_WAY_X_POS",15,7,7,15,8,8)
    create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",0,6,6,0,9,9)
    create_rect("XAR_ONE_WAY_X_NEG",0,7,7,0,8,8)
    create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",6,15,6,9,15,9)
    create_rect("XAR_ONE_WAY_Y_POS",7,15,7,8,15,8)
    create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",6,0,6,9,0,9)
    create_rect("XAR_ONE_WAY_Y_NEG",7,0,7,8,0,8)
    create_rect("dockbay",7,7,0,8,8,0)
    create_rect("e",1,1,1,14,14,14)
    create_rect("XAR_ASCEND_SIMPLE",7,7,1,8,8,1)


    --all the bents
    add_bent_s(2,2,13,"bent_base_waypoint","Byork Building Top")
    add_bent(2,2,11,"bent_base_waypoint_out_only")
    add_bent(2,2,9,"bent_base_save")
    add_bent(2,2,7,"bent_armor_600p")
    for i = 2,5 do
        add_bent(2,2,i,"bent_gold_once_500")
    end
    for x = 1,7,2 do
        for y = 7,13,2 do
            add_bent(x,14,y,"bent_upgrade_shield")
            add_bent(x+1,14,y+1,"bent_upgrade_spice")
        end
    end
    for i = 11,13 do
        add_bent(13,13,i,"bent_health_mega")
    end
    add_bent(13,13,2,"bent_ammo_gun_7_large_once")
    for i = 3,5 do
        add_bent(13,13,i,"bent_ammo_gun_8_once")
    end
    for i = 6,10 do
        add_bent(13,13,i,"bent_ammo_gun_9_once")
    end
    add_bent(7,7,7,"bent_upgrade_gun_9_radius")
end
