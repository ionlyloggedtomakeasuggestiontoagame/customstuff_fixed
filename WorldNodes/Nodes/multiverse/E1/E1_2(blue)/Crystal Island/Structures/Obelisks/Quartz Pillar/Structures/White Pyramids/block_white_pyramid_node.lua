function p.__get_is_solid() return true end
function p.__get_tex() return "block_dark_concrete_white_border" end

function p.__main()
    set_default_block("XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER")
    
    create_rect("XAR_EMPTY_BORING",6,6,1,9,9,14)

    if (get_input_adj_bt(0,-1,0) == "block_white_pyramid_node") then
        create_rect("XAR_EMPTY_BORING",6,0,1,9,7,14)
    end
    if (get_input_adj_bt(0,1,0) == "block_white_pyramid_node") then
        create_rect("XAR_EMPTY_BORING",6,8,1,9,15,14)
    end
    if (get_input_adj_bt(-1,0,0) == "block_white_pyramid_node") then
        create_rect("XAR_EMPTY_BORING",0,6,1,7,9,14)
    end
    if (get_input_adj_bt(1,0,0) == "block_white_pyramid_node") then
        create_rect("XAR_EMPTY_BORING",8,6,1,15,9,14)
    end

    --stairs
    if chunk_get_b("stairsdown") then
        create_rect("XAR_EMPTY_BORING",2,2,1,13,13,14)
        create_rect("XAR_EMPTY_BORING",6,6,0,9,9,14)
        set_pos(6,6,0,"XAR_SOLID_BORING_BRIGHT_GREEN_BORDER")
        set_pos(6,9,0,"XAR_SOLID_BORING_BRIGHT_GREEN_BORDER")
        set_pos(9,6,0,"XAR_SOLID_BORING_BRIGHT_GREEN_BORDER")
        set_pos(9,9,0,"XAR_SOLID_BORING_BRIGHT_GREEN_BORDER")
        --ladders
        set_pos(6,8,0,"block_ladder_y_pos")
        set_pos(9,8,0,"block_ladder_y_pos")
        set_pos(6,7,0,"block_ladder_y_neg")
        set_pos(9,7,0,"block_ladder_y_neg")
        set_pos(8,6,0,"block_ladder_x_pos")
        set_pos(8,9,0,"block_ladder_x_pos")
        set_pos(7,6,0,"block_ladder_x_neg")
        set_pos(7,9,0,"block_ladder_x_neg")
    end
    if chunk_get_b("stairsup") then
        create_rect("XAR_EMPTY_BORING",2,2,1,13,13,14)
        create_rect("XAR_EMPTY_BORING",6,6,1,9,9,15)
        create_rect("XAR_SOLID_BORING_BRIGHT_GREEN_BORDER",6,6,1,6,6,15)
        create_rect("XAR_SOLID_BORING_BRIGHT_GREEN_BORDER",6,9,1,6,9,15)
        create_rect("XAR_SOLID_BORING_BRIGHT_GREEN_BORDER",9,6,1,9,6,15)
        create_rect("XAR_SOLID_BORING_BRIGHT_GREEN_BORDER",9,9,1,9,9,15)
        create_rect("block_ladder_y_pos",6,8,1,6,8,15)
        create_rect("block_ladder_y_pos",9,8,1,9,8,15)
        create_rect("block_ladder_y_neg",6,7,1,6,7,15)
        create_rect("block_ladder_y_neg",9,7,1,9,7,15)
        create_rect("block_ladder_x_pos",8,6,1,8,6,15)
        create_rect("block_ladder_x_pos",8,9,1,8,9,15)
        create_rect("block_ladder_x_neg",7,6,1,7,6,15)
        create_rect("block_ladder_x_neg",7,9,1,7,9,15)
    end

    --entrance
    if (get_input_adj_bt(0,-1,0) == "block_white_pyramid_entrance") then
        create_rect("XAR_SOLID_BORING_BRIGHT_GREEN_BORDER",5,4,0,10,4,15)
        create_rect("XAR_SOLID_BORING_BRIGHT_GREEN_BORDER",5,2,0,10,2,15)
        create_rect("XAR_SOLID_BORING_BRIGHT_GREEN_BORDER",5,0,0,10,0,15)
        create_rect("XAR_EMPTY_BORING",6,0,1,9,7,14)
    end

    if (randf() > 0.75) and (get_input_adj_bt(0,-1,0) ~= "block_white_pyramid_entrance") then
        add_ment(7,7,7,"ment_monster_guardian")
    end
end

function p.__type_init(id)
    ia_block_new_var_b(id, "stairsup", false)
    ia_block_new_var_b(id, "stairsdown", false)
end