function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_shawvoland"
end

function p.__main()
    set_default_block("block_city_air")
    create_rect("XAR_SOLID_BORING_DARK_CONCRETE_BLUE_BORDER", 0,0,0, 15,15,17)
    create_rect("XAR_GLASS", 0,0,7, 15,15,15)
    create_rect("block_city_air", 1,1,8, 14,14,14)
    create_rect("XAR_SOLID_BORING_DARK_CONCRETE_GREEN_BORDER", 1,1,6, 14,14,6)
    create_rect("block_void_city", 1,1,7, 14,14,7)
    create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER", 0,0,0, 0,2,2)
    add_bent(1,1,2,"bent_base_ring_green")
    add_bent(1,1,8,"bent_base_ring_green")
    create_rect("XAR_EMPTY_BORING", 1,1,2, 1,1,7)
    set_pos(1,1,1,"XAR_ASCEND_SIMPLE")
    set_pos(0,1,1,"XAR_ANTI_PLUG_GLASS")
    set_pos(1,1,3,"XAR_STOPPER")
    set_pos(1,2,3,"XAR_BLACKBERRY_MEDIUM_CORE_4_KEYGUARD")
    create_rect("XAR_BLACKBERRY_MEDIUM_CORE_4_KEYGUARD", 1,3,3, 1,3,5)
    set_pos(1,2,5,"XAR_STOPPER")
    set_pos(1,1,5,"block_shavolandkey")
    set_pos(1,1,6,"block_shavolandkey_stealer")
    set_pos(1,1,4,"XAR_SOLID_BORING_DARK_CONCRETE_BLUE_BORDER")
    set_pos(1,1,7,"block_shavoland_main_block")
    create_rect("block_multiversal_structure", 7,7,7, 8,8,7)
end
