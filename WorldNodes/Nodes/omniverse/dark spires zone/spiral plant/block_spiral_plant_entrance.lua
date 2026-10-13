function p.__get_is_solid()
    return false
end

function p.__get_tex()
    return ""
end

function p.__main()
        local level = get_level() --level of place
    if( get_input_path_block_var_exists(level-1, "depth", "i") ) then
        parent_depth = get_input_path_block_i(level-1, "depth")
    end
    local depth = parent_depth

    set_default_block("XAR_GLASS")
    create_rect("XAR_EMPTY_BORING",0,1,1,14,14,14)
    std.create_edges("XAR_SOLID_BORING_CONCRETE_YELLOW_BORDER")
    if get_input_adj_bt(1,0,0) == "block_spiral_plant_entrance" then
        create_rect("XAR_EMPTY_BORING",15,1,1,15,14,14)
    else
        add_bent(7,7,9, "bent_base_ring_red")
    end
end
