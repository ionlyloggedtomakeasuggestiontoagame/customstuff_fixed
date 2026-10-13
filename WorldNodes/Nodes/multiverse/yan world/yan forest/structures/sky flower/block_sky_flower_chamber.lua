function p.__get_is_solid() return true end
function p.__get_tex() return "block_sky_clouds" end

function p.__main()
    set_default_block("XAR_SOLID_BORING_BLUE_BORDER")
    std.create_edges("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER")
    create_rect("block_sky_flower_air", 1,1,1, 14,14,14)
    create_rect("XAR_SOLID_BORING_BLUE_BORDER",1,1,1,14,1,14)
    set_pos(7,0,7,"block_sky_flower_grower")
    add_bent(7,1,7,"bent_base_ring_green")
    set_pos(7,1,7,"block_sky_flower_shrinker")
    base_blue_tele.set_blue_type_down(7,1,7)
    create_rect("block_water_blue_ring", 1,1,1, 14,14,1)
    create_rect("block_stopper_big_gravity_y_neg", 1,13,1, 14,13,14)
    create_rect("XAR_MOSSY_AIR_ASCEND_RECURSIVE_TOP", 1,14,1,14,14,14)
    set_pos(7,14,7,"block_sky_flower_treasure")
end
