function p.__get_is_solid()
    return false
end

function p.__get_tex()
    return ""
end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")
    std.create_edges("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER")
    create_rect("XAR_GLASS",6,6,6,8,8,8)
    omniverse.create_edges("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",6,6,6,8,8,8)
    create_sprinkles(1, 1, 1,14, 14, 14, 1/32, "XAR_SOLID_BORING_CONCRETE_WHITE_BORDER")
    create_rect("XAR_EMPTY_BORING",6,6,7,8,8,8)
    set_pos(7,7,6,"XAR_ARCADE_EXIT_DOWN")
    set_pos(7,7,5,"block_Bismuth_key")
    block_set_s(7, 7, 5, "color", "blue")
    ment_start(7,7,7,"ment_monster_clockwork_watchman")
        ment_set_f("__radius",4)
        ment_set_f("dps",8000)
        ment_set_f("shoot_period",0.75)
    ment_end()
end