function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__main()
    create_xar_chunk("XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER")
    create_rect("XAR_EMPTY_BORING",7,7,0,7,7,14)
    set_pos(7,7,15,"XAR_MYLANTIS_CAVES_LIB_ASCEND_WALL_Z_POS")
    add_bent(7,7,14,"bent_base_ring_green")
    set_pos(7,7,13,"block_pearl_black_entrance")
end