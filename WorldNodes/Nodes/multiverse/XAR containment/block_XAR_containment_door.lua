function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_black"
end

function p.__main()
    omniverse.rainbow_dark_cubes(0,0,0,15,15,15)
    set_pos(7,7,15, "block_multiversal_air")
    set_pos(7,7,0, "XAR_EMPTY_BORING")
    set_pos(7,7,14, "block_dockbay")
    set_pos(7,7,1, "block_dockbay")
    create_rect("XAR_EMPTY_BORING",7,6,2,7,8,13)
    add_bent(7,7,15,"bent_base_ring_green")
    add_bent(7,7,0,"bent_base_ring_green")
    set_pos(7,7,13, "block_XAR_containment_notice")
    set_pos(7,7,2, "block_XAR_containment_notice")
    omniverse.rainbow_dark_cubes(7,7,3,7,7,12)
    set_pos(7,6,3, "XAR_BRISTOL_ONE_WAY_Z_NEG")
    set_pos(7,6,4,"block_shavolandkey_stealer")
    set_pos(7,8,12, "XAR_BRISTOL_ONE_WAY_Z_POS")
    set_pos(7,8,11,"block_shavolandkey_stealer")
    set_pos(7,6,12, "XAR_TOPCITY1_GUARD")
    set_pos(7,8,4,"block_XAR_containment_3guards")
    
    
end