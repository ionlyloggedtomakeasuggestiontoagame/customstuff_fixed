function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_bright_green_border"
end

function p.__main()
    p.gencode()
    set_default_block("XAR_GLASS")
    std.create_edges("XAR_SOLID_BORING_BRIGHT_GREEN_BORDER")
    create_rect("XAR_SOLID_BORING_LIGHT_GREEN_BORDER",3,3,3,12,12,12)
    create_rect("XAR_SOLID_BORING_BRIGHT_GREEN_BORDER",6,15,6,8,15,8)
    set_pos(7,15,7,"XAR_MYLANTIS_CAVES_LIB_ASCEND_WALL_Y_POS")
    create_rect("XAR_EMPTY_BORING",7,8,7,7,14,7)
    add_bent(7,14,7,"bent_base_ring_green")
    set_pos(7,7,7,"block_code_maze_inside")
    add_bent(15,15,15,"bent_base_ring_pink_dest")
    set_pos(15,15,15,"block_E1_1_air")
    set_pos(7,12,7,"block_code_maze_entrance")
    set_pos(7,12,8,"block_code_maze_code")
end

function p.gencode()
    local code = ""
    for i = 1,6 do
        code = code..randi(0,9)
    end
    chunk_set_s("code", code)
end

function p.__type_init(id)
    ia_block_new_var_s(id, "code", "")
end

