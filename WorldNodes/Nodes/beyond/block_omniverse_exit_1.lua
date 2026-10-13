function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_black"
end

function p.__main()
    set_default_block("XAR_SOLID_BORING_BLACK")
    create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",0,0,15,15,15,15)
    create_rect("XAR_EMPTY_BORING",1,1,0,1,1,15)
    set_pos(1,1,0,"block_black_shrinkblock")
end
