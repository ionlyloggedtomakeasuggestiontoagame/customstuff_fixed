function p.__get_is_solid() return true end
function p.__get_tex() return "block_concrete_blue_border" end

function p.__main()
    set_default_block("XAR_SOLID_BORING_CONCRETE_BLUE_BORDER")
    create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",6,0,1,8,15,3)
    create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",0,6,1,15,8,3)
    create_rect("block_omniverse_yan_forest_air",7,0,2,7,15,2)
    create_rect("block_omniverse_yan_forest_air",0,7,2,15,7,2)
    create_rect("XAR_SOLID_BORING_DARK_GREEN_BORDER",1,1,4,14,14,4)
    create_rect("block_knockback_flower_sky_entrance",1,1,5,14,14,5)
    create_rect("block_knockback_flower_plataforms",1,1,6,14,14,15)
    set_pos(7,7,3,"block_omniverse_yan_forest_air")
    add_bent(7,7,3, "bent_base_ring_green")
    set_pos(7,7,4,"block_knockback_flower_shrink")
    set_pos(7,7,5,"block_knockback_flower_gravity_entrance")
end
