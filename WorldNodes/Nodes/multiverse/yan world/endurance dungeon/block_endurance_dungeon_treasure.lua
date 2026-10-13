function p.__get_is_solid()
    return false
end

function p.__get_tex()
    return ""
end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")
    std.create_edges("XAR_SOLID_BORING_CONCRETE_PURPLE_BORDER")
    add_bent(13,13,13,"bent_base_ring_pink_source")
    add_bent(7,7,9,"bent_base_save")
    add_bent_s(7,7,5,"bent_base_txt","Oh wow, it seems like u really wanted this treasure even if it required killing 10 of those guys, huh, i guess i will give the treasure then.")
    for y = 1,10,2 do
        for z = 1,10,2 do
            add_bent(0,y,z,"bent_upgrade_gun_0_ammo_cap")
            add_bent(0,y,z+1,"bent_upgrade_gun_9_ammo_cap")
            add_bent(0,y+1,z,"bent_upgrade_gun_5_ammo_cap")
            add_bent(0,y+1,z+1,"bent_upgrade_gun_5_damage")
        end
    end
    for y = 1,14 do
        for z = 12,14 do
            add_bent(0,y,z,"bent_upgrade_shield")
        end
    end
    add_bent(0,13,9,"bent_upgrade_spice")
    create_rect("XAR_SOLID_BORING_CONCRETE_PURPLE_BORDER",0,0,11,0,15,11)
    create_rect("XAR_SOLID_BORING_CONCRETE_PURPLE_BORDER",0,11,0,0,11,11)
        create_rect("XAR_SOLID_BORING_CONCRETE_PURPLE_BORDER",0,11,0,0,15,7)
end
