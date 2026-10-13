function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_bright_green_border"
end

function p.__main()
    set_default_block("XAR_SOLID_BORING_BRIGHT_GREEN_BORDER")
    create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",0,0,15,2,2,15)
    set_pos(1,1,15,"XAR_MYLANTIS_CAVES_LIB_ASCEND_WALL_Z_POS")
    for x = 1,13,2 do
    for y = 1,13,2 do
        create_rect("XAR_HEALTH_TOWER_AIR_1",x,y,1,x,y,14)
    end
    end
    --start V
    set_pos(1,1,14,"XAR_EMPTY_BORING")
    add_bent(1,1,14,"bent_base_ring_green")
    set_pos(1,1,13,"XAR_ARCADE_ENTER_DOWN")
    set_pos(1,1,12,"XAR_HELLBERRY_WHITE_BOX_Z")
    set_pos(1,1,11,"XAR_GUNS_GUN_8")
    create_rect("XAR_EMPTY_BORING",1,1,1,1,1,10)
    --start ^
    for x = 1,13,2 do
    for y = 0,8,4 do
        set_pos(x,2+y,1,"XAR_HEALTH_TOWER_AIR_1")
        set_pos(x,4+y,14,"XAR_HEALTH_TOWER_AIR_1")
    end
    end
    set_pos(2,13,1,"XAR_HEALTH_TOWER_AIR_1")
    set_pos(4,1,14,"XAR_HEALTH_TOWER_AIR_1")
    set_pos(6,13,1,"XAR_HEALTH_TOWER_AIR_1")
    set_pos(8,1,14,"XAR_HEALTH_TOWER_AIR_1")
    set_pos(10,13,1,"XAR_HEALTH_TOWER_AIR_1")
    set_pos(12,1,14,"XAR_HEALTH_TOWER_AIR_1")
    --end
    set_pos(13,13,2,"XAR_ARCADE_EXIT_DOWN")
    set_pos(13,13,1,"block_Bismuth_key")
    block_set_s(13, 13, 1, "color", "lime")
end