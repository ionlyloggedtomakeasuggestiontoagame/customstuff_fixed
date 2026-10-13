function p.__get_is_solid()
    return false
end

function p.__get_tex()
    return ""
end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")
    create_rect("XAR_SOLID_BORING_BLUE_BORDER",0,13,0,15,15,15)
    set_pos(7,12,7,"block_sky_flower_grower")
    set_pos(7,13,7,"XAR_EMPTY_BORING")
    add_bent(7,13,7,"bent_base_ring_green")
    set_pos(7,14,7,"block_dockbay")
    set_pos(7,15,7,"block_sky_flower_gravity_changer_entrance")
    base_blue_tele.set_blue_type_down(7,15,7)
end
