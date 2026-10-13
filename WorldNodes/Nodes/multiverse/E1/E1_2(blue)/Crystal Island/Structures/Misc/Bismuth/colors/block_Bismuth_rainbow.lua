function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_rainbow"
end

function p.__main()
    create_xar_chunk("XAR_RAINBOW_FLOWER_SOLID");
    create_rect("XAR_MOSSY_AIR_ASCEND_RECURSIVE_TOP",1,1,1,14,14,14)
    create_rect("XAR_RAINBOW_FLOWER_SOLID",6,6,15,9,9,15)
    create_rect("XAR_MOSSY_AIR_ASCEND_RECURSIVE_TOP",7,7,15,8,8,15)
    add_bent(7,7,9,"bent_base_save")
    add_bent(7,6,7,"bent_gold_once_1000")
    add_bent(7,8,7,"bent_armor_2000p_once")
    omniverse.txtpeople(7,7,5,"Doing all these 7 dungeons was not an easy task, i congratulate anyone before and after me that managed to do this.")
    add_bent(7,7,3,"bent_base_ring_pink_source")
    for i = 1,14 do
    --upgrades
    add_bent(14,1,i,"bent_upgrade_health_cap")
    add_bent(14,2,i,"bent_upgrade_health_cap")
    add_bent(14,3,i,"bent_upgrade_gun_0_ammo_cap")
    add_bent(14,4,i,"bent_upgrade_gun_5_ammo_cap")
    add_bent(14,5,i,"bent_upgrade_gun_2_ammo_cap")
    add_bent(14,6,i,"bent_upgrade_gun_1_ammo_cap")
    add_bent(14,7,i,"bent_upgrade_gun_4_ammo_cap")
    add_bent(14,8,i,"bent_upgrade_gun_6_ammo_cap")
    add_bent(14,9,i,"bent_upgrade_gun_8_ammo_cap")
    add_bent(14,10,i,"bent_upgrade_gun_3_ammo_cap")
    add_bent(14,11,i,"bent_upgrade_gun_7_ammo_cap")
    add_bent(14,12,i,"bent_upgrade_gun_9_ammo_cap")
    add_bent(14,13,i,"bent_upgrade_health_regen")
    add_bent(14,14,i,"bent_upgrade_health_regen")
    end
    add_bent(1,14,2,"bent_base_ring_green")
    set_pos(1,14,1,"XAR_RAINBOW_FLOWER")
end