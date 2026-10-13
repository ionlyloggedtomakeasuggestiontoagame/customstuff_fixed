function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_dan_house_window"
end

function p.__main()
    set_default_block("block_omniverse_yan_forest_air")
    create_rect("block_cow_field_top",0,0,8,15,15,8)
    create_rect("block_green_and_pink",0,0,7,15,15,7)
    create_rect("block_omniverse_yan_forest",0,0,6,15,15,6)
    add_bent(8,8,8,"bent_base_ring_green")
    add_bent(8,8,6,"bent_base_ring_green")

    --walls
    if get_input_adj_bt(-1,0,0) ~= "block_cow_field_structure" then
        create_rect("XAR_SOLID_BORING",0,0,6,0,15,8)
    end
    if get_input_adj_bt(1,0,0) ~= "block_cow_field_structure" then
        create_rect("XAR_SOLID_BORING",15,0,6,15,15,8)
    end
    if get_input_adj_bt(0,-1,0) ~= "block_cow_field_structure" then
        create_rect("XAR_SOLID_BORING",0,0,6,15,0,8)
    end
    if get_input_adj_bt(0,1,0) ~= "block_cow_field_structure" then
        create_rect("XAR_SOLID_BORING",0,15,6,15,15,8)
    end

    --pillars & corners
    create_rect("XAR_SOLID_BORING",0,0,6,0,0,8)
    create_rect("XAR_SOLID_BORING",0,15,6,0,15,8)
    create_rect("XAR_SOLID_BORING",15,0,6,15,0,8)
    create_rect("XAR_SOLID_BORING",15,15,6,15,15,8)

    if (bt_get_is_solid_physically(get_input_adj_bt(0,0,1))) or (get_input_adj_bt(0,0,1) == "XAR_SOLID_BORING_CONCRETE_PURPLE_BORDER") then
        create_rect("block_omniverse_yan_forest_air",0,0,15,15,15,15)
        create_rect("XAR_SOLID_BORING",0,0,7,0,0,15)
        create_rect("XAR_SOLID_BORING",0,15,7,0,15,15)
        create_rect("XAR_SOLID_BORING",15,0,7,15,0,15)
        create_rect("XAR_SOLID_BORING",15,15,7,15,15,15)
    end
    if (get_input_adj_bt(0,0,1) == "XAR_SOLID_BORING_CONCRETE_PURPLE_BORDER") then --special case thing
        create_rect("block_omniverse_yan_forest",0,1,15,15,14,15)
        create_rect("block_omniverse_yan_forest",1,0,15,14,15,15)
    end

    if bt_get_is_solid_physically(get_input_adj_bt(0,0,-1)) then
        create_rect("XAR_SOLID_BORING",0,0,0,0,0,7)
        create_rect("XAR_SOLID_BORING",0,15,0,0,15,7)
        create_rect("XAR_SOLID_BORING",15,0,0,15,0,7)
        create_rect("XAR_SOLID_BORING",15,15,0,15,15,7)
    end
end
