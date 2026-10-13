function p.__get_is_solid() return true end
function p.__get_tex() return "block_concrete_yellow_x" end

function p.__main()
    set_default_block("XAR_ANTI_PLUG")
    std.create_edges("XAR_SOLID_BORING_CONCRETE_YELLOW_X")
    add_bent_s(7,7,11,"bent_base_waypoint","Pink Pearl Treasure")
    add_bent(7,7,9,"bent_base_save")
    add_bent(7,7,7,"bent_gold_once_500")
    omniverse.txtpeople(7,7,5,"Why am i going to use this pink ring???")
    add_bent(7,7,3,"bent_base_ring_pink_source")
    for i = 1,14 do
    --upgrades
    add_bent(14,4,i,"bent_upgrade_gun_0_damage")
    add_bent(14,5,i,"bent_upgrade_gun_0_ammo_cap")
    add_bent(14,6,i,"bent_upgrade_gun_0_proj_speed")
    add_bent(14,9,i,"bent_upgrade_gun_9_damage")
    add_bent(14,10,i,"bent_upgrade_gun_9_damage")
    add_bent(14,11,i,"bent_upgrade_gun_9_ammo_cap")
    end
    add_bent_i(1,7,7,"bent_damage_5x_stacking",120)
end
