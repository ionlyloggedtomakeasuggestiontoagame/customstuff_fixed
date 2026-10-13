function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__main()
    set_default_block("XAR_MOSSY_AIR_ASCEND_RECURSIVE")
    std.create_edges("XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER")
    set_pos(7,7,11,"block_Onyx_Maze")
    add_bent(7,7,9,"bent_base_save")
    add_bent(7,6,7,"bent_gold_1000")
    add_bent(7,8,7,"bent_armor_2000p")
    omniverse.txtpeople(7,7,5,"I should bring a flashlight next time...")
    add_bent(7,7,3,"bent_base_ring_pink_source")
    for i = 1,14 do
    --upgrades
    add_bent(15,1,i,"bent_upgrade_gun_1_damage")
    add_bent(15,2,i,"bent_upgrade_gun_1_ammo_regen")
    add_bent(15,3,i,"bent_upgrade_gun_1_ammo_cap")
    add_bent(15,4,i,"bent_upgrade_gun_1_proj_speed")
    add_bent(15,5,i,"bent_upgrade_gun_1_fire_speed")
    add_bent(15,6,i,"bent_upgrade_gun_8_radius")
    add_bent(15,7,i,"bent_upgrade_gun_8_time")
    add_bent(15,8,i,"bent_upgrade_health_cap")
    add_bent(15,9,i,"bent_upgrade_health_regen")
    add_bent(15,10,i,"bent_upgrade_shield")
    add_bent(15,11,i,"bent_upgrade_spice")
    add_bent(15,12,i,"bent_upgrade_gun_0_damage")
    add_bent(15,13,i,"bent_upgrade_gun_0_ammo_cap")
    add_bent(15,14,i,"bent_upgrade_gun_0_proj_speed")
    end
    add_bent_i(1,7,7,"bent_damage_5x_stacking",600)
    base_blue_tele.set_blue_type_down(7,7,11)
end
