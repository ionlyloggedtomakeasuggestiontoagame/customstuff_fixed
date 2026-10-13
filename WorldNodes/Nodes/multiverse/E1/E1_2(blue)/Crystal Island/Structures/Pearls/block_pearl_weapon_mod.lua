function p.__get_is_solid() return true end
function p.__get_tex() return "block_weapon_mode" end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")
    std.create_edges("XAR_SOLID_BORING_WEAPON_MODE")
    add_ment(7,7,13,"ment_monster_topaz_rock")
    add_bent_s(7,7,11,"bent_base_txt","This costs 8 railgun but allows you to kill those pesky crystal enemies, you can try it out with the one in here.")
    add_bent(7,7,9,"bent_weapon_mod_railgun_5")
    add_bent(7,7,6,"bent_base_ring_green")
    set_pos(7,7,5,"XAR_WEAPON_LIB")
    set_pos(7,7,4,"XAR_SOLID_BORING_EXPANDER")
    set_pos(7,7,3,"XAR_ASCEND_SIMPLE")
    for i = 6,9 do
    --upgrades
    add_bent(14,4,i,"bent_upgrade_gun_7_damage")
    add_bent(14,5,i,"bent_upgrade_gun_7_ammo_cap")
    add_bent(14,7,i,"bent_upgrade_gun_7_damage")
    add_bent(14,8,i,"bent_upgrade_gun_7_ammo_cap")
    add_bent(14,10,i,"bent_upgrade_gun_7_damage")
    add_bent(14,11,i,"bent_upgrade_gun_7_ammo_cap")
    add_bent(1,4,i,"bent_ammo_gun_7_large_once")
    add_bent(1,5,i,"bent_ammo_gun_7_large_once")
    add_bent(1,7,i,"bent_ammo_gun_7_large_once")
    add_bent(1,8,i,"bent_ammo_gun_7_large_once")
    add_bent(1,10,i,"bent_ammo_gun_7_large_once")
    add_bent(1,11,i,"bent_ammo_gun_7_large_once")
    end
end
