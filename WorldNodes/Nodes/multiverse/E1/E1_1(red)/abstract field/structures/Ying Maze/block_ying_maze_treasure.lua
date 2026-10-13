function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_concrete_green_border"
end

function p.__main()
    set_default_block("XAR_STONEY_AIR")
    std.create_shell("XAR_SOLID_BORING_YING")
    create_rect("XAR_ANTI_PLUG",7,15,7,8,15,8)
    create_rect("XAR_YING_FLOWER",1,1,1,14,14,1)
    add_bent(7,7,9,"bent_base_save")
    add_bent(7,7,7,"bent_gold_once_200")
    omniverse.txtpeople(7,7,5,"Who turned off the lights???")
    add_bent(7,7,3,"bent_base_ring_pink_source")
    add_bent(1,1,2,"bent_base_ring_green")
    set_pos(1,1,4,"XAR_ASCEND_SIMPLE")
    set_pos(1,1,3,"XAR_SOLID_BORING_EXPANDER")
    for i = 6,9 do
    --upgrades
    add_bent(14,3,i,"bent_upgrade_gun_1_ammo_cap")
    add_bent(14,4,i,"bent_upgrade_gun_1_ammo_regen")
    add_bent(14,5,i,"bent_upgrade_gun_1_damage")
    add_bent(14,6,i,"bent_upgrade_health_cap")
    add_bent(14,7,i,"bent_upgrade_health_cap")
    add_bent(14,8,i,"bent_upgrade_health_regen")
    add_bent(14,9,i,"bent_upgrade_health_regen")
    add_bent(14,10,i,"bent_upgrade_gun_3_ammo_cap")
    add_bent(14,11,i,"bent_upgrade_gun_3_time")
    add_bent(14,12,i,"bent_upgrade_gun_3_damage")
    end
    add_bent_i(1,7,7,"bent_damage_5x_stacking",60)
end
