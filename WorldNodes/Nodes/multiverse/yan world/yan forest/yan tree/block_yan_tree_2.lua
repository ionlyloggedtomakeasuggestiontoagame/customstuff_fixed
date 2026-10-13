function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_concrete_purple_border"
end

function p.__main()
    set_default_block("block_yan_tree_1")
    create_rect("block_omniverse_yan_forest_air",1,1,1,14,14,14)
    create_rect("block_yan_tree_2",0,0,0,15,15,0)
    create_rect("block_yan_tree_2",0,0,15,15,15,15)
    local treasurexpos = randi(2,13)
    local treasureypos = randi(2,13)
    local treasurezpos = randi(2,13)
    set_pos(treasurexpos,treasureypos,treasurezpos,"block_yan_tree_main_treasure")
    add_bent(treasurexpos,treasureypos,treasurezpos+1,"bent_base_ring_green")
end