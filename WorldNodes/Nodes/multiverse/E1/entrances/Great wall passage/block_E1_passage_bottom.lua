function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_concrete_blue_border"
end

function p.__main()
    set_default_block("XAR_SOLID_BORING_CONCRETE_BLUE_BORDER")
    create_rect("block_E1_2_air",1,1,0,14,14,15)
    create_rect("XAR_SOLID_BORING_CONCRETE_BLUE_BORDER",0,7,13,15,8,15)
    create_rect("XAR_SOLID_BORING_CONCRETE_BLUE_BORDER",7,0,13,8,15,15)
    create_rect("block_E1_1_door",9,1,15,14,6,15)
    add_bent(11,4,13,"bent_door_open_maze_key")

    create_rect("XAR_DOOR_GREEN",1,1,15,6,3,15)
    add_bent_s(4,4,13,"bent_open_green_door","E1_Great_Mucube_Wall")

    create_rect("XAR_GLASS",1,9,14,6,14,15)
end
