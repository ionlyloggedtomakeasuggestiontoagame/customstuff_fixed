function p.__get_is_solid() return true end
function p.__get_tex() return "block_deco1_green1" end

function p.__main()
    set_default_block("block_minigun_pyramid_Maze_node")
    maze_start()
    for x,y,z in bps(0,0,0,15,15,15) do
        maze_add_vertex(x,y,z)
    end

    for x,y,z in bps(0,0,0,15,15,15) do
        if (x+1 <= 15) then
            maze_add_edge(x,y,z, x+1,y,z)
        end
        if (y+1 <= 15) then
            maze_add_edge(x,y,z, x,y+1,z)
        end
        if (z+1 <= 15) then
            maze_add_edge(x,y,z, x,y,z+1)
        end
    end
    maze_end()

    for x,y,z in bps(0,0,0,15,15,15) do
        if (x+1 <= 15) then
            if maze_edge_open(x,y,z, x+1,y,z) then
                block_set_b(x,y,z, "X+", true)
                block_set_b(x+1,y,z, "X-", true)
            end
        end
        if (y+1 <= 15) then
            if maze_edge_open(x,y,z, x,y+1,z) then
                block_set_b(x,y,z, "Y+", true)
                block_set_b(x,y+1,z, "Y-", true)
            end
        end
        if (z+1 <= 15) then
            if maze_edge_open(x,y,z, x,y,z+1) then
                block_set_b(x,y,z, "Z+", true)
                block_set_b(x,y,z+1, "Z-", true)
            end
        end
    end
    block_set_b(7,7,15, "Z+", true)
    block_set_b(7,7,0, "Z-", true)
end
