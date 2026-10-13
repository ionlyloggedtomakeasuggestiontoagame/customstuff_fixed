function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_infinity_blue"
end

function p.__main()
    base_blue_tele.set_blue_type_down(7,7,7);
    set_default_block("block_air_voidforest")
    set_pos(7,7,7, "block_i0_fruit")
    std.create_edges("block_outer_cubes_top")
    create_rect("block_void_shards", 1,1,0, 14,14,3)
    create_rect("block_outer_cubes_top", 7,7,0, 7,7,5)
    create_rect("block_outer_cubes_top", 7,5,5, 7,9,5)
    create_rect("block_outer_cubes_top", 5,7,5, 9,7,5)
    set_pos(7,5,6,"block_outer_cubes_top")
    set_pos(7,9,6,"block_outer_cubes_top")
    set_pos(5,7,6,"block_outer_cubes_top")
    set_pos(9,7,6,"block_outer_cubes_top")
    set_pos(7,7,5,"block_dark_spires")
    add_bent(2,2,5, "bent_base_ring_green")
    add_bent(2,13,5, "bent_base_ring_pink_dest")
    add_bent_s(13,2,5, "bent_base_txt","this is an i0 flower, it contains a multiverse inside")
    create_rect("block_outer_cubes_top", 2,2,0, 2,2,3)
    create_rect("block_outer_cubes_top", 13,13,0, 13,13,3)
    create_rect("block_outer_cubes_top", 13,2,0, 13,2,3)
    create_rect("block_outer_cubes_top", 2,13,0, 2,13,3)
end
