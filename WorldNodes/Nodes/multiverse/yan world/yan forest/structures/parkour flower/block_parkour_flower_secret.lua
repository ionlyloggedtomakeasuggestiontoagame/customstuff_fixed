function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_concrete_dark_dot"
end

function p.__main()
    set_default_block("XAR_SOLID_BORING_CONCRETE_DARK_DOT")
    create_rect("XAR_EMPTY_BORING", 0,1,1, 15,14,14)
    if (get_input_adj_bt(-1,0,0) == "block_parkour_flower_secret_room") then
        add_env_rect(7,1,1,7,14,14,"rect_gravity_exit")
        add_env_rect(8,1,1,8,14,14,"rect_gravity_enter")
        create_rect("block_field_boring", 7,1,1, 8,14,14)
        create_rect("XAR_SOLID_BORING_ARCADE", 2,1,1, 3,14,14)
        add_env_rect(2,1,1,2,14,14,"env_rect_arcade_exit")
        add_env_rect(3,1,1,3,14,14,"env_rect_arcade_enter")
        create_rect("XAR_SOLID_BORING_WHITE_BOX", 5,1,1, 5,14,14)
        add_env_rect(5,1,1,5,14,14,"env_rect_take_ammo")
        create_rect("XAR_EMPTY_BORING", 2,2,2, 5,13,13)
    end
    if (get_input_adj_bt(1,0,0) == "block_parkour_flower_secret_room") then
        add_env_rect(8,1,1,8,14,14,"rect_gravity_exit")
        add_env_rect(7,1,1,7,14,14,"rect_gravity_enter")
        create_rect("block_field_boring", 7,1,1, 8,14,14)
        create_rect("XAR_SOLID_BORING_ARCADE", 12,1,1, 13,14,14)
        add_env_rect(13,1,1,13,14,14,"env_rect_arcade_exit")
        add_env_rect(12,1,1,12,14,14,"env_rect_arcade_enter")
        create_rect("XAR_SOLID_BORING_WHITE_BOX", 10,1,1, 10,14,14)
        add_env_rect(10,1,1,10,14,14,"env_rect_take_ammo")
        create_rect("XAR_EMPTY_BORING", 10,2,2, 13,13,13)
    end
end
