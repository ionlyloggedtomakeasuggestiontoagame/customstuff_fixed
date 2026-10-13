function p.__get_is_solid() return true end
function p.__get_tex() return "block_concrete_white_diag" end

function p.__main()
    create_xar_chunk("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER")
    create_rect("XAR_EMPTY_BORING",7,7,0,7,7,15)
    set_pos(7,7,0,"XAR_BRISTOL_ONE_WAY_Z_NEG")
    add_bent(7,7,15,"bent_base_ring_green")
end