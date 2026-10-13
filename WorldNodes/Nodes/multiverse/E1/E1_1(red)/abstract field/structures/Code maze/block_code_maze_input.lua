function p.__get_is_solid()
    return false
end

function p.__get_tex()
    return ""
end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")
    
    std.create_edges("XAR_SOLID_BORING_CONCRETE_YELLOW_BORDER")
    local number = chunk_get_s("number")
    local code = get_input_path_block_s(get_level()-1, "code")
    chunk_set_s("code", code)
    add_bent_s(7,7,7,"bent_base_txt","By entering here, you input the number: ^x00ff00"..number)
    create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",6,6,0,8,8,2)
    create_rect("XAR_SOLID_BORING_NUM_"..number,6,6,2,8,8,2)
    set_pos(7,7,2,"XAR_MYLANTIS_CAVES_LIB_ASCEND_WALL_Z_POS")
    set_pos(7,7,1,"XAR_EMPTY_BORING")
    add_bent(7,7,1,"bent_base_ring_green")
    set_pos(7,7,0,"block_code_maze_inside")
    --block_set_s(7, 7, 0, "input", "^xff00ffDebug")
    local parentinput = get_input_path_block_s(get_level()-1, "input")
    block_set_s(7,7,0,"input",parentinput..number)
end

function p.__type_init(id)
    ia_block_new_var_s(id, "number", "")
    ia_block_new_var_s(id, "code", "")
end
