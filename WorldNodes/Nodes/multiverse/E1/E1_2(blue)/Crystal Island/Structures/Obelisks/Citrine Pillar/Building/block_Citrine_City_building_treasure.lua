function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_dark_concrete_orange_border"
end

function p.__main()
    set_default_block("block_E1_2_air")
    srand(seed_normal())
    std.create_edges("block_E1_2_walls")
    add_bent(7,7,9,"bent_base_save")
    add_bent(7,7,7,"bent_gold_once_200")
    omniverse.txtpeople(7,7,5,"Such a big civilization on a crystal and no one thought about an actual city floor other than menger sponges and its infinitelly many holes for you to fall into >:(")
    for i = 4,11 do
    --upgrades
    add_bent(14,3,i,"bent_upgrade_gun_8_damage")
    add_bent(14,5,i,"bent_upgrade_shield")
    add_bent(14,7,i,"bent_upgrade_gun_3_damage")
    add_bent(14,9,i,"bent_upgrade_shield")
    add_bent(14,11,i,"bent_upgrade_gun_8_radius")

    add_bent(1,3,i,"bent_upgrade_gun_8_time")
    add_bent(1,5,i,"bent_upgrade_shield")
    add_bent(1,7,i,"bent_upgrade_gun_3_time")
    add_bent(1,9,i,"bent_upgrade_shield")
    add_bent(1,11,i,"bent_upgrade_gun_8_radius")
    end
    add_bent(7,7,11,"bent_armor_1000p_once")
end
