function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_green_black_striped"
end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")
    std.create_edges("XAR_SOLID_BORING_GREEN_BLACK_STRIPED")
    create_rect("XAR_GLASS",1,0,1,14,0,14)
    add_bent(13,13,13,"bent_base_ring_pink_source")
    add_bent(7,7,9,"bent_base_save")
    add_bent(7,7,7,"bent_gold_once_100")
    add_bent_s(7,7,5,"bent_base_txt","^x00ff00Message from your friend K: \n\nWell, another place where i can have some fun in such a dangerous world.")
    for i = 5,9 do
    --cannon
    add_bent(1,3,i,"bent_upgrade_gun_2_proj_speed")
    add_bent(1,5,i,"bent_upgrade_gun_2_damage")
    add_bent(1,7,i,"bent_upgrade_gun_2_ammo_cap")
    add_bent(1,9,i,"bent_upgrade_gun_2_damage")
    add_bent(1,11,i,"bent_upgrade_gun_2_proj_speed")
    --minigun
    add_bent(14,3,i,"bent_upgrade_gun_6_proj_speed")
    add_bent(14,5,i,"bent_upgrade_gun_6_damage")
    add_bent(14,7,i,"bent_upgrade_gun_6_ammo_cap")
    add_bent(14,9,i,"bent_upgrade_gun_6_damage")
    add_bent(14,11,i,"bent_upgrade_gun_6_proj_speed")
    --some health crammed inbetween
    add_bent(1,4,i,"bent_upgrade_health_cap")
    add_bent(14,4,i,"bent_upgrade_health_regen")
    end
end
