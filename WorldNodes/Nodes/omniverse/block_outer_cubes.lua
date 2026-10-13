function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_dark_concrete_blue_border"
end

function p.__main()
    set_default_block("block_void_lasagna")
    std.create_edges("block_outer_cubes_top")
    create_rect("block_void_shards",1,1,1,14,14,14)
    add_bent(7,7,7, "bent_base_ring_green")
end
