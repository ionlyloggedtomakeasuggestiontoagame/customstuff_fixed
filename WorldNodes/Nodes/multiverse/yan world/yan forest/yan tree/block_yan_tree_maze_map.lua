function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_maze"
end

function p.__main()
    srand(seed_normal_chop(3))
    set_default_block("block_omniverse_yan_forest_air")
    std.create_edges("XAR_SOLID_BORING_MAZE")
    local treasurexpos = randi(2,13)
    local treasureypos = randi(2,13)
    local treasurezpos = randi(2,13)
    set_pos(treasurexpos,treasureypos,treasurezpos,"block_yan_tree_main_treasure")
    local youarehere = get_input_path()[get_input_path_length()-3]
    set_pos(youarehere.x,youarehere.y,youarehere.z,"XAR_SOLID_BORING_YOU_ARE_HERE")
end
