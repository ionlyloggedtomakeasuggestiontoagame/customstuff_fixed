function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_concrete_yellow_border"
end

function p.__main()
    set_default_block("XAR_SOLID_BORING_CONCRETE_YELLOW_BORDER")
    create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",6,6,15,8,8,15)
    set_pos(7,7,15,"XAR_MYLANTIS_CAVES_LIB_ASCEND_WALL_Z_POS")
    set_pos(7,7,14,"XAR_EMPTY_BORING")
    set_pos(7,6,14,"XAR_DESCEND_SIMPLE")
    set_pos(7,8,14,"XAR_ASCEND_SIMPLE_2")
    add_bent(7,7,14,"bent_base_ring_green")
    create_rect("XAR_SPACE_CASE_WALL_OF_PAIN_KILO",7,7,3,7,7,13)
    set_pos(7,7,2,"XAR_ASCEND_SIMPLE_2")
    set_pos(7,7,1,"block_Bismuth_key")
    block_set_s(7, 7, 1, "color", "yellow")
end