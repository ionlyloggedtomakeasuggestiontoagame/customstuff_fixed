function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_green_black_striped"
end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")
    std.create_edges("XAR_SOLID_BORING_MAZE")
    add_bent(13,13,13,"bent_base_ring_pink_source")
    add_bent(7,7,11,"bent_key_maze_flower")
    add_bent(7,7,9,"bent_base_save")
    add_bent(7,7,7,"bent_gold_once_300")
    if get_input_path_bt(get_level()-1) == "block_electricity_maze_treasure_kilo" then
        omniverse.txtpeople(7,7,5,"Hell yeah, 2 cakes!!!")
    else
        omniverse.txtpeople(7,7,5,"Stick to a wall is what they said, stick to a damm wall, what if the damm maze has fractal-like properties like a maze of mazes? luckly this isnt an infinite fractal like the rest of the damm multiverse but damm")
    end
    for y = 1,10 do
        for z = 1,10 do
            add_bent(0,y,z,"bent_upgrade_gun_7_damage")
        end
    end
    for y = 1,14 do
        for z = 12,14 do
            add_bent(0,y,z,"bent_upgrade_gun_4_damage")
        end
    end
    add_bent(0,13,9,"bent_armor_1000p")
    create_rect("XAR_SOLID_BORING_MAZE",0,0,11,0,15,11)
    create_rect("XAR_SOLID_BORING_MAZE",0,11,0,0,11,11)
    create_rect("XAR_SOLID_BORING_MAZE",0,11,0,0,15,7)
    if get_input_path_bt(get_level()-1) ~= "block_electricity_maze_treasure_kilo" then
        set_pos(14,14,15,"block_big_maze_flower")
    end
end
