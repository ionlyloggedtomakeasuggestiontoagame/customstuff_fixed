function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_deco1_blue1"
end

function p.__main()
    set_default_block("XAR_SOLID_BORING_DECO_1_BLUE_1")
    create_rect("XAR_SOLID_BORING_DECO_1_GREEN_2",0,0,0,7,15,15)
    create_rect("XAR_EMPTY_BORING",2,2,1,3,13,15)
    create_rect("XAR_EMPTY_BORING",12,2,1,13,13,15)
    create_rect("XAR_EMPTY_BORING",2,2,1,13,13,2)
    add_env_rect(6,2,1, 6,13,2, "rect_change2")
    add_env_rect(9,2,1, 9,13,2, "rect_change1")
    create_rect("XAR_SOLID_BORING_DECO_1_BLUE_1",0,0,15,7,15,15)
end
