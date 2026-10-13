function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_rainbow"
end

function p.__main()
    set_default_block("XAR_MOSSY_AIR_ASCEND_RECURSIVE")
    std.create_edges("XAR_SOLID_BORING_CONCRETE_YELLOW_X")
    local color = chunk_get_s("color")
    local keycolor = "key_of_"..color.."ness"
    add_bent(7,7,6,"bent_base_ring_pink_source")
    add_bent(7,7,9,"bent_sleep_hour")
    add_bent_s(6,6,8,"bent_key_green",keycolor)
    add_bent_s(6,8,8,"bent_key_green",keycolor)
    add_bent_s(8,6,8,"bent_key_green",keycolor)
    add_bent_s(8,8,8,"bent_key_green",keycolor)
    bent_set_param_i(6, 6, 8, 90)
    bent_set_param_i(6, 8, 8, 90)
    bent_set_param_i(8, 6, 8, 90)
    bent_set_param_i(8, 8, 8, 90)
end

function p.__type_init(id)
ia_block_new_var_s(id, "color", "mrow")
end
