function p.__get_is_solid() return true end
function p.__get_tex() return "block_concrete_yellow_border" end

function p.__main()
    set_default_block("XAR_SOLID_BORING_YELLOW_BLACK_STRIPED")
    create_rect("XAR_EMPTY_BORING",7,7,0,7,7,15)
    create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",6,6,15,8,8,15)
    set_pos(7,7,15,"XAR_MYLANTIS_CAVES_LIB_ASCEND_WALL_Z_POS")
    add_bent(7,7,14,"bent_base_ring_green")
    create_rect("block_electricity_maze_node",3,3,3,12,12,12)
    maze_start()
    for x,y,z in bps(3,3,3,12,12,12) do
        maze_add_vertex(x,y,z)
    end

    for x,y,z in bps(3,3,3,12,12,12) do
        if (x+1 <= 12) then
            maze_add_edge(x,y,z, x+1,y,z)
        end
        if (y+1 <= 12) then
            maze_add_edge(x,y,z, x,y+1,z)
        end
        if (z+1 <= 12) then
            maze_add_edge(x,y,z, x,y,z+1)
        end
    end
    maze_end()

    for x,y,z in bps(3,3,3,12,12,12) do
        if (x+1 <= 12) then
            if maze_edge_open(x,y,z, x+1,y,z) then
                block_set_b(x,y,z, "X+", true)
                block_set_b(x+1,y,z, "X-", true)
            end
        end
        if (y+1 <= 12) then
            if maze_edge_open(x,y,z, x,y+1,z) then
                block_set_b(x,y,z, "Y+", true)
                block_set_b(x,y+1,z, "Y-", true)
            end
        end
        if (z+1 <= 12) then
            if maze_edge_open(x,y,z, x,y,z+1) then
                block_set_b(x,y,z, "Z+", true)
                block_set_b(x,y,z+1, "Z-", true)
            end
        end
    end
    block_set_b(7,7,12, "Z+", true)
    block_set_b(7,7,3, "Z-", true)
end
