function p.__get_is_solid() return true end
function p.__get_tex() return "block_concrete_brown_orange_border" end

function p.__main()
    set_default_block("XAR_SOLID_BORING_CONCRETE_BROWN_ORANGE_BORDER")
    create_rect("XAR_GLASS",1,0,0,14,15,15)
    create_rect("XAR_GLASS",0,1,0,15,14,15)
    srand(seed_yz())
    if (randf() > 0.9) or (get_input_adj_bt(1,1,-1) == "XAR_SOLID_BORING_CONCRETE_BROWN_BORDER") then
        create_rect("XAR_SOLID_BORING_CONCRETE_BROWN_ORANGE_BORDER",0,6,1,15,9,3)
        create_rect("XAR_EMPTY_BORING",0,7,1,15,8,2)
    end
    srand(seed_xz())
    if (randf() > 0.9) or (get_input_adj_bt(1,1,-1) == "XAR_SOLID_BORING_CONCRETE_BROWN_BORDER") then
        create_rect("XAR_SOLID_BORING_CONCRETE_BROWN_ORANGE_BORDER",6,0,1,9,15,3)
        create_rect("XAR_EMPTY_BORING",7,0,1,8,15,2)
    end
    srand(seed_normal())
    create_rect("XAR_EMPTY_BORING",1,1,0,14,14,15)
    create_rect("XAR_SOLID_BORING_CONCRETE_BROWN_ORANGE_BORDER",0,0,0,15,15,0)

    create_rect("XAR_SOLID_BORING_CONCRETE_BROWN_BORDER",6,6,0,9,9,15)
    create_rect("XAR_EMPTY_BORING",7,7,0,8,8,15)
    create_rect("block_ladder_y_pos",6,8,0,6,8,15)
    create_rect("block_ladder_y_pos",9,8,0,9,8,15)
    create_rect("block_ladder_y_neg",6,7,0,6,7,15)
    create_rect("block_ladder_y_neg",9,7,0,9,7,15)
    create_rect("block_ladder_x_pos",8,6,0,8,6,15)
    create_rect("block_ladder_x_pos",8,9,0,8,9,15)
    create_rect("block_ladder_x_neg",7,6,0,7,6,15)
    create_rect("block_ladder_x_neg",7,9,0,7,9,15)

    create_rect("block_mountain_caves_supports",0,0,0,0,0,15)
    create_rect("block_mountain_caves_supports",0,15,0,0,15,15)
    create_rect("block_mountain_caves_supports",15,0,0,15,0,15)
    create_rect("block_mountain_caves_supports",15,15,0,15,15,15)
end

