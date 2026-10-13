function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_infinity_blue"
end

function p.__main()
    base_blue_tele.set_blue_type_terminal(7,7,10);
    set_default_block("XAR_MOSSY_AIR_ASCEND_RECURSIVE")
    std.create_shell("XAR_DOOR_GREEN")
    std.create_edges("block_outer_cubes_top")
    ---------------v-debug corner-v---------------
    set_pos(14,7,7, "XAR_DEBUG_SECRET_COLUMN_1")
    set_pos(14,7,9, "block_contained_monster")
    add_bent_s(2,2,13,"bent_key_green","Key to the Omniverse")
    bent_set_param_i(2,2,13, 30)
    add_bent_s(2,2,14,"bent_base_txt", "Debug Key")
    ---------------^-debug corner-^---------------
    add_bent_s(2,2,11, "bent_base_waypoint", "Top Of World")
    add_bent(2,2,9, "bent_base_respawn_point")
    add_bent(2,2,7, "bent_base_ring_pink_dest")

    add_bent_s(2,2,3,"bent_base_txt", "You are inside the i0 fruit right now, many things are awaiting outside but you must prove your worth opening this door")
    add_bent_s(2,2,5,"bent_open_green_door","Key to the Omniverse")
    add_bent(7,7,8, "bent_base_ring_green")
    set_pos(7,7,7, "block_multiversal_structure")
end