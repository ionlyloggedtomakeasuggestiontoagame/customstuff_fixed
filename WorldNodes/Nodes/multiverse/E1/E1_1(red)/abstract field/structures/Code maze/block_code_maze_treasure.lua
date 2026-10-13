function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_concrete_green_border"
end

function p.__main()
    set_default_block("XAR_STONEY_AIR")
    std.create_shell("XAR_SOLID_BORING_CONCRETE_YELLOW_X")
    create_rect("XAR_ANTI_PLUG",1,1,15,14,14,15)
    create_rect("XAR_NOOB_MAZE_FLOWER",1,1,1,14,14,1)
    add_bent(7,7,9,"bent_base_save")
    add_bent(7,7,7,"bent_gold_once_200")
    omniverse.txtpeople(7,7,5,"List of Things to remember myself: \n\n 1-Do not trust burlington citizens with codes.\n\n 2-Do not let burlington citizens modify mazes.\n\n3-Do not get lost in mazes made by burlington citizens.")
    add_bent(7,7,3,"bent_base_ring_pink_source")
    add_bent(1,1,2,"bent_base_ring_green")
    set_pos(1,1,4,"XAR_ASCEND_SIMPLE")
    set_pos(1,1,3,"XAR_SOLID_BORING_EXPANDER")
    set_pos(2,2,1,"XAR_BURLINGTON")
    set_pos(2,2,0,"XAR_BURLINGTON_BELOW_KILO")
    for i = 4,11 do
    --upgrades
    add_bent(14,3,i,"bent_upgrade_gun_7_ammo_cap")
    add_bent(14,4,i,"bent_upgrade_gun_7_fire_speed")
    add_bent(14,5,i,"bent_upgrade_gun_7_damage")
    add_bent(14,6,i,"bent_upgrade_health_cap")
    add_bent(14,7,i,"bent_upgrade_health_cap")
    add_bent(14,8,i,"bent_upgrade_health_regen")
    add_bent(14,9,i,"bent_upgrade_health_regen")
    add_bent(14,10,i,"bent_upgrade_gun_3_ammo_cap")
    add_bent(14,11,i,"bent_upgrade_gun_3_time")
    add_bent(14,12,i,"bent_upgrade_gun_3_damage")
    end
    add_bent_i(1,7,7,"bent_damage_5x_stacking",180)
end
