function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_concrete_red_border"
end

function p.__main()
    set_default_block("XAR_GLASS")
    std.create_edges("XAR_SOLID_BORING_CONCRETE_RED_BORDER")
    create_rect("XAR_EMPTY_BORING",1,1,1,14,14,14)
    if get_input_adj_bt(0,0,-1) == ("block_duo_maze_node_red") then
        create_rect("XAR_EMPTY_BORING",1,1,0,14,14,14)
    end
    if (get_input_adj_bt(0,0,1) == ("block_duo_maze_node_red")) or (get_input_adj_bt(0,0,1) == ("block_duo_maze_treasure")) then
        create_rect("XAR_EMPTY_BORING",1,1,1,14,14,15)
    end
    --if get_input_adj_bt(0,0,1) == ("block_duo_maze_treasure") then
    --    create_rect("XAR_EMPTY_BORING",1,1,1,14,14,15)
    --end
    if (get_input_adj_bt(0,-1,0) == ("block_duo_maze_node_red")) or (get_input_adj_bt(0,-1,0) == ("block_duo_maze_red_blue_adapt")) then
        create_rect("XAR_EMPTY_BORING",1,0,1,14,14,14)
    end
    --if get_input_adj_bt(0,-1,0) == ("block_duo_maze_red_blue_adapt") then
    --    create_rect("XAR_EMPTY_BORING",1,0,1,14,14,14)
    --end
    if (get_input_adj_bt(0,1,0) == ("block_duo_maze_node_red")) or (get_input_adj_bt(0,1,0) == ("block_duo_maze_red_blue_adapt")) then
        create_rect("XAR_EMPTY_BORING",1,1,1,14,15,14)
    end
    --if get_input_adj_bt(0,1,0) == ("block_duo_maze_red_blue_adapt") then
    --    create_rect("XAR_EMPTY_BORING",1,1,1,14,15,14)
    --end
    if (get_input_adj_bt(-1,0,0) == ("block_duo_maze_node_red")) or (get_input_adj_bt(-1,0,0) == ("block_duo_maze_red_blue_adapt")) then
        create_rect("XAR_EMPTY_BORING",0,1,1,14,14,14)
    end
    --if get_input_adj_bt(-1,0,0) == ("block_duo_maze_red_blue_adapt") then
    --    create_rect("XAR_EMPTY_BORING",0,1,1,14,14,14)
    --end
    if (get_input_adj_bt(1,0,0) == ("block_duo_maze_node_red")) or (get_input_adj_bt(1,0,0) == ("block_duo_maze_node_red")) then
        create_rect("XAR_EMPTY_BORING",1,1,1,15,14,14)
    end
    --if get_input_adj_bt(1,0,0) == ("block_duo_maze_node_red") then
    --    create_rect("XAR_EMPTY_BORING",1,1,1,15,14,14)
    --end
end
