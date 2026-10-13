function p.__get_is_solid()
    return false
end

function p.__get_tex()
    return ""
end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")
    std.create_edges("XAR_SOLID_BORING_YELLOW_BLACK_STRIPED")
    add_ment(10,7,7,"ment_key_guard_dans_house")
    add_ment(4,4,7,"ment_key_guard_laser_genesis")
    add_ment(4,10,7,"ment_key_guard_universe")
    add_env_rect(0,0,0,15,15,15,"rect_death_key_3Guards")
end
