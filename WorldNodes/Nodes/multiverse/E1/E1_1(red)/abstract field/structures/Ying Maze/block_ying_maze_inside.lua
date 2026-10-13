function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_ying_pattern"
end

function p.__main()
    for x,y,z in bps(0,0,0,15,15,15) do
        local colors = {"XAR_SOLID_BORING_CONCRETE_WHITE_BORDER","XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER"}
        local colortype = colors[randi(1,#colors)]
        set_pos(x,y,z,colortype)
    end
    set_pos(7,15,7,"XAR_MYLANTIS_CAVES_LIB_ASCEND_WALL_Y_POS")
    set_pos(7,14,7,"block_ying_maze_entrance")
    add_bent(7,14,7,"bent_base_ring_green")
    set_pos(7,0,7,"block_ying_maze_treasure")
    maze_start()
    for x = 1,14,3 do
    for y = 1,14,3 do
    for z = 1,14,3 do
        maze_add_vertex(x,y,z)
        set_pos(x,y,z,"block_ying_maze_node")
    end
    end
    end

    for x = 1,14,3 do
    for y = 1,14,3 do
    for z = 1,14,3 do
        if (x+3 <= 14) then
            maze_add_edge(x,y,z, x+3,y,z)
        end
        if (y+3 <= 14) then
            maze_add_edge(x,y,z, x,y+3,z)
        end
        if (z+3 <= 14) then
            maze_add_edge(x,y,z, x,y,z+3)
        end
    end
    end
    end
    maze_end()
    for x = 1,14,3 do
    for y = 1,14,3 do
    for z = 1,14,3 do
        if (x+3 <= 14) then
            if maze_edge_open(x,y,z, x+3,y,z) then
                set_pos(x+1,y,z,"block_ying_maze_node")
                set_pos(x+2,y,z,"block_ying_maze_node")
            end
        end
        if (y+3 <= 14) then
            if maze_edge_open(x,y,z, x,y+3,z) then
                set_pos(x,y+1,z,"block_ying_maze_node")
                set_pos(x,y+2,z,"block_ying_maze_node")
            end
        end
        if (z+3 <= 14) then
            if maze_edge_open(x,y,z, x,y,z+3) then
                set_pos(x,y,z+1,"block_ying_maze_node")
                set_pos(x,y,z+2,"block_ying_maze_node")
            end
        end
    end
    end
    end
end
