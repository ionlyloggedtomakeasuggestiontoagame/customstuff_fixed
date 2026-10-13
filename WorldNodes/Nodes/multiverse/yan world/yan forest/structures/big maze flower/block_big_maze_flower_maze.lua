function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_maze"
end

function p.__main()
    set_default_block("XAR_SOLID_BORING_BLUE_BORDER")
    std.create_edges("XAR_SOLID_BORING_MAZE")
    maze_start()
    for x = 1,14,2 do
    for y = 1,14,2 do
        maze_add_vertex(x,y,7)
        set_pos(x,y,7,"block_big_maze_flower_small_maze")
    end
    end

    for x = 1,14,2 do
    for y = 1,14,2 do
        if (x+2 <= 14) then
            maze_add_edge(x,y,7, x+2,y,7)
        end
        if (y+2 <= 14) then
            maze_add_edge(x,y,7, x,y+2,7)
        end
    end
    end
    maze_end()
    for x = 1,14,2 do
    for y = 1,14,2 do
        if (x+2 <= 14) then
            if maze_edge_open(x,y,7, x+2,y,7) then
                set_pos(x+1,y,7,"block_big_maze_flower_small_maze")
            end
        end
        if (y+2 <= 14) then
            if maze_edge_open(x,y,7, x,y+2,7) then
                set_pos(x,y+1,7,"block_big_maze_flower_small_maze")
            end
        end
    end
    end
    create_rect("XAR_SOLID_BORING_RED_BLACK_STRIPED", 6,0,6, 8,0,8)
    set_pos(7,0,7,"XAR_EMPTY_BORING")
    set_pos(7,1,7,"block_dockbay")
    add_bent(7,0,7, "bent_base_ring_green")
    set_pos(13,13,8,"block_big_maze_flower_treasure")
end
