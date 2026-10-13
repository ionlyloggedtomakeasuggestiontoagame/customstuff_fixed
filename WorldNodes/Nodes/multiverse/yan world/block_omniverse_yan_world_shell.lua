function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_yan_pattern"
end

function p.__main()
    --dont forget to make the down chunks later
    base_blue_tele.set_blue_type_down(7,7,7)
    set_default_block("block_omniverse_yan_solid_boring")
    create_rect("block_omniverse_yan_forest_air",1,1,1, 14,14,14)
    create_rect("block_omniverse_yan_forest_air",0,7,7, 15,8,8)
    create_rect("block_omniverse_yan_forest_air",7,0,7, 8,15,8)
    create_rect("XAR_MOSSY_AIR_ASCEND_RECURSIVE",6,6,6,8,8,8)
    add_bent(7,7,5,"bent_base_ring_blue")
    set_pos(7,7,7,"block_omniverse_yan_world")
    add_bent(7,7,8,"bent_base_ring_green")
    add_bent(7,7,10,"bent_base_ring_pink_dest")
    add_bent(13,13,13,"bent_base_save")
    add_bent_s(13,13,11,"bent_base_waypoint","Yan World Outer Block")
    add_bent_s(2,13,13,"bent_base_txt","This is the top room of the ^xff00ff Yan World^!.")
    add_bent_s(2,2,13,"bent_base_txt","Message from Laniakea: \n\n^x00ffffSometimes i feel surprised about the nature of the Xar universes, and one of them is that altough they have ying things, they lack the yan part, and now i discover that these parts exist outside those universes, but appear to be destroyed when inside one.")
end
