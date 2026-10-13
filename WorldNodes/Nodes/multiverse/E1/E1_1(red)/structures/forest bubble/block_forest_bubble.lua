function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_dan_house_window"
end

function p.__main()
    set_default_block("XAR_GLASS")
    for x = 1,14 do
    for y = 1,14 do
    for z = 1,14 do
        if randf() > 0.5 then
            set_pos(x,y,z,"XAR_YING_FOREST_AIR_TOP")
        else
            set_pos(x,y,z,"block_omniverse_yan_forest_air")
        end
    end
    end
    end
    create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",6,6,15,8,8,15)
    add_bent(7,7,15,"bent_base_ring_green")
    create_rect("XAR_SOLID_BORING_DARK_GREEN_BORDER",1,1,1,14,14,1)
    create_rect("XAR_SOLID_BORING_CONCRETE_PURPLE_BORDER",1,1,14,14,14,14)
    create_rect("block_omniverse_yan_forest",1,1,13,14,14,13)
    set_pos(7,7,15,"XAR_EMPTY_BORING")
    set_pos(7,7,14,"XAR_TOLL_Z_WHITE_100")
    set_pos(7,7,13,"block_omniverse_yan_forest_air")
    for x = 1,14 do
        for y = 1,14 do
        local forests = {"XAR_WILLISTON_TREES","XAR_YING_FOREST","XAR_GROUP_3_PATCH_TREES_BELOW","XAR_FANATIC_ISLAND_ABOVE","XAR_FANATIC_WEED","XAR_MINI_AMMO_FOREST_GUERRILLA_KILO"}
        local foresttype = forests[randi(1,#forests)]
        set_pos(x,y,2,foresttype)
        end
    end
    set_pos(1,1,2,"block_forest_bubble_waypoint")
    add_bent(1,1,3,"bent_base_ring_green")
end
