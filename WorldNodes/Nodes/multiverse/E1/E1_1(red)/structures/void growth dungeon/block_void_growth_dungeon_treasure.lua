function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_concrete_yellow_x"
end

function p.__main()
    set_default_block("XAR_YING_FOREST_AIR_TOP")
    std.create_edges("XAR_SOLID_BORING_CONCRETE_YELLOW_X")
    add_bent(7,7,9,"bent_base_save")
    add_bent(7,7,7,"bent_gold_once_100")
    omniverse.txtpeople(7,7,5,"These things should have at least warn for unlucky people, i spent so long there trying to find a ring that i thought it was some twisted prank that i fell for.")
    for i = 4,11 do
    --dark hole
    add_bent(14,3,i,"bent_upgrade_gun_0_proj_speed")
    add_bent(14,5,i,"bent_upgrade_gun_0_damage")
    add_bent(14,7,i,"bent_upgrade_gun_0_ammo_cap")
    add_bent(14,8,i,"bent_upgrade_gun_0_ammo_cap")
    add_bent(14,10,i,"bent_upgrade_gun_0_damage")
    add_bent(14,12,i,"bent_upgrade_gun_0_proj_speed")
    end
end
