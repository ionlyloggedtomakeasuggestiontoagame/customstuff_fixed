function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_concrete_green_border"
end

function p.__main()
    set_default_block("XAR_ANTI_PLUG")
    std.create_edges("XAR_SOLID_BORING_BRIGHT_GREEN_BORDER")
    create_rect("XAR_GLASS",1,1,15,14,14,15)
    add_bent(7,7,9,"bent_base_save")
    add_bent(7,7,7,"bent_gold_once_100")
    omniverse.txtpeople(7,7,5,"At last found this exit, after being stuck here for a day, at least i wont have to suffer more then.")
    add_bent(7,7,3,"bent_base_ring_red_danger")
    for i = 6,9 do
    --stuff
    add_bent_i(1,7,i,"bent_damage_5x_stacking",60)
    --dark hole
    for x = 2,12 do
        add_bent(14,x,i,"bent_upgrade_spice")
    end
    --add_bent(14,3,i,"bent_upgrade_spice")
    --add_bent(14,5,i,"bent_upgrade_spice")
    --add_bent(14,7,i,"bent_upgrade_spice")
    --add_bent(14,9,i,"bent_upgrade_spice")
    --add_bent(14,11,i,"bent_upgrade_spice")
    end
end
