function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__main()
    set_default_block("XAR_MOSSY_AIR_ASCEND_RECURSIVE")
    std.create_edges("XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER")
    add_bent(7,7,9,"bent_base_save")
    add_bent(7,6,7,"bent_gold_1000")
    add_bent(7,8,7,"bent_armor_2000p")
    omniverse.txtpeople(7,7,5,"Show no mercy to whoever u may hit with this minigun >:D")
    add_bent(7,7,3,"bent_base_ring_pink_source")
    for x,y,z in bps(15,1,1,15,14,14) do
    add_bent(x,y,z,"bent_upgrade_gun_6_damage")
    end
    for x,y,z in bps(6,0,6,9,0,9) do
    add_bent(x,y,z,"bent_upgrade_gun_6_num")
    end
    add_bent_i(1,7,7,"bent_damage_5x_stacking",600)
    base_blue_tele.set_blue_type_down(7,7,11)
end
