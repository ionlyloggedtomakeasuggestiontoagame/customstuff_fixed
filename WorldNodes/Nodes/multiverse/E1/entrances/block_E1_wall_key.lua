function p.__get_is_solid() return true end

function p.__get_tex() return "key_green" end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")
    std.create_edges("XAR_SOLID_BORING_DARK_CONCRETE_GREEN_BORDER")
    add_bent_s(6,6,8,"bent_key_green","E1_Great_Mucube_Wall")
    add_bent_s(6,8,8,"bent_key_green","E1_Great_Mucube_Wall")
    add_bent_s(8,6,8,"bent_key_green","E1_Great_Mucube_Wall")
    add_bent_s(8,8,8,"bent_key_green","E1_Great_Mucube_Wall")
    bent_set_param_i(6, 6, 8, 150)
    bent_set_param_i(6, 8, 8, 150)
    bent_set_param_i(8, 6, 8, 150)
    bent_set_param_i(8, 8, 8, 150)
end
