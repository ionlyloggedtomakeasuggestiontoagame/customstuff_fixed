function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_bright"
end

function p.__main()
    set_default_block("block_omniverse_yan_entrance_X")
    --depth
        local parent_depth = 0
    local level = get_level()
    if( get_input_path_block_var_exists(level-1, "depth", "i") ) then
        parent_depth = get_input_path_block_i(level-1, "depth")
    end
    local depth = parent_depth + 1
    chunk_set_i("depth", depth)
    
    if depth > 1 then
    create_rect("block_white_boring",0,0,0,15,15,15)
    create_rect("XAR_SOLID_BORING",0,6,6,15,9,9)
    create_rect("XAR_ANTI_PLUG_GLASS",0,7,7,15,8,8)
    end
end

function p.__type_init(id)
ia_block_new_var_i(id, "depth", 0)
end