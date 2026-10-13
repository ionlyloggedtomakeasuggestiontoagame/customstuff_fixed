function p.__get_is_solid() return true end
function p.__get_tex() return "block_concrete_green_diag" end

function p.__main()
    set_default_block("XAR_SOLID_BORING_BRIGHT_GREEN_BORDER")
    create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",6,6,15,8,8,15)
    set_pos(7,7,15,"XAR_MYLANTIS_CAVES_LIB_ASCEND_WALL_Z_POS")
    create_rect("XAR_EMPTY_BORING",7,7,0,7,7,14)
    add_bent(7,7,14,"bent_base_ring_green")
end
