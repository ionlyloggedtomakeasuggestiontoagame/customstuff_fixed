function p.__get_is_solid() return true end
function p.__get_tex() return "block_concrete_green_border" end

function p.__main()
    set_default_block("XAR_ANTI_PLUG")
    std.create_edges("XAR_SOLID_BORING_BRIGHT_GREEN_BORDER")
    add_bent(7,7,9,"bent_base_save")
    add_bent(7,7,7,"bent_gold_once_200")
    omniverse.txtpeople(7,7,5,"I really should not have dug these tunnels in such a weird way.")
    add_bent(7,7,3,"bent_base_ring_pink_source")
    for i = 6,9 do
    --upgrades
    add_bent(14,3,i,"bent_upgrade_gun_6_ammo_cap")
    add_bent(14,5,i,"bent_upgrade_shield")
    add_bent(14,7,i,"bent_upgrade_gun_6_damage")
    add_bent(14,9,i,"bent_upgrade_shield")
    add_bent(14,11,i,"bent_upgrade_gun_6_proj_speed")
    end
    add_bent_i(1,7,7,"bent_damage_5x_stacking",60)
end
