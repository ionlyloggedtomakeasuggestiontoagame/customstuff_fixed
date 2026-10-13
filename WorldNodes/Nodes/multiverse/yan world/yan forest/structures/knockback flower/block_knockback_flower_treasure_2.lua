function p.__get_is_solid() return true end
function p.__get_tex() return "block_concrete_yellow_x" end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")
    base_blue_tele.set_blue_type_terminal(7,7,7)
    std.create_edges("XAR_SOLID_BORING_GREEN_BLACK_STRIPED")
    create_rect("XAR_SOLID_BORING_GREEN_BLACK_STRIPED",0,0,15,15,15,15)
    create_rect("XAR_SOLID_BORING_GREEN_BLACK_STRIPED",0,0,0,15,15,0)
    add_env_rect(0,0,0,15,15,15,"rect_gravity_exit")
    add_env_rect(0,0,0,15,15,15,"env_rect_arcade_exit")

    add_bent(13,13,13,"bent_base_ring_pink_source")
    add_bent_s(7,7,11,"bent_base_waypoint","Knockback Flower Treasure Secret")
    add_bent(7,7,9,"bent_base_save")
    
    omniverse.txtpeople(7,7,5,[["...gas, gas, gas i'm gonna step on the gas, tonight, i'll fly..."]])
    add_bent(7,7,3,"bent_gold_once_500")
    for i = 1,14 do
    --lots of nukes and health upgrades
        add_bent(0,1,i,"bent_upgrade_gun_9_damage")
        add_bent(0,2,i,"bent_upgrade_gun_9_damage")
        add_bent(0,3,i,"bent_upgrade_health_cap")
        add_bent(0,4,i,"bent_upgrade_health_cap")
        add_bent(0,5,i,"bent_upgrade_gun_9_ammo_cap")
        add_bent(0,6,i,"bent_upgrade_gun_9_ammo_cap")
        add_bent(0,7,i,"bent_upgrade_shield")
        add_bent(0,8,i,"bent_upgrade_shield")
        add_bent(0,9,i,"bent_upgrade_gun_9_proj_speed")
        add_bent(0,10,i,"bent_upgrade_gun_9_proj_speed")
        add_bent(0,11,i,"bent_upgrade_health_regen")
        add_bent(0,12,i,"bent_upgrade_health_regen")
        add_bent(0,13,i,"bent_upgrade_gun_9_radius")
        add_bent(0,14,i,"bent_upgrade_gun_9_radius")
    end
end
