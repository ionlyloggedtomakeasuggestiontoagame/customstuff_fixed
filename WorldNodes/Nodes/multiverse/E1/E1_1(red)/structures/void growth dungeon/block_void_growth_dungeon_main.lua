function p.__get_is_solid() return false end

function p.__get_tex() return "" end

function p.__main()
    set_default_block("XAR_SOLID_BORING_BLACK")
    std.create_edges("XAR_SOLID_BORING_DARK_GREEN_BORDER")
    create_rect("block_void_growth_dungeon_air",1,1,1,14,14,11)
    create_rect("XAR_SOLID_BORING_BLACK",1,1,12,14,14,12)
    create_rect("XAR_SOLID_BORING_DARK_CONCRETE_GREEN_BORDER",1,1,13,14,14,13)
    create_rect("XAR_YING_FOREST",1,1,14,14,14,14)
    base_blue_tele.set_blue_type_down(7,7,7)
    add_bent(14,14,14,"bent_base_ring_pink_dest")
    add_bent(7,8,14,"bent_base_ring_green_danger")
    set_pos(7,7,14,"block_void_growth_dungeon_treasure")
    create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",6,6,15,8,8,15)
    set_pos(7,7,15,"XAR_MYLANTIS_CAVES_LIB_ASCEND_WALL_Z_POS")
end