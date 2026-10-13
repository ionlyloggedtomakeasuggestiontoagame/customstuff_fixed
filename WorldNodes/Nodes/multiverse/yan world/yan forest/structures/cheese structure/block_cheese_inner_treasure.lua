function p.__get_is_solid() return true end
function p.__get_tex() return "block_concrete_yellow_x" end

function p.__main()
    set_default_block("block_omniverse_yan_forest_air")
    std.create_edges("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER")
    add_bent(13,13,13,"bent_base_ring_pink_source")
    add_bent(7,7,9,"bent_base_save")
    add_bent(7,7,7,"bent_gold_once_100")
    local msg = "^xffff00 random goblin: So, why does cheese have treasures inside?"
    .."\n\n^x00aaff random troll: Well, for the same reason oranges and tangerines have huntingtons inside i guess."
    .."\n\n^xffff00 random goblin: Isnt it odd however, like, what is the reason?"
    .."\n\n^x00aaff random troll: I'm not sure either but what matters is that all this food tastes great."
    add_bent_s(7,7,5,"bent_base_txt",msg)
    add_bent(7,7,7,"bent_gold_once_100")
    add_bent_s(7,7,11,"bent_base_waypoint","Cheese Treasure")
    for i = 5,9 do
    --nukes
    add_bent(1,3,i,"bent_upgrade_gun_9_proj_speed")
    add_bent(1,5,i,"bent_upgrade_gun_9_damage")
    add_bent(1,7,i,"bent_upgrade_gun_9_ammo_cap")
    add_bent(1,9,i,"bent_upgrade_gun_9_damage")
    add_bent(1,11,i,"bent_upgrade_gun_9_proj_speed")
    --nukes
    add_bent(14,3,i,"bent_upgrade_gun_9_proj_speed")
    add_bent(14,5,i,"bent_upgrade_gun_9_damage")
    add_bent(14,7,i,"bent_upgrade_gun_9_ammo_cap")
    add_bent(14,9,i,"bent_upgrade_gun_9_damage")
    add_bent(14,11,i,"bent_upgrade_gun_9_proj_speed")
    end
end
