function p.__get_is_solid()
    return false
end

function p.__get_tex()
    return ""
end

function p.__main()
    set_default_block("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER")
    create_rect("XAR_EMPTY_BORING",1,1,0,14,14,15)
    add_bent_s(7,7,7,"bent_base_txt","Simple ^xff6666Duo^x6666ffmaze^!, a 7x7x7 with an 8x8x8 around it, connection at the bottom")
    add_bent(7,7,5,"bent_base_save")
end
