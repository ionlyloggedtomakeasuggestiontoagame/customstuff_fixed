function p.__get_is_solid() return true end
function p.__get_tex() return "block_deco1_green1" end

function p.__main()
    set_default_block("XAR_SOLID_BORING_DECO_1_GREEN_1")
    set_pos(7,15,7,"XAR_MYLANTIS_CAVES_LIB_ASCEND_WALL_Y_POS")
    set_pos(7,14,7,"block_Jade_Maze_entrance")
    add_bent(7,14,7,"bent_base_ring_green")
    set_pos(7,0,7,"block_Jade_Maze_treasure")
    maze_start()
    for x = 1,14,3 do
    for y = 1,14,3 do
    for z = 1,14,3 do
        maze_add_vertex(x,y,z)
        set_pos(x,y,z,"block_Jade_Maze_node")
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
                set_pos(x+1,y,z,"block_Jade_Maze_node")
                set_pos(x+2,y,z,"block_Jade_Maze_node")
            end
        end
        if (y+3 <= 14) then
            if maze_edge_open(x,y,z, x,y+3,z) then
                set_pos(x,y+1,z,"block_Jade_Maze_node")
                set_pos(x,y+2,z,"block_Jade_Maze_node")
            end
        end
        if (z+3 <= 14) then
            if maze_edge_open(x,y,z, x,y,z+3) then
                set_pos(x,y,z+1,"block_Jade_Maze_node")
                set_pos(x,y,z+2,"block_Jade_Maze_node")
            end
        end
    end
    end
    end
end
