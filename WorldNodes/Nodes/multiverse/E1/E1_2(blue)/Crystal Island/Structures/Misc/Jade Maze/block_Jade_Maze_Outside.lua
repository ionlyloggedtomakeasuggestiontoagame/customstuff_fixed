function p.__get_is_solid() return true end
function p.__get_tex() return "block_deco1_green1" end

function p.__main()
    set_default_block("XAR_GLASS")
    std.create_edges("XAR_SOLID_BORING_DECO_1_GREEN_2")
    create_rect("XAR_SOLID_BORING_DECO_1_GREEN_1",3,3,3,12,12,12)
    create_rect("XAR_SOLID_BORING_DECO_1_GREEN_1",6,15,6,8,15,8)
    set_pos(7,15,7,"XAR_MYLANTIS_CAVES_LIB_ASCEND_WALL_Y_POS")
    create_rect("XAR_EMPTY_BORING",7,8,7,7,14,7)
    add_bent(7,14,7,"bent_base_ring_green")
    set_pos(7,7,7,"block_Jade_Maze")
    add_bent(15,15,15,"bent_base_ring_pink_dest")
    set_pos(15,15,15,"block_pearl_pink")
end
