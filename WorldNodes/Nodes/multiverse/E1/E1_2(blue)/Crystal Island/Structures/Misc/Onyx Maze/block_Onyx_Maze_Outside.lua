function p.__get_is_solid() return true end
function p.__get_tex() return "block_mushroom_black" end

function p.__main()
    set_default_block("XAR_GLASS")
    local colors = {"XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER"
                    ,"XAR_SOLID_BORING_CONCRETE_WHITE_BORDER"
                    ,"XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER"
                    ,"XAR_SOLID_BORING_CONCRETE_WHITE_BORDER"
                    ,"XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER"
                    ,"XAR_SOLID_BORING_CONCRETE_WHITE_BORDER"
                    ,"XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER"}
    for i = 0,6 do
    omniverse.create_edges("XAR_SOLID_BORING",i,i,i,15-i,15-i,15-i)
    omniverse.replace_rect("XAR_SOLID_BORING",colors[i+1],i,i,i,15-i,15-i,15-i)
    end
    create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",6,6,0,9,9,0)
    create_rect("XAR_EMPTY_BORING",7,7,0,8,8,6)
    create_rect("XAR_STOPPER",7,7,2,8,8,2)
    create_rect("XAR_MYLANTIS_CAVES_LIB_ASCEND_WALL_Z_NEG",7,7,0,8,8,0)
    add_bent(7,7,1,"bent_base_ring_green")
    set_pos(7,7,7,"block_Onyx_Maze_entrance")
    set_pos(8,8,8,"block_Onyx_Maze_treasure")
    base_blue_tele.set_blue_type_down(8,8,8)
    set_pos(15,15,0,"block_pearl_pink")
    add_bent(15,15,0,"bent_base_ring_pink_dest")
end
