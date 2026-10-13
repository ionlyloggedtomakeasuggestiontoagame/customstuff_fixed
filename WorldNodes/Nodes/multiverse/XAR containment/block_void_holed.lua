function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_black"
end

function p.__main()
    set_default_block("XAR_SOLID_BORING_BLACK")
    create_rect("XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER",5,5,15,10,10,15)
    create_rect("XAR_SOLID_BORING_BLACK",6,6,15,9,9,15)
    create_rect("XAR_MOSSY_AIR_ASCEND_RECURSIVE",7,7,0,8,8,15)
end
