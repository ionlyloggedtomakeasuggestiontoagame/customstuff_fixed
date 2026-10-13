function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_concrete_red_border"
end

function p.__main()
    set_default_block("XAR_SOLID_BORING_CONCRETE_RED_BORDER")
    create_rect("block_E1_1_air",1,1,0,14,14,15)
    create_rect("XAR_SOLID_BORING_CONCRETE_RED_BORDER",0,7,0,15,8,2)
    create_rect("XAR_SOLID_BORING_CONCRETE_RED_BORDER",7,0,0,8,15,2)
    create_rect("block_E1_2_door",9,9,0,14,14,0)
    add_bent(11,11,2,"bent_door_open_electric_key")

    create_rect("XAR_DOOR_GREEN",1,4,0,6,6,0)
    add_bent_s(4,4,2,"bent_open_green_door","E1_Great_Mucube_Wall")

    create_rect("XAR_GLASS",1,9,0,6,14,1)
end
