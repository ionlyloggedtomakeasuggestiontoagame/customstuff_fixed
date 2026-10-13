function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_deco1_green2"
end

function p.__main()
    set_default_block("XAR_SOLID_BORING_DECO_1_GREEN_2")
    set_pos(7,7,15,"XAR_MYLANTIS_CAVES_LIB_ASCEND_WALL_Z_POS")
    set_pos(7,7,14,"block_odd_maze_treasure")
    add_bent(7,7,14,"bent_base_ring_green")
    maze_start()
    for x = 1,14,2 do
    for y = 1,14,2 do
    for z = 1,14,2 do
        maze_add_vertex(x,y,z)
        set_pos(x,y,z,"XAR_EMPTY_BORING")
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
                set_pos(x+1,y,z,"XAR_EMPTY_BORING")
            end
        end
        if (y+2 <= 14) then
            if maze_edge_open(x,y,z, x,y+2,z) then
                set_pos(x,y+1,z,"XAR_EMPTY_BORING")
            end
        end
        if (z+2 <= 14) then
            if maze_edge_open(x,y,z, x,y,z+2) then
                set_pos(x,y,z+1,"XAR_EMPTY_BORING")
            end
        end
    end
    end
    end
    set_pos(7,7,0,"block_odd_maze_changer2")
end
