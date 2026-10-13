function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_blue_border"
end

function p.__main()
    set_default_block("XAR_GLASS")
    create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",6,6,15,8,8,15)
    set_pos(7,7,14,"block_duo_maze_entrance")
    set_pos(7,7,15,"XAR_MYLANTIS_CAVES_LIB_ASCEND_WALL_Z_POS")
    set_pos(14,14,15,"block_duo_maze_treasure")
    set_pos(7,7,0,"block_duo_maze_red_blue_adapt")
    set_pos(7,6,0,"block_duo_maze_node_red")
    add_bent(7,7,14,"bent_base_ring_green")
    --maze1
    maze_start()
    for x = 1,14,2 do
    for y = 1,14,2 do
    for z = 1,14,2 do
        maze_add_vertex(x,y,z)
        set_pos(x,y,z,"block_duo_maze_node_blue")
    end
    end
    end

    for x = 1,14,2 do
    for y = 1,14,2 do
    for z = 1,14,2 do
        if (x+2 <= 14) then
            maze_add_edge(x,y,z, x+2,y,z)
        end
        if (y+2 <= 14) then
            maze_add_edge(x,y,z, x,y+2,z)
        end
        if (z+2 <= 14) then
            maze_add_edge(x,y,z, x,y,z+2)
        end
    end
    end
    end
    maze_end()
    for x = 1,14,2 do
    for y = 1,14,2 do
    for z = 1,14,2 do
        if (x+2 <= 14) then
            if maze_edge_open(x,y,z, x+2,y,z) then
                set_pos(x+1,y,z,"block_duo_maze_node_blue")
            end
        end
        if (y+2 <= 14) then
            if maze_edge_open(x,y,z, x,y+2,z) then
                set_pos(x,y+1,z,"block_duo_maze_node_blue")
            end
        end
        if (z+2 <= 14) then
            if maze_edge_open(x,y,z, x,y,z+2) then
                set_pos(x,y,z+1,"block_duo_maze_node_blue")
            end
        end
    end
    end
    end
    --maze2
        maze_start()
    for x = 0,14,2 do
    for y = 0,14,2 do
    for z = 0,14,2 do
        maze_add_vertex(x,y,z)
        set_pos(x,y,z,"block_duo_maze_node_red")
    end
    end
    end

    for x = 0,14,2 do
    for y = 0,14,2 do
    for z = 0,14,2 do
        if (x+2 <= 14) then
            maze_add_edge(x,y,z, x+2,y,z)
        end
        if (y+2 <= 14) then
            maze_add_edge(x,y,z, x,y+2,z)
        end
        if (z+2 <= 14) then
            maze_add_edge(x,y,z, x,y,z+2)
        end
    end
    end
    end
    maze_end()
    for x = 0,14,2 do
    for y = 0,14,2 do
    for z = 0,14,2 do
        if (x+2 <= 14) then
            if maze_edge_open(x,y,z, x+2,y,z) then
                set_pos(x+1,y,z,"block_duo_maze_node_red")
            end
        end
        if (y+2 <= 14) then
            if maze_edge_open(x,y,z, x,y+2,z) then
                set_pos(x,y+1,z,"block_duo_maze_node_red")
            end
        end
        if (z+2 <= 14) then
            if maze_edge_open(x,y,z, x,y,z+2) then
                set_pos(x,y,z+1,"block_duo_maze_node_red")
            end
        end
    end
    end
    end
end
