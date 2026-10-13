function p.__get_is_solid()
    return false
end

function p.__get_tex()
    return ""
end

function p.__main()
    set_default_block("block_air")
    create_rect("XAR_SOLID_BORING_CONCRETE_YELLOW_X", 3,3,5, 12,12,5)
    create_rect("XAR_SOLID_BORING_CONCRETE_YELLOW_X", 3,3,9, 12,12,9)
    add_ment(7,7,7,"ment_yellow_box_device")
    add_env_rect(0,0,7,15,15,8,"env_rect_take_keys")
end
