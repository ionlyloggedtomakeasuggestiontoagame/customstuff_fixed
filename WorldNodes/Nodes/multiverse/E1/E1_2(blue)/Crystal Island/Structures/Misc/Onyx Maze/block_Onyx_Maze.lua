function p.__get_is_solid() return true end
function p.__get_tex() return "block_mushroom_black" end

function p.__main()

    --depth thing
    local parent_depth = 0
    local level = get_level()
    if get_input_path_bt(level-1) ~= "block_omniverse_yan_forest_air" then
        if( get_input_path_block_var_exists(level-1, "depth", "i") ) then
            parent_depth = get_input_path_block_i(level-1, "depth")
        end
    end
    local depth = parent_depth + 1
    chunk_set_i("depth", depth)

    set_default_block("XAR_SOLID_BORING_BLACK")
    std.create_edges("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER")
    create_rect("block_Onyx_Maze_node",7,7,11,7,7,15)
    set_pos(7,7,15,"XAR_MYLANTIS_CAVES_LIB_ASCEND_WALL_Z_POS")
    maze_start()
    for x = 1,14,2 do
    for y = 1,14,2 do
    for z = 3,12,2 do
        maze_add_vertex(x,y,z)
        set_pos(x,y,z,"block_Onyx_Maze_node")
    end
    end
    end

    for x = 1,14,2 do
    for y = 1,14,2 do
    for z = 3,12,2 do
        if (x+2 <= 14) then
            maze_add_edge(x,y,z, x+2,y,z)
        end
        if (y+2 <= 14) then
            maze_add_edge(x,y,z, x,y+2,z)
        end
        if (z+2 <= 12) then
            maze_add_edge(x,y,z, x,y,z+2)
        end
    end
    end
    end
    maze_end()
    for x = 1,14,2 do
    for y = 1,14,2 do
    for z = 3,12,2 do
        if (x+2 <= 14) then
            if maze_edge_open(x,y,z, x+2,y,z) then
                set_pos(x+1,y,z,"block_Onyx_Maze_node")
            end
        end
        if (y+2 <= 14) then
            if maze_edge_open(x,y,z, x,y+2,z) then
                set_pos(x,y+1,z,"block_Onyx_Maze_node")
            end
        end
        if (z+2 <= 12) then
            if maze_edge_open(x,y,z, x,y,z+2) then
                set_pos(x,y,z+1,"block_Onyx_Maze_node")
            end
        end
    end
    end
    end
    base_blue_tele.set_blue_type_down(7,7,3)
    for x,y,z in bps(0,0,0,15,15,15) do
        if (get_pos(x,y,z) == "block_Onyx_Maze_node") and (get_pos(x,y,z+1) == "XAR_SOLID_BORING_BLACK") then
            set_pos(x,y,z+1,"block_Onyx_Maze_node_exit")
        end
    end
    if depth ~= 3 then
        set_pos(7,7,3,"block_Onyx_Maze_node_center")
    end
end

function p.__type_init(id)
    ia_block_new_var_i(id, "depth", 0)
end
