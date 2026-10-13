function p.__get_is_solid()
    return false
end

function p.__get_tex()
    return ""
end

function p.__main()
    set_default_block("XAR_MOSSY_AIR_ASCEND_RECURSIVE")
    std.create_edges("XAR_SOLID_BORING_CONCRETE_YELLOW_X")
    add_bent(7,7,8,"bent_sleep_hour","greentime")
    add_bent_s(6,6,6,"bent_key_green","greentime")
    add_bent_s(6,8,6,"bent_key_green","greentime")
    add_bent_s(8,6,6,"bent_key_green","greentime")
    add_bent_s(8,8,6,"bent_key_green","greentime")
    bent_set_param_i(6, 6, 6, 200)
    bent_set_param_i(6, 8, 6, 200)
    bent_set_param_i(8, 6, 6, 200)
    bent_set_param_i(8, 8, 6, 200)

end