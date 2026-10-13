function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__main()
    set_default_block("XAR_ANTI_PLUG")
    std.create_edges("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER")
    create_rect("XAR_GLASS",1,1,0,14,14,0)
    add_bent(7,7,9,"bent_base_save")
    add_bent(7,7,7,"bent_gold_once_100")
    omniverse.txtpeople(7,7,5,"Crazy? I was crazy once, they locked me in a rubber maze, a rubber maze with rats, and rats make me go crazy...")
    add_bent(7,7,3,"bent_base_ring_red_danger")
    for i = 6,9 do
    --stuff
    add_bent(1,7,i,"bent_health_mega")
    --dark hole
    add_bent(14,3,i,"bent_ammo_gun_9")
    add_bent(14,5,i,"bent_upgrade_gun_9_damage")
    add_bent(14,7,i,"bent_upgrade_gun_9_ammo_cap")
    add_bent(14,9,i,"bent_upgrade_gun_9_damage")
    add_bent(14,11,i,"bent_ammo_gun_9")
    end
end
