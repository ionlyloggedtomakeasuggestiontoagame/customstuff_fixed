function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_blue_border"
end

function p.__main()
    set_default_block("XAR_SOLID_BORING_BLUE_BORDER")
    create_rect("XAR_EMPTY_BORING", 1,1,1, 14,14,14)
    create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER", 6,6,15, 9,9,15)
    create_rect("XAR_EMPTY_BORING", 7,7,15, 8,8,15)
    create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER", 7,7,0, 9,9,0)
    set_pos(8,8,0,"XAR_EMPTY_BORING")
    set_pos(8,8,1,"XAR_ASCEND_SIMPLE")
    add_bent(8,8,0,"bent_base_ring_green")
    add_bent_s(2,2,13,"bent_base_waypoint","Omniverse Shell Entrance")
    add_bent(2,2,11,"bent_base_save")
    msg = "This is an Omniverse Shell. "
    .."To go through the hole on the bottom, hopefully u have the Key to the Omniverse and strong EMP."
    add_bent_s(7,7,7,"bent_base_txt",msg)
end
