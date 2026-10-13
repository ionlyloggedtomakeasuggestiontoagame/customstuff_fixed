function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_concrete_purple_border"
end

function p.__main()
    set_default_block("XAR_SOLID_BORING_BLACK")
    std.create_shell("XAR_SOLID_BORING_CONCRETE_PURPLE_BORDER")
    create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",6,6,15,8,8,15)
    set_pos(7,7,15,"XAR_MYLANTIS_CAVES_LIB_ASCEND_WALL_Z_POS")
    set_pos(7,7,14,"XAR_EMPTY_BORING")
    add_bent(7,7,14,"bent_base_ring_green")
    for z = 3,14,2 do
    maze_start()
    for x = 3,14,2 do
    for y = 3,14,2 do
        maze_add_vertex(x,y,z)
        set_pos(x,y,z,"XAR_EMPTY_BORING")
    end
    end
    for x = 3,14,2 do
    for y = 3,14,2 do
        if (x+2 <= 14) then
            maze_add_edge(x,y,z, x+2,y,z)
        end
        if (y+2 <= 14) then
            maze_add_edge(x,y,z, x,y+2,z)
        end
    end
    end
    maze_end()
    for x = 3,14,2 do
    for y = 3,14,2 do
        if (x+2 <= 14) then
            if maze_edge_open(x,y,z, x+2,y,z) then
                set_pos(x+1,y,z,"XAR_EMPTY_BORING")
            end
        end
        if (y+2 <= 14) then
            if maze_edge_open(x,y,z, x,y+2,z) then
                set_pos(x,y+1,z,"XAR_EMPTY_BORING")
            end
        end
    end
    end
    end
    for z = 4,12,2 do
        local x = randi(1,6)*2+1
        local y = randi(1,6)*2+1
        set_pos(x,y,z,"XAR_EMPTY_BORING")
    end
    set_pos(7,7,2,"XAR_EMPTY_BORING")
    set_pos(7,7,1,"block_Bismuth_key")
    block_set_s(7, 7, 1, "color", "purple")
end