function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_infinity_green"
end

function p.__main()
    set_gen_root_parent("block_outside_debug")
    base_blue_tele.set_blue_type_down(7,7,7);
    set_default_block("XAR_EMPTY_BORING")
    add_bent(7,7,5,"bent_base_ring_blue")
    std.create_edges("block_outer_cubes_top")
    --set_pos(7,7,7,"block_omniverse")
    if get_level() == -1 then
        set_gen_root_child(7,7,7,"block_true_root")
    else
        set_gen_root_child(7,7,15,"block_outside_debug")
    end
end
