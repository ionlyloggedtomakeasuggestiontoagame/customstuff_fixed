function p.__get_is_solid() return true end
function p.__get_tex() return "lock_green" end

function p.__main()
    set_default_block("XAR_GLASS")
    std.create_edges("XAR_SOLID_BORING_DARK_CONCRETE_GREEN_BORDER")
    create_rect("XAR_SOLID_BORING_DARK_CONCRETE_GREEN_BORDER",3,3,3,12,12,12)
    create_rect("XAR_SOLID_BORING_DARK_CONCRETE_GREEN_BORDER",6,15,6,8,15,8)
    set_pos(7,15,7,"XAR_MYLANTIS_CAVES_LIB_ASCEND_WALL_Y_POS")
    create_rect("XAR_EMPTY_BORING",7,8,7,7,14,7)
    add_bent(7,14,7,"bent_base_ring_green")
    set_pos(7,7,7,"block_keyed_dungeon_treasure")
    set_pos(7,8,7,"block_keyed_dungeon_treasure_lock")
    set_pos(7,9,7,"block_keyed_dungeon_images")
    add_bent(15,15,15,"bent_base_ring_pink_dest")
    set_pos(15,15,15,"block_E1_1_air")
    set_pos(9,15,10,"XAR_SOLID_BORING_LETTER_L")
    set_pos(8,15,10,"XAR_SOLID_BORING_LETTER_O")
    set_pos(7,15,10,"XAR_SOLID_BORING_LETTER_C")
    set_pos(6,15,10,"XAR_SOLID_BORING_LETTER_K")
end
