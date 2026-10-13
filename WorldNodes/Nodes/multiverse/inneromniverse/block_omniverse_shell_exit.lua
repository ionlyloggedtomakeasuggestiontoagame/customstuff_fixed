function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_concrete_checker_blue"
end

function p.__main()
    set_default_block("XAR_ANTI_PLUG_GLASS")
    create_rect("block_air", 1,1,1, 14,14,15)
    std.create_edges("XAR_SOLID_BORING_DARK_CONCRETE_BLUE_BORDER")
    add_bent(2,2,6,"bent_base_save")
    add_bent(2,2,8,"bent_base_waypoint_out_only")
    add_bent_s(2,2,10,"bent_base_waypoint","Omniverse Shell Exit")
    add_bent(2,2,12,"bent_base_ring_pink_source")
    add_bent(13,2,10,"bent_gold_once_300")
    add_bent(13,2,8,"bent_gold_once_300")
    add_bent(13,2,6,"bent_gold_once_300")
    for x = 1,5,2 do
        for y = 8,14,2 do
            add_bent(x,13,y,"bent_upgrade_gun_8_time")
        end
    end
    for x = 9,14,2 do
        for y = 8,14,2 do
            add_bent(x,13,y,"bent_upgrade_gun_8_ammo_cap")
        end
    end
    for y = 8,10,2 do
        add_bent(7,13,y,"bent_upgrade_gun_8_radius")
    end
    for y = 12,14,2 do
        add_bent(7,13,y,"bent_upgrade_gun_8_damage")
    end
end
