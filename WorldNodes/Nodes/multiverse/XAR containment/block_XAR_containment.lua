function p.__get_is_solid() return true end

function p.__get_tex() return "block_infinity_locked" end

function p.__main()
    set_default_block("XAR_SOLID_BORING_BLACK")
    std.create_edges("block_multiversal_structure")
    create_rect("XAR_MOSSY_AIR_ASCEND_RECURSIVE_TOP",1,1,1,14,14,14)
    create_rect("XAR_SOLID_BORING_BLACK",6,6,6,8,8,8)
    omniverse.create_edges("XAR_SOLID_BORING_DARK_CONCRETE_GREEN_BORDER",6,6,6,8,8,8)
    set_pos(7,7,7, "block_xar_root_replacement")
    set_pos(7,7,8, "block_void_holed")
    add_bent(7,8,9, "bent_base_ring_green")
    set_pos(7,7,15, "block_XAR_containment_door")
    set_pos(7,7,14,"XAR_ASCEND_SIMPLE_3")
end