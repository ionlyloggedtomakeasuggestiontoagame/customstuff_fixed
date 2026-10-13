function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_dark_concrete_red_border"
end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")
    create_rect("XAR_SOLID_BORING_DARK_CONCRETE_RED_BORDER",0,0,0,15,15,0)
    create_rect("XAR_ONE_WAY_Z_NEG",9,9,0,14,14,0)
end
