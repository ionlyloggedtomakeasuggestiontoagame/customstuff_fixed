function p.__get_is_solid() return true end

function p.__get_tex() return "block_concrete_purple_x" end

function p.__main()
    set_default_block("XAR_YING_FOREST_AIR_TOP")
    std.create_edges("XAR_SOLID_BORING_CONCRETE_PURPLE_X")
    add_bent(7,7,9,"bent_base_save")
    add_bent(7,6,7,"bent_gold_once_1000")
    add_bent(7,8,7,"bent_armor_2000p_once")
    add_bent(7,7,3,"bent_base_ring_pink_source")
    omniverse.txtpeople(7,7,5,"While exploring the void i found a ring that looked different and decided to use it to shrink rather than grow up, thats how i find out the dust in this place isnt just a guide.")
    for i = 2,13 do
    --dark hole
    add_bent(14,3,i,"bent_upgrade_gun_0_proj_speed")
    add_bent(14,4,i,"bent_upgrade_gun_0_proj_speed")
    add_bent(14,5,i,"bent_upgrade_gun_0_damage")
    add_bent(14,6,i,"bent_upgrade_gun_0_damage")
    add_bent(14,7,i,"bent_upgrade_gun_0_ammo_cap")
    add_bent(14,8,i,"bent_upgrade_gun_0_ammo_cap")
    add_bent(14,9,i,"bent_upgrade_gun_0_damage")
    add_bent(14,10,i,"bent_upgrade_gun_0_damage")
    add_bent(14,11,i,"bent_upgrade_gun_0_proj_speed")
    add_bent(14,12,i,"bent_upgrade_gun_0_proj_speed")
    end
end

