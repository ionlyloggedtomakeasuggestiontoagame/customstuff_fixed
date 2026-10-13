function p.__get_is_solid()
    return false
end

function p.__get_tex()
    return ""
end

function p.__main()
        --depth thing
    local parent_depth = 0
    local level = get_level()
    if( get_input_path_block_var_exists(level-3, "flowerdepth", "i") ) then
        parent_depth = get_input_path_block_i(level-3, "flowerdepth")
    end
    local flowerdepth = parent_depth + 1
    chunk_set_i("flowerdepth", flowerdepth)
    local msg = ""
    if flowerdepth == 0 then
    msg = "This is a big maze flower, inside you will have to solve a maze, except that each cell is a maze in on itself. \n\nDont worry tho, they are all 2D mazes, however it will still take time."
    end
    if flowerdepth == 1 then
    msg = "Would you dare do it again?"
    end
    omniverse.create_yan_flower("block_big_maze_flower_maze","XAR_SOLID_BORING_CONCRETE_PURPLE_BORDER",msg)
end

function p.__type_init(id)
ia_block_new_var_i(id, "flowerdepth", 0)
end