function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_rainbow"
end

function p.__main()
    set_default_block("XAR_GLASS")
    local color = chunk_get_s("color")
    local keycolor = "key_of_"..color.."ness"
    local blockcolor = "XAR_SOLID_BORING_CONCRETE_"..string.upper(color).."_BORDER"
    if color ~= "green" then
        if color ~= "lime" then
            create_rect(blockcolor,0,0,6,15,15,8)
        else
            create_rect("XAR_SOLID_BORING_BRIGHT_GREEN_BORDER",0,0,6,15,15,8)
        end
    else
        create_rect("XAR_SOLID_BORING_DARK_GREEN_BORDER",0,0,6,15,15,8)
    end
    if color == "red" then
        create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",0,0,14,15,15,15)
    end
    create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",15,5,6,15,9,8)
    create_rect("XAR_MOSSY_AIR_ASCEND_RECURSIVE",2,2,0,13,13,15)
    create_rect("XAR_DOOR_GREEN",2,2,7,13,13,7)
    set_pos(15,6,7,"XAR_MOSSY_AIR_ASCEND_RECURSIVE")
    add_bent_s(15,6,7,"bent_open_green_door",keycolor)
    set_pos(15,8,7,"XAR_MOSSY_AIR_ASCEND_RECURSIVE")
    set_pos(15,8,8,"XAR_RAINBOW_FLOWER_SOLID")
    add_bent_s(15,8,7,"bent_open_green_door","key_of_rainbowness")
    if color == "purple" then
        set_pos(2,13,0,"XAR_RED_MAZE_FLOWER")
    end

end

function p.__type_init(id)
ia_block_new_var_s(id, "color", "mrow")
end
