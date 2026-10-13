function p.__get_is_solid()
    return false
end

function p.__get_tex()
    return ""
end

function p.__main()
    base_blue_tele.set_blue_type_up()
    set_default_block("XAR_EMPTY_BORING")
    create_sprinkles(0,0,0,15,15,15,0.125,"block_sky_flower_cloud")
end
