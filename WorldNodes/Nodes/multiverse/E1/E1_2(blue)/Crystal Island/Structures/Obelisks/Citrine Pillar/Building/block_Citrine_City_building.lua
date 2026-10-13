function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_dark_concrete_orange_border"
end

function p.__main()
    set_default_block("XAR_APPLE_TREE_AIR_2")
    srand(seed_normal())
    std.create_shell("XAR_SOLID_BORING_DARK_CONCRETE_ORANGE_BORDER")
    std.create_edges("block_Citrine_Sponge")
    create_rect("XAR_EMPTY_BORING",7,7,0,8,8,15)

    add_ment(7,7,7,"ment_monster_sliver")
    if get_input_adj_bt(0, 1, 0) == "block_Citrine_City_building" then
        create_rect("block_Citrine_City_building_hard_plug_Y_pos",7,15,7,8,15,8)
    end
    if get_input_adj_bt(0, -1, 0) == "block_Citrine_City_building" then
        create_rect("block_Citrine_City_building_hard_plug_Y_neg",7,0,7,8,0,8)
    end
    if get_input_adj_bt(1, 0, 0) == "block_Citrine_City_building" then
        create_rect("block_Citrine_City_building_hard_plug_X_pos",15,7,7,15,8,8)
    end
    if get_input_adj_bt(-1, 0, 0) == "block_Citrine_City_building" then
        create_rect("block_Citrine_City_building_hard_plug_X_neg",0,7,7,0,8,8)
    end
end
