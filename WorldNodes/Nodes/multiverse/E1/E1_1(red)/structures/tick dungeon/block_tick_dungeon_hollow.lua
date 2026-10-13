function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_concrete_white_border"
end

function p.__main()
    set_default_block("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER")
    create_rect("XAR_EMPTY_BORING",1,1,1,14,14,14)
    add_ment(7,7,7,"ment_monster_rat_greater")
end
