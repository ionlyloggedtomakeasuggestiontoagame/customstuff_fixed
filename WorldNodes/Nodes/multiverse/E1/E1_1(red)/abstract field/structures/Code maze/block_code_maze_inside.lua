function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_maze"
end

function p.__main()
    for x,y,z in bps(0,0,0,15,15,15) do
        local numbers = {"XAR_SOLID_BORING_BRIGHT_GREEN_BORDER","XAR_SOLID_BORING_LIGHT_GREEN_BORDER","XAR_SOLID_BORING_DARK_GREEN_BORDER"}
        local numbertype = numbers[randi(1,#numbers)]
        set_pos(x,y,z,numbertype)
    end
    local level = get_level()
    local input = chunk_get_s("input")
    local code = get_input_path_block_s(level-1, "code")
    chunk_set_s("code", code)
    if input == "" then
    set_pos(7,14,7,"XAR_EMPTY_BORING")
    set_pos(7,15,7,"XAR_MYLANTIS_CAVES_LIB_ASCEND_WALL_Y_POS")
    add_bent(7,14,7,"bent_base_ring_green")
    else
    set_pos(7,7,15,"XAR_MYLANTIS_CAVES_LIB_ASCEND_WALL_Z_POS")
    set_pos(7,7,14,"XAR_EMPTY_BORING")
    add_bent(7,7,14,"bent_base_ring_green")
    create_rect("XAR_STOPPER",7,7,8,7,7,13)
    end
    if input ~= code then
        if string.len(input) < 10 then
            maze_start()
            for x = 1,14,2 do
            for y = 1,14,2 do
                maze_add_vertex(x,y,7)
                set_pos(x,y,7,"block_code_maze_node")
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
                        set_pos(x+1,y,7,"block_code_maze_node")
                    end
                end
                if (y+2 <= 14) then
                    if maze_edge_open(x,y,7, x,y+2,7) then
                        set_pos(x,y+1,7,"block_code_maze_node")
                    end
                end
            end
            end
            set_pos(13,13,6,"block_code_maze_input")
            block_set_s(13, 13, 6, "number", "1")
            set_pos(13,7,6,"block_code_maze_input")
            block_set_s(13, 7, 6, "number", "2")
            set_pos(13,1,6,"block_code_maze_input")
            block_set_s(13, 1, 6, "number", "3")
            set_pos(7,13,6,"block_code_maze_input")
            block_set_s(7, 13, 6, "number", "4")
            set_pos(7,7,6,"block_code_maze_input")
            block_set_s(7, 7, 6, "number", "5")
            set_pos(7,1,6,"block_code_maze_input")
            block_set_s(7, 1, 6, "number", "6")
            set_pos(1,13,6,"block_code_maze_input")
            block_set_s(1, 13, 6, "number", "7")
            set_pos(1,7,6,"block_code_maze_input")
            block_set_s(1, 7, 6, "number", "8")
            set_pos(1,1,6,"block_code_maze_input")
            block_set_s(1, 1, 6, "number", "9")
            set_pos(7,11,6,"block_code_maze_input")
            block_set_s(7, 11, 6, "number", "0")
        else
            set_pos(7,7,7,"block_code_maze_limit")
        end
    else
        set_pos(7,7,7,"block_code_maze_treasure")
    end
end

function p.__type_init(id)
    ia_block_new_var_s(id, "input", "")
    ia_block_new_var_s(id, "code", "")
end