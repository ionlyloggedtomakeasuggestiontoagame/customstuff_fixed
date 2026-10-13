function p.__get_is_solid() return true end
function p.__get_tex() return "block_deco1" end

function p.__main()
    create_xar_chunk("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER")
    create_rect("XAR_EMPTY_BORING",7,7,0,7,7,14)
    create_rect("XAR_EMPTY_BORING",6,6,0,8,8,0)
    set_pos(7,7,15,"block_pearl_white_inner_shrink_2")
end