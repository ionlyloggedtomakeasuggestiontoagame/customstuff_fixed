function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_concrete_white_border"
end

function p.__main()
    --dont forget to make the down chunks later
    base_blue_tele.set_blue_type_down(7,7,7)
    set_default_block("XAR_MYLANTIS_AIR")
    create_rect("XAR_SOLID_BORING",5,5,5, 9,9,9)
    create_rect("block_white_boring",6,6,5,8,8,9)
    create_rect("block_omniverse_yan_entrance_X",5,6,6,9,8,8)
    create_rect("block_omniverse_yan_entrance_Y",6,5,6,8,9,8)
    create_rect("block_omniverse_yan_world_air",6,6,6, 8,8,8)
    set_pos(7,7,7,"block_omniverse_yan_world_air_middle")
    add_bent(10,7,7,"bent_base_ring_green")
    add_bent(4,7,7,"bent_base_ring_green")
    add_bent(7,10,7,"bent_base_ring_green")
    add_bent(7,4,7,"bent_base_ring_green")
    block_set_b(7,7,7,"center",true)
end
