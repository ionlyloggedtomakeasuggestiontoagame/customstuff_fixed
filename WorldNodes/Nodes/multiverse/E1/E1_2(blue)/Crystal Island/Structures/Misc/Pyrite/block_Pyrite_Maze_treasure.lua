function p.__get_is_solid() return true end
function p.__get_tex() return "block_concrete_green_border" end

function p.__main()
    set_default_block("XAR_ANTI_PLUG")
    std.create_edges("XAR_SOLID_BORING_BRIGHT_GREEN_BORDER")
    add_bent(7,7,9,"bent_base_save")
    add_bent(7,7,7,"bent_gold_once_1")
    omniverse.txtpeople(7,7,5,"This def has alot of good stuff in it, except gold... it is called fools gold for a reason i guess.")
    add_bent(7,7,3,"bent_base_ring_pink_source")
    for i = 1,14 do
    --upgrades
    add_bent(15,1,i,"bent_upgrade_gun_1_damage")
    add_bent(15,2,i,"bent_upgrade_gun_1_damage")
    add_bent(15,3,i,"bent_upgrade_gun_1_ammo_regen")
    add_bent(15,4,i,"bent_upgrade_gun_1_ammo_regen")
    add_bent(15,5,i,"bent_upgrade_gun_1_ammo_cap")
    add_bent(15,6,i,"bent_upgrade_gun_1_ammo_cap")
    add_bent(15,7,i,"bent_upgrade_gun_1_proj_speed")
    add_bent(15,8,i,"bent_upgrade_gun_1_proj_speed")
    add_bent(15,9,i,"bent_upgrade_gun_1_fire_speed")
    add_bent(15,10,i,"bent_upgrade_gun_1_fire_speed")
    add_bent(15,11,i,"bent_upgrade_shield")
    add_bent(15,12,i,"bent_upgrade_shield")
    add_bent(15,13,i,"bent_upgrade_shield")
    add_bent(15,14,i,"bent_upgrade_shield")
    end
    add_bent_i(1,7,7,"bent_damage_5x_stacking",180)
end
