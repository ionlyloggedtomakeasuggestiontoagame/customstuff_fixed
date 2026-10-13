function p.__get_is_solid() return true end

function p.__get_tex() return "block_dark_concrete_white_border" end

function p.__main()
set_default_block("block_E1_2_air")
    local expo = 2
    local offset = 7.5
    omniverse.superellipse("XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER",7,expo,offset,offset,offset)
    omniverse.superellipse("block_pearl_black_air_big",6,expo,offset,offset,offset)
    omniverse.superellipse("XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER",3,expo,offset,offset,offset)
    omniverse.superellipse("block_pearl_black_air_big",2,expo,offset,offset,offset)
    create_rect("XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER",6,6,13,9,9,13)
    set_pos(7,7,14,"XAR_MYLANTIS_CAVES_LIB_ASCEND_WALL_Z_POS")
    set_pos(7,7,13,"XAR_EMPTY_BORING")
    set_pos(7,7,12,"block_pearl_black_pre_entrance")
    set_pos(7,7,5,"block_pearl_black_inner_shrink")
    set_pos(7,7,8,"block_pearl_black_treasure_big_2")
    add_bent(7,7,13,"bent_base_ring_green")
    add_bent(15,15,15,"bent_base_ring_pink_dest")
    set_pos(15,15,15,"block_pearl_pink")
    add_bent(7,7,3,"bent_gold_once_100")
    add_bent_s(8,8,3,"bent_base_txt","Hopefully you found a way to skip the ring and not cheat, didnt you?")
end
