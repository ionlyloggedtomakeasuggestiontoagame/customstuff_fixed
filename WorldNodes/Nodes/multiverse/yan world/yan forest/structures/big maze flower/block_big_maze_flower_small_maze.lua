function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_blue_border"
end

function p.__main()
    set_default_block("XAR_SOLID_BORING_BLUE_BORDER")
    maze_start()
    for x = 1,14,2 do
    for y = 1,14,2 do
        maze_add_vertex(x,y,7)
        set_pos(x,y,7,"XAR_EMPTY_BORING")
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
                set_pos(x+1,y,7,"XAR_EMPTY_BORING")
            end
        end
        if (y+2 <= 14) then
            if maze_edge_open(x,y,7, x,y+2,7) then
                set_pos(x,y+1,7,"XAR_EMPTY_BORING")
            end
        end
    end
    end
    if get_input_adj_bt(0,-1,0) == "block_big_maze_flower_small_maze" then
        set_pos(7,0,7,"XAR_EMPTY_BORING")
    end
    if get_input_adj_bt(0,1,0) == "block_big_maze_flower_small_maze" then
        set_pos(7,14,7,"XAR_EMPTY_BORING")
        set_pos(7,15,7,"XAR_YW_SLOW_EXIT_LANDMARK")
    end
    if get_input_adj_bt(-1,0,0) == "block_big_maze_flower_small_maze" then
        set_pos(0,7,7,"XAR_EMPTY_BORING")
    end
    if get_input_adj_bt(1,0,0) == "block_big_maze_flower_small_maze" then
        set_pos(14,7,7,"XAR_EMPTY_BORING")
        set_pos(15,7,7,"XAR_YW_SLOW_EXIT_LANDMARK")
    end

    if get_input_adj_bt(0,1,0) == "block_dockbay" then
        set_pos(7,15,8,"XAR_ASCEND_SIMPLE")
        create_rect("XAR_EMPTY_BORING",7,14,7,7,15,7)
        add_bent(7,15,7, "bent_base_ring_green")
    end
    if get_input_adj_bt(0,-1,0) == "block_dockbay" then
        set_pos(7,0,7,"XAR_EMPTY_BORING")
        set_pos(7,0,8,"XAR_ASCEND_SIMPLE")
        add_bent(7,0,7, "bent_base_ring_green")
    end
    if get_input_adj_bt(-1,0,0) == "block_dockbay" then
        set_pos(0,7,7,"XAR_EMPTY_BORING")
        set_pos(0,7,8,"XAR_ASCEND_SIMPLE")
        add_bent(0,7,7, "bent_base_ring_green")
    end
    if get_input_adj_bt(1,0,0) == "block_dockbay" then
        set_pos(15,7,8,"XAR_ASCEND_SIMPLE")
        create_rect("XAR_EMPTY_BORING",14,7,7,15,7,7)
        add_bent(15,7,7, "bent_base_ring_green")
    end
    if get_input_adj_bt(0,0,1) == "block_big_maze_flower_treasure" then
        create_rect("XAR_SOLID_BORING_GREEN_BLACK_STRIPED", 6,6,15, 8,8,15)
        create_rect("XAR_EMPTY_BORING", 7,7,7, 7,7,15)
        set_pos(7,7,13,"block_dockbay")
        add_bent(7,7,14, "bent_base_ring_green")
        set_pos(7,7,15,"XAR_ASCEND_SIMPLE")
    end
end
