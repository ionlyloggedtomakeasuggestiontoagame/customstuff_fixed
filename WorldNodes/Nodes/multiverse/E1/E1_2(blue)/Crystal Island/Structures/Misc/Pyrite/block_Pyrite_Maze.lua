function p.__get_is_solid() return true end
function p.__get_tex() return "block_deco1_green1" end

function p.__main()
    set_default_block("XAR_SOLID_BORING_DECO_1_YELLOW_1")
    set_pos(7,15,7,"XAR_EMPTY_BORING")
    set_pos(7,14,7,"block_Pyrite_entrance")
    add_bent(7,14,7,"bent_base_ring_green")
    set_pos(7,0,7,"block_Pyrite_Maze_treasure")
    create_rect("block_Pyrite_Maze_node",1,1,1,13,13,13)
    maze_start()
    for x,y,z in bps(1,1,1,13,13,13) do
        maze_add_vertex(x,y,z)
    end

    for x,y,z in bps(1,1,1,13,13,13) do
        if (x+1 <= 13) then
            maze_add_edge(x,y,z, x+1,y,z)
        end
        if (y+1 <= 13) then
            maze_add_edge(x,y,z, x,y+1,z)
        end
        if (z+1 <= 13) then
            maze_add_edge(x,y,z, x,y,z+1)
        end
    end
    maze_end()

    for x,y,z in bps(1,1,1,13,13,13) do
        if (x+1 <= 13) then
            if maze_edge_open(x,y,z, x+1,y,z) then
                block_set_b(x,y,z, "X+", true)
                block_set_b(x+1,y,z, "X-", true)
            end
        end
        if (y+1 <= 13) then
            if maze_edge_open(x,y,z, x,y+1,z) then
                block_set_b(x,y,z, "Y+", true)
                block_set_b(x,y+1,z, "Y-", true)
            end
        end
        if (z+1 <= 13) then
            if maze_edge_open(x,y,z, x,y,z+1) then
                block_set_b(x,y,z, "Z+", true)
                block_set_b(x,y,z+1, "Z-", true)
            end
        end
    end
    block_set_b(7,13,7, "Y+", true)
    block_set_b(7,1,7, "Y-", true)
end
