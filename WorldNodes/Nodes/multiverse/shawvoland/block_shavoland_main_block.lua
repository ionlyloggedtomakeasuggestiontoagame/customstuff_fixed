function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_concrete_checker_blue"
end

function p.__main()
    set_default_block("XAR_ANTI_PLUG_GLASS")
    create_rect("block_air", 1,1,1, 14,14,14)
    std.create_edges("XAR_SOLID_BORING_DARK_CONCRETE_BLUE_BORDER")
    add_bent(2,2,6,"bent_base_save")
    add_bent(2,2,8,"bent_base_respawn_point")
    add_bent(2,2,10,"bent_base_waypoint_out_only")
    add_bent_s(2,2,12,"bent_base_waypoint","Shawvoland")
    add_bent(13,2,12,"bent_health_200p_armor_200p")
    add_bent(13,2,10,"bent_gold_once_100")
    add_bent(13,2,8,"bent_gold_once_100")
    add_bent(13,2,6,"bent_gold_once_100")
    add_bent(13,13,12,"bent_buy_station")
    add_bent(13,13,10,"bent_sell_station_rare")
    add_bent(13,13,8,"bent_buy_marker_3")
    add_bent(13,13,6,"bent_buy_nuke_150")
end
