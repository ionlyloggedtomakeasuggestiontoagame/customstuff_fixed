function p.__get_is_solid()
    return true
end
function p.__get_tex()
    return "block_concrete_dark_dot"
end

function p.__main()
    base_blue_tele.set_blue_type_terminal(8,13,2)
    set_default_block("XAR_EMPTY_BORING")
    add_env_rect(0,7,0,15,7,15,"rect_gravity_exit")
    add_env_rect(0,8,0,15,8,15,"rect_gravity_enter")
    create_rect("block_field_boring", 0,7,0, 15,8,15)
    create_rect("XAR_SOLID_BORING_ARCADE", 0,2,0, 15,3,15)
    add_env_rect(0,2,0,15,2,15,"env_rect_arcade_exit")
    add_env_rect(0,3,0,15,3,15,"env_rect_arcade_enter")
    create_rect("XAR_SOLID_BORING_WHITE_BOX", 0,5,0, 15,5,15)
    add_env_rect(0,5,0,15,5,15,"env_rect_take_ammo")
    create_rect("XAR_EMPTY_BORING", 1,2,1, 14,5,14)
    create_rect("XAR_SOLID_BORING_BLUE_BORDER", 7,12,0, 8,13,0)
end
