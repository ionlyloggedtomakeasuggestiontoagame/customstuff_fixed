function p.__get_is_solid()
    return true
end
function p.__get_tex()
    return "block_concrete_white_border"
end

function p.__main()
    base_blue_tele.set_blue_type_up()
    set_default_block("XAR_EMPTY_BORING")
    std.create_edges("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER")
    create_rect("block_field_boring", 1,1,1, 14,15,14)
    add_env_rect(0,0,0,15,15,15,"rect_gravity_enter")
    add_env_rect(2,2,2,13,13,13,"rect_gravity_exit")
    set_pos(7,7,7,"block_blue_ring_button")
end
