function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_concrete_yellow_border"
end

function p.__main()
    set_default_block("block_omniverse_yan_forest_air")
    omniverse.create_edges("XAR_SOLID_BORING_CONCRETE_YELLOW_BORDER",0,0,0,15,15,15)
    if get_input_path_bt(get_level()-1) == "block_yan_tree_maze_map" then
        add_bent_s(7,7,7,"bent_base_txt","^xffff00 Message from Mad Goblin: \n\nDid you think u could just get in the map and find treasure? \n\nAlthough the world is in fact a fractal it is not like you can use that to cheat your way around.")
    else
        add_bent(13,13,13,"bent_base_ring_pink_source")
        add_bent(7,7,9,"bent_base_save")
        add_bent_s(7,7,11,"bent_base_waypoint","Yan Tree Treasure")
        omniverse.txtpeople(7,7,5,"16 layers of 7x7x7 mazes, i heard people complaining about getting confused in the electricity flower but they dont know the pain of doing this")
        create_rect("XAR_SOLID_BORING_CONCRETE_YELLOW_BORDER",0,1,1,0,14,14)
        create_rect("block_omniverse_yan_forest_air",0,1,1,0,10,10)
        for y = 1,10 do
            for z = 1,10 do
                add_bent(0,y,z,"bent_upgrade_gun_8_damage")
            end
        end
        create_rect("block_omniverse_yan_forest_air",0,1,12,0,14,14)
        for y = 1,14 do
            for z = 12,14 do
                add_bent(0,y,z,"bent_upgrade_gun_8_time")
            end
        end
        create_rect("block_omniverse_yan_forest_air",0,12,8,0,14,10)
        add_bent(0,13,9,"bent_armor_1000p")
    end
end
