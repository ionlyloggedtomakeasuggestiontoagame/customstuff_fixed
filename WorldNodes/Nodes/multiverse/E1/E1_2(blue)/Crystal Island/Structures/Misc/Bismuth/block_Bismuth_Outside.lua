function p.__get_is_solid() return true end
function p.__get_tex() return "block_deco1_rainbow1" end

function p.__main()
    set_default_block("XAR_GLASS")
    local colors = {"XAR_SOLID_BORING_CONCRETE_RED_BORDER"
                    ,"XAR_SOLID_BORING_CONCRETE_ORANGE_BORDER"
                    ,"XAR_SOLID_BORING_CONCRETE_YELLOW_BORDER"
                    ,"XAR_SOLID_BORING_BRIGHT_GREEN_BORDER"
                    ,"XAR_SOLID_BORING_DARK_GREEN_BORDER"
                    ,"XAR_SOLID_BORING_CONCRETE_BLUE_BORDER"
                    ,"XAR_SOLID_BORING_CONCRETE_PURPLE_BORDER"}
    for i = 0,6 do
    omniverse.create_edges("XAR_SOLID_BORING",i,i,i,15-i,15-i,15-i)
    omniverse.replace_rect("XAR_SOLID_BORING",colors[i+1],i,i,i,15-i,15-i,15-i)
    end
    create_rect("XAR_SOLID_BORING_CONCRETE_RED_BORDER",6,6,15,9,9,15)
    create_rect("XAR_MOSSY_AIR_ASCEND_RECURSIVE",7,7,9,8,8,15)
    create_rect("XAR_STOPPER",7,7,13,8,8,13)
    create_rect("block_shavolandkey_stealer",7,7,12,8,8,12)
    create_rect("XAR_MYLANTIS_CAVES_LIB_ASCEND_WALL_Z_POS",7,7,15,8,8,15)
    add_bent(7,7,14,"bent_base_ring_green")
    create_rect("block_Bismuth",7,7,7,8,8,8)
    block_set_s(7, 7, 7, "color", "red")
    block_set_s(7, 7, 8, "color", "orange")
    block_set_s(7, 8, 7, "color", "lime")
    block_set_s(8, 7, 7, "color", "blue")
    block_set_s(8, 8, 7, "color", "green")
    block_set_s(8, 7, 8, "color", "purple")
    block_set_s(7, 8, 8, "color", "yellow")
    block_set_s(8, 8, 8, "color", "rainbow")

    if randf() < 1/8 then
        set_pos(15,15,0,"block_pearl_pink")
        add_bent(15,15,0,"bent_base_ring_pink_dest")
    end
end
