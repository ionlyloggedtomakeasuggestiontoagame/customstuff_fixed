function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_deco1_purple1"
end

function p.__main()
    set_default_block("XAR_MOSSY_AIR_ASCEND_RECURSIVE")
    std.create_shell("XAR_ANTI_PLUG_GLASS")
    std.create_edges("block_bubblegum_stick_block")
    create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",6,6,6,9,9,9)
    create_rect("XAR_GLASS",6,7,7,9,8,8)
    create_rect("XAR_GLASS",7,6,7,8,9,8)
    create_rect("XAR_GLASS",7,7,6,8,8,9)
    create_rect("XAR_MOSSY_AIR_ASCEND_RECURSIVE_TOP",7,7,7,8,8,8)
    add_bent(8,8,10,"bent_base_ring_green")
    set_pos(8,8,9,"XAR_ARCADE_EXIT_DOWN")
    set_pos(7,7,7,"XAR_AMETHYST_GEM")
    set_pos(8,7,7,"block_bubblegum_treasure")
end
