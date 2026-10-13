function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__main()
    set_default_block("XAR_MOSSY_AIR_ASCEND_RECURSIVE")
    std.create_edges("XAR_SOLID_BORING_DARK_CONCRETE_GREEN_BORDER")
    add_bent(7,7,6,"bent_base_ring_pink_source")
    add_bent(14,5,7,"bent_upgrade_health_cap")
    add_bent(14,6,7,"bent_upgrade_gun_"..randi(0,9).."_ammo_cap")
    add_bent(14,7,7,"bent_upgrade_gun_"..randi(0,9).."_ammo_cap")
    add_bent(14,8,7,"bent_upgrade_gun_"..randi(0,9).."_ammo_cap")
    add_bent(14,9,7,"bent_upgrade_gun_"..randi(0,9).."_ammo_cap")
    add_bent(14,10,7,"bent_upgrade_health_regen")
end