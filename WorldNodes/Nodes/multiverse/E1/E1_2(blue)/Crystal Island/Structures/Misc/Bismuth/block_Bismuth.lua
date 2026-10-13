function p.__get_is_solid() return true end
function p.__get_tex() return "block_deco1" end

function p.__main()
    set_default_block("XAR_MOSSY_AIR_ASCEND_RECURSIVE")
    std.create_edges("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER")
    local color = chunk_get_s("color")
    --print(color)
    local blockcolor = "block_Bismuth_"..color
    if color == "rainbow" then
        add_bent(7,7,13,"bent_base_ring_green")
        add_bent_s(9,9,9,"bent_base_txt","In order to get inside, u must complete the 7 other colored blocks, also 1 every 8 bismuths lack their pink spheres.")
        create_rect("block_Bismuth_gate",7,7,6,7,7,12)
        block_set_s(7, 7, 12, "color", "red")
        block_set_s(7, 7, 11, "color", "orange")
        block_set_s(7, 7, 10, "color", "yellow")
        block_set_s(7, 7, 9, "color", "lime")
        block_set_s(7, 7, 8, "color", "green")
        block_set_s(7, 7, 7, "color", "blue")
        block_set_s(7, 7, 6, "color", "purple")
        set_pos(7,7,5,"block_Bismuth_rainbow")
        if (randf() < 1/8) then
        add_bent_s(3,3,7,"bent_base_txt","Due to rare chromatic disturbances, a dark hypercube with a master rainbow key has appeared, it seems however it came with a hard to finish ^xFF00FF5x5x5x5 maze^!.")
        set_pos(3,3,5,"block_4D_maze_container_bismuth")
        end
    else
        add_bent(7,7,8,"bent_base_ring_green")
        add_bent(7,7,10,"bent_base_ring_pink_dest")
        set_pos(7,7,7,blockcolor)
        add_bent_s(7,7,9,"bent_base_txt","")
    end
    if color == "red" then
        bent_set_param_s(7, 7, 9,"Red Dungeon:\n\n^xff0000 6x6x6 3D Maze") 
    end
    if color == "orange" then
        bent_set_param_s(7, 7, 9,"Orange Dungeon:\n\n^xff7700 7x7 7 layered 2D Maze") 
    end
    if color == "yellow" then
        bent_set_param_s(7, 7, 9,"Yellow Dungeon:\n\n^xffff00 10 Walls of Pain") 
    end
    if color == "lime" then
        bent_set_param_s(7, 7, 9,"Lime Dungeon:\n\n^x00ff00 EMP dungeon") 
    end
    if color == "green" then
        bent_set_param_s(7, 7, 9,"Green Dungeon:\n\n^x33dd66 7x7x3 Maze Green Key Race\n\n^xff6600Warning: Yellow Box will remove your keys.") 
    end
    if color == "blue" then
        bent_set_param_s(7, 7, 9,"Blue Dungeon:\n\n^x0000ff Clockwork Watchman Boss Fight\n\n^xffff00Notice: Due to unknown phenomena, this Clockwork Watchmen seems to have been strengthened with a 4x damage and 0.75 seconds delay.") 
    end
    if color == "purple" then
        bent_set_param_s(7, 7, 9,"Purple Dungeon:\n\n^xff00ff 6x6 6 layered 2D Dark Maze") 
    end
end

function p.__type_init(id)
    ia_block_new_var_s(id, "color", "mrow")
end