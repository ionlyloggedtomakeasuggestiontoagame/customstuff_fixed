function p.__get_is_solid() return true end
function p.__get_tex() return "block_concrete_green_border" end

function p.__main()
    set_default_block("XAR_SOLID_BORING_DARK_GREEN_BORDER")
    create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",6,6,0,8,8,0)
    set_pos(7,7,0,"XAR_MYLANTIS_CAVES_LIB_ASCEND_WALL_Z_NEG")
    create_rect("XAR_EMPTY_BORING",7,7,1,7,7,15)
    add_bent(7,7,1,"bent_base_ring_green")
    set_pos(7,7,2,"XAR_STOPPER")
end
