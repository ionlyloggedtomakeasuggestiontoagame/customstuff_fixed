function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_deco1_purple1"
end

function p.__main()
    set_default_block("block_E1_1_air")
    local expo = 2
    local offset = 7.5
    omniverse.superellipse("block_bubblegum_stick_block",7,expo,offset,offset,offset)
    omniverse.superellipse("block_bubblegum_walls_big",6,expo,offset,offset,offset)
    create_rect("block_bubblegum_stick_block",6,6,13,9,9,13)
    set_pos(7,7,14,"XAR_MYLANTIS_CAVES_LIB_ASCEND_WALL_Z_POS")
    set_pos(7,7,13,"XAR_EMPTY_BORING")
    set_pos(7,7,12,"block_bubblegum_pre_entrance")
    add_bent(7,7,13,"bent_base_ring_green")
    add_bent(15,15,15,"bent_base_ring_pink_dest")
end
