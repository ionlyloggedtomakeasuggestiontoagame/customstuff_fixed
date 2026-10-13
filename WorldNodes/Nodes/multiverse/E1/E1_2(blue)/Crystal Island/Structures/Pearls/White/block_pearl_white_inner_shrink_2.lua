function p.__get_is_solid() return true end
function p.__get_tex() return "block_deco1" end

function p.__main()
    create_xar_chunk("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER")
    create_rect("XAR_EMPTY_BORING",7,7,1,7,7,15)
    set_pos(7,7,0,"XAR_MYLANTIS_CAVES_LIB_ASCEND_WALL_Z_NEG")
    add_bent(7,7,1,"bent_base_ring_green")
    set_pos(7,7,2,"XAR_STOPPER")
    create_rect("XAR_EMPTY_BORING",6,6,15,8,8,15)
end