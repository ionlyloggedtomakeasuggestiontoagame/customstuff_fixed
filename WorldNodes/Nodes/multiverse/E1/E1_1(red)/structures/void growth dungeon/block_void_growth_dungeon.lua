function p.__get_is_solid() return true end

function p.__get_tex() return "block_dark_concrete_green_border" end

function p.__main()
    set_default_block("XAR_SOLID_BORING_BLACK")
    std.create_edges("XAR_SOLID_BORING_DARK_GREEN_BORDER")
    create_rect("XAR_MOSSY_AIR_ASCEND_RECURSIVE",1,1,1,14,14,14)
    omniverse.create_edges("XAR_YING_FOREST",1,1,2,14,14,2)
    omniverse.create_edges("XAR_SOLID_BORING_DARK_GREEN_BORDER",1,1,1,14,14,14)
    create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",6,6,15,8,8,15)
    set_pos(7,7,15,"XAR_MYLANTIS_CAVES_LIB_ASCEND_WALL_Z_POS")
    add_bent_s(7,7,9,"bent_base_txt","This is void growth dungeon, you are gonna be thrown into a dark space and will only be able to grow back and collect treasure if u manage to find a pink ring.")
    add_bent(7,7,7,"bent_base_ring_blue")
    set_pos(7,7,7,"block_void_growth_dungeon_main")
    base_blue_tele.set_blue_type_down(7,7,7)
    set_pos(2,1,2,"XAR_WIG_FLOWER_I2_GREEN")
end