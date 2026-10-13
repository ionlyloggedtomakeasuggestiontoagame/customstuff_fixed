function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__main()
    set_default_block("XAR_SOLID_BORING_DECO_1_GREEN_1")
    if (get_input_adj_bt(0,0,-1) == "block_Jade_Maze_node") then
        create_rect("XAR_EMPTY_BORING",7,7,0,7,7,7)
    end
    if (get_input_adj_bt(0,0,1) == "block_Jade_Maze_node") then
        create_rect("XAR_EMPTY_BORING",7,7,7,7,7,15)
    end
    if (get_input_adj_bt(0,-1,0) == "block_Jade_Maze_node") then
        create_rect("XAR_EMPTY_BORING",7,0,7,7,7,7)
    end
    if (get_input_adj_bt(0,1,0) == "block_Jade_Maze_node") then
        create_rect("XAR_EMPTY_BORING",7,7,7,7,15,7)
    end
    if (get_input_adj_bt(-1,0,0) == "block_Jade_Maze_node") then
        create_rect("XAR_EMPTY_BORING",0,7,7,7,7,7)
    end
    if (get_input_adj_bt(1,0,0) == "block_Jade_Maze_node") then
        create_rect("XAR_EMPTY_BORING",7,7,7,15,7,7)
    end
    --entrance and exit
    if (get_input_adj_bt(0,1,0) == "block_Jade_Maze_entrance") then
        create_rect("XAR_EMPTY_BORING",7,7,7,7,15,7)
    end
    if (get_input_adj_bt(0,-1,0) == "block_Jade_Maze_treasure") then
        create_rect("XAR_EMPTY_BORING",7,0,7,7,7,7)
    end
    --enemies
    if (randf() > 0.5) then
        add_ment(7,7,7,"ment_monster_marine")
    end
end
