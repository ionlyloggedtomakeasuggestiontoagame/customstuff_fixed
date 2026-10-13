function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_dark_concrete_blue_border"
end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")
    create_rect("XAR_SOLID_BORING_DARK_CONCRETE_BLUE_BORDER",0,0,15,15,15,15)
    create_rect("XAR_ONE_WAY_Z_POS",1,1,15,6,6,15)
end
