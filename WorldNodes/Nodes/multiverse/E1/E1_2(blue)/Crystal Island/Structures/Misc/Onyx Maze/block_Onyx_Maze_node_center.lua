function p.__get_is_solid() return true end
function p.__get_tex() return "block_black" end

function p.__main()
    --depth
    local parent_depth = 0
    local level = get_level()
    if get_input_path_bt(level-1) ~= "block_omniverse_yan_forest_air" then
        if( get_input_path_block_var_exists(level-1, "depth", "i") ) then
            parent_depth = get_input_path_block_i(level-1, "depth")
        end
    end
    local depth = parent_depth 
    chunk_set_i("depth", depth)

    set_default_block("XAR_MOSSY_AIR_ASCEND_RECURSIVE")
    std.create_edges("XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER")
    set_pos(7,7,7,"block_Onyx_Maze")
    base_blue_tele.set_blue_type_down(7,7,7)
end

function p.__type_init(id)
    ia_block_new_var_i(id, "depth", 0)
end
