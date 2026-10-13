function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_infinity_green"
end

function p.__main()
    --set_gen_root_parent("block_true_root")
    base_blue_tele.set_blue_type_down(7,7,7);
    set_default_block("XAR_SOLID_BORING_BLACK")
    set_pos(7,7,7,"block_omniverse_root")
    create_rect("XAR_ANTI_PLUG_GLASS",7,7,8,7,7,15)
    set_pos(7,7,8,"block_omniverse_exit_1")
    set_pos(7,7,9,"XAR_ASCEND_SIMPLE")
    add_bent(7,7,15,"bent_base_ring_red")
    std.create_edges("XAR_SOLID_BORING_DARK_CONCRETE_GREEN_BORDER")
end
