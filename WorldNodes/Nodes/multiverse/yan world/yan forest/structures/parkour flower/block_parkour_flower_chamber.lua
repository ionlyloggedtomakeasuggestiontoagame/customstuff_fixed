function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_concrete_dark_dot"
end

function p.__main()
    set_default_block("XAR_SOLID_BORING_CONCRETE_DARK_DOT")
    create_rect("XAR_EMPTY_BORING", 1,1,1, 14,14,14)
    set_pos(7,0,7,"block_dockbay")
    create_rect("XAR_SOLID_BORING_CONCRETE_DARK_DOT", 6,1,0, 8,1,15)
    create_rect("block_parkour_flower_secret", 6,1,4, 8,1,4)
    set_pos(7,1,4,"block_parkour_flower_secret_room")
    base_blue_tele.set_blue_type_down(7,1,7)
    set_pos(7,1,7,"block_parkour_flower_gravity_changer_entrance")
    create_rect("block_water_blue_ring", 1,1,1, 14,14,1)
    create_rect("block_parkour_flower_plataforms", 7,2,7, 7,14,7)
    create_rect("block_parkour_flower_plataforms", 7,2,9, 7,14,9)
    set_pos(7,14,7,"block_parkour_flower_stair_1")
    set_pos(7,14,8,"block_parkour_flower_stair_2")
    set_pos(7,14,9,"block_parkour_flower_stair_3")
    set_pos(7,0,9,"block_parkour_flower_treasure")
    set_pos(7,1,9,"block_parkour_flower_gravity_changer_exit")
end
