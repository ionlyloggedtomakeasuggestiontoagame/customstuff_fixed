function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")
    if (get_input_adj_bt(0,0,-1) == "block_Onyx_Maze_node") or (get_input_adj_bt(0,0,-1) == "block_Onyx_Maze_node_center") then
        for x,y,z in bps(7,7,0,7,7,7) do
            add_bent(x,y,z,"bent_gold_once_1")
        end
    end
    if (get_input_adj_bt(0,0,1) == "block_Onyx_Maze_node") or (get_input_adj_bt(0,0,1) == "block_Onyx_Maze_node_center")then
        for x,y,z in bps(7,7,7,7,7,15) do
            add_bent(x,y,z,"bent_gold_once_1")
        end
    end
    if (get_input_adj_bt(0,-1,0) == "block_Onyx_Maze_node") or (get_input_adj_bt(0,-1,0) == "block_Onyx_Maze_node_center")then
        for x,y,z in bps(7,0,7,7,7,7) do
            add_bent(x,y,z,"bent_gold_once_1")
        end
    end
    if (get_input_adj_bt(0,1,0) == "block_Onyx_Maze_node") or (get_input_adj_bt(0,1,0) == "block_Onyx_Maze_node_center")then
        for x,y,z in bps(7,7,7,7,15,7) do
            add_bent(x,y,z,"bent_gold_once_1")
        end
    end
    if (get_input_adj_bt(-1,0,0) == "block_Onyx_Maze_node") or (get_input_adj_bt(-1,0,0) == "block_Onyx_Maze_node_center")then
        for x,y,z in bps(0,7,7,7,7,7) do
            add_bent(x,y,z,"bent_gold_once_1")
        end
    end
    if (get_input_adj_bt(1,0,0) == "block_Onyx_Maze_node") or (get_input_adj_bt(1,0,0) == "block_Onyx_Maze_node_center")then
        for x,y,z in bps(7,7,7,15,7,7) do
            add_bent(x,y,z,"bent_gold_once_1")
        end
    end
    base_blue_tele.set_blue_type_terminal(7,7,9)
end
