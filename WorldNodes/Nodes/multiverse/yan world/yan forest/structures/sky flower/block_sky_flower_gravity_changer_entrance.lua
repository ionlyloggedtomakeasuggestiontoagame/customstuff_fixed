function p.__get_is_solid()
    return true
end
function p.__get_tex()
    return "block_concrete_dark_dot"
end

function p.__main()
    base_blue_tele.set_blue_type_terminal(8,7,2)
    set_default_block("XAR_EMPTY_BORING")
    add_env_rect(0,5,0,15,5,15,"rect_gravity_exit")
    add_env_rect(0,6,0,15,6,15,"rect_gravity_enter")
    create_rect("block_field_boring", 0,5,0, 15,6,15)
    add_env_rect(0,9,0,15,9,15,"rect_gravity_exit")
    add_env_rect(0,10,0,15,10,15,"rect_gravity_enter")
    create_rect("block_field_boring", 0,9,0, 15,10,15)
    create_rect("XAR_SOLID_BORING_BLUE_BORDER", 7,7,0, 8,8,0)
end
