function p.__get_is_solid() return true end
function p.__get_tex() return "block_concrete_blue_border" end

function p.__main()
    set_default_block("XAR_SOLID_BORING_CONCRETE_BLUE_BORDER")
    create_rect("block_knockback_flower_plataforms",1,1,0,14,14,7)
    create_rect("XAR_EMPTY_BORING",1,1,8,14,14,15)
    create_rect("XAR_SOLID_BORING_DARK_GREEN_BORDER",1,1,7,14,14,7)
    create_rect("block_water_blue_ring",1,1,6,14,14,6)
    create_rect("block_knockback_flower_sky_entrance",1,1,8,14,14,8)
    for x,y,z in bps(1,1,8,14,14,8) do
        block_set_b(x,y,z, "plataforms?", false)
    end
    set_pos(7,7,8,"block_knockback_flower_treasure")
    base_blue_tele.set_blue_type_down(7,7,8)
end
