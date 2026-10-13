function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_blue_border"
end

function p.__main()
    set_default_block("XAR_SOLID_BORING_BLUE_BORDER")
    std.create_edges("block_multiversal_structure")
    --entrance
    create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",6,6,15,8,8,15)
    set_pos(7,7,15,"XAR_ANTI_PLUG_GLASS")
    set_pos(7,7,14,"XAR_ASCEND_SIMPLE")
    set_pos(7,7,13,"block_omniverse_shell_secret")
    add_bent(7,7,13,"bent_base_ring_green")
    set_pos(7,7,12,"block_omniverse_shell_entrance")
    set_pos(7,7,11,"block_omniverse_shell_middle")

    --exit chamber
    create_rect("XAR_SOLID_BORING_BLACK",1,1,1, 14,14,10)
    create_rect("block_void_shards",2,2,2, 13,13,9)
    set_pos(7,7,10,"block_omniverse_shell_exit")

    --pink ring
    set_pos(15,15,15,"XAR_EMPTY_BORING")
    add_bent(15,15,15,"bent_base_ring_pink_dest")
end
