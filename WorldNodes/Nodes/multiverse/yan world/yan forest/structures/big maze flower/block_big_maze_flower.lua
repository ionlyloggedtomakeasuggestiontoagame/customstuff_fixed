function p.__get_is_solid()
    return false
end

function p.__get_tex()
    return ""
end

function p.__main()
    local msg = "This is a big maze flower, inside you will have to solve a maze, except that each cell is a maze in on itself. \n\nDont worry tho, they are all 2D mazes, however it will still take time."
    if get_input_path_bt(get_level()-1) == "block_big_maze_flower_treasure" then
        msg = "Would you dare do it again?"
    end
    omniverse.create_yan_flower("block_big_maze_flower_maze","XAR_SOLID_BORING_CONCRETE_PURPLE_BORDER",msg)
end

function p.__type_init(id)
ia_block_new_var_i(id, "flowerdepth", 0)
end