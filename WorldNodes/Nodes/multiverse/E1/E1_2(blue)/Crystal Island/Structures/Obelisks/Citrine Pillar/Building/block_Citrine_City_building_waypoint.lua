function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_concrete_checker_blue"
end

function p.__main()
    create_xar_chunk("XAR_BLACK_HOLE_BIG_3_CITY_WP")
    bent_set_param_s(7, 7, 8, "Citrine City Waypoint")
end
