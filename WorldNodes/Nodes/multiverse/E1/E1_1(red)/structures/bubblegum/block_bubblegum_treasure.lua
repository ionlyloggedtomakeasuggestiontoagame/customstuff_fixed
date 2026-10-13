function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_concrete_white_border"
end

function p.__main()
    set_default_block("XAR_ANTI_PLUG")
    std.create_edges("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER")
    add_bent(13,13,13,"bent_base_ring_pink_source")
    add_bent(7,7,9,"bent_base_save")
    add_bent(7,7,7,"bent_gold_once_300")
    add_bent_s(7,7,5,"bent_base_txt","^x00ff00Message from your friend K: \n\nHaha, balls, everywhere.")
    for i = 4,11 do
    --dark hole
    add_bent(1,3,i,"bent_upgrade_gun_0_proj_speed")
    add_bent(1,5,i,"bent_upgrade_gun_0_damage")
    add_bent(1,7,i,"bent_upgrade_gun_0_ammo_cap")
    add_bent(1,9,i,"bent_upgrade_gun_0_damage")
    add_bent(1,11,i,"bent_upgrade_gun_0_proj_speed")
    --nukes
    add_bent(14,3,i,"bent_upgrade_gun_9_proj_speed")
    add_bent(14,5,i,"bent_upgrade_gun_9_damage")
    add_bent(14,7,i,"bent_upgrade_gun_9_ammo_cap")
    add_bent(14,9,i,"bent_upgrade_gun_9_damage")
    add_bent(14,11,i,"bent_upgrade_gun_9_proj_speed")
    end
end
