--function p.__get_is_solid()
--    return true
--end

--function p.__get_tex()
--    return "block_concrete_border"
--end

function p.__get_bt_to_copy()
    return "XAR_NEG_LEVEL_1_TRUNK"
end

function p.__main()
    set_gen_root_parent("XAR_NEG_LEVEL_2_TRUNK")
    create_xar_chunk("XAR_NEG_LEVEL_1_TRUNK")
    set_gen_root_child(7,7,7,"block_true_root")
end