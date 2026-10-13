function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_concrete_yellow_border"
end

function p.__main()
    set_default_block("block_omniverse_yan_forest_air")
    omniverse.create_edges("XAR_SOLID_BORING_CONCRETE_YELLOW_BORDER",0,0,0,15,15,15)
    add_bent(7,7,7,"bent_upgrade_spice")
    add_bent(6,7,7,"bent_upgrade_health_cap")
    add_bent(7,6,7,"bent_upgrade_health_regen")
    add_bent(7,7,6,"bent_upgrade_shield")
    add_bent(8,7,7,"bent_upgrade_health_cap")
    add_bent(7,8,7,"bent_upgrade_health_regen")
    add_bent(7,7,8,"bent_upgrade_shield")
    omniverse.random_upgrade_ammo(7,7,10)
    omniverse.random_upgrade_ammo(7,7,4)
end
