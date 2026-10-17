function p.__get_is_solid() return true end
function p.__get_tex() return "block_concrete_yellow_x" end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")
    std.create_edges("XAR_SOLID_BORING_CONCRETE_YELLOW_X")
    add_bent_s(7,7,11,"bent_base_waypoint","Keyed Dungeon Lock Secret Treasure")
    add_bent(7,7,9,"bent_base_save")
    add_bent(7,7,7,"bent_gold_once_500")
    omniverse.txtpeople(7,7,5,"So many things, broken apart by the great mucube walls")
    add_bent(7,7,3,"bent_base_ring_pink_source")
    for i = 1,14 do
    --upgrades
    add_bent(1,15,i,"bent_upgrade_gun_7_damage")
    add_bent(2,15,i,"bent_upgrade_gun_7_ammo_cap")
    add_bent(3,15,i,"bent_gold_once_50")
    add_bent(4,15,i,"bent_upgrade_gun_8_damage")
    add_bent(5,15,i,"bent_upgrade_gun_8_ammo_cap")
    add_bent(6,15,i,"bent_gold_once_50")
    add_bent(7,15,i,"bent_upgrade_gun_0_damage")
    add_bent(8,15,i,"bent_upgrade_gun_0_ammo_cap")
    add_bent(9,15,i,"bent_gold_once_50")
    add_bent(10,15,i,"bent_upgrade_gun_1_damage")
    add_bent(11,15,i,"bent_upgrade_gun_1_ammo_cap")
    add_bent(12,15,i,"bent_gold_once_50")
    add_bent(13,15,i,"bent_upgrade_gun_9_damage")
    add_bent(14,15,i,"bent_upgrade_gun_9_ammo_cap")
    end
    add_bent_i(1,7,7,"bent_damage_5x_stacking",120)
end
