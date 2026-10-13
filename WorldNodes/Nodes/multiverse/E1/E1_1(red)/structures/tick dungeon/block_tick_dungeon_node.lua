function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_concrete_white_border"
end

function p.__main()
    set_default_block("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER")
    create_rect("XAR_EMPTY_BORING",1,1,1,14,14,14)
    if (get_input_adj_bt(0,0,-1) == "block_tick_dungeon_node") or (get_input_adj_bt(0,0,-1) == "block_tick_dungeon_treasure") then
        create_rect("XAR_EMPTY_BORING",1,1,0,14,14,14)
    end
    if get_input_adj_bt(0,0,1) == "block_tick_dungeon_node" then
        create_rect("XAR_EMPTY_BORING",1,1,1,14,14,15)
    end
    if get_input_adj_bt(0,0,1) == "block_tick_dungeon_node_entrance" then
        create_rect("XAR_EMPTY_BORING",1,1,1,14,14,15)
    end
    if get_input_adj_bt(0,-1,0) == "block_tick_dungeon_node" then
        create_rect("XAR_EMPTY_BORING",1,0,1,14,14,14)
    end
    if get_input_adj_bt(0,1,0) == "block_tick_dungeon_node" then
        create_rect("XAR_EMPTY_BORING",1,1,1,14,15,14)
    end
    if get_input_adj_bt(-1,0,0) == "block_tick_dungeon_node" then
        create_rect("XAR_EMPTY_BORING",0,1,1,14,14,14)
    end
    if get_input_adj_bt(1,0,0) == "block_tick_dungeon_node" then
        create_rect("XAR_EMPTY_BORING",1,1,1,15,14,14)
    end
end
