function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_concrete_blue_border"
end

function p.__main()
    set_default_block("XAR_SOLID_BORING_CONCRETE_BLUE_BORDER")
    create_rect("XAR_EMPTY_BORING",1,1,0,14,14,15)
    create_rect("XAR_ANTI_PLUG",1,1,0,14,14,0)
    create_rect("block_E1_2_door",1,1,7,14,14,7)
    create_rect("block_E1_2_one_way",1,1,15,14,14,15)
    add_bent(7,7,5,"bent_door_open_electric_key")
    add_bent(7,7,9,"bent_base_ring_green")
end
