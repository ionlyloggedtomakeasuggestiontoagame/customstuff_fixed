function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__main()
    create_xar_chunk("XAR_SOLID_BORING_CONCRETE_PURPLE_BORDER")
    create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",6,6,0,9,9,15)
    create_rect("XAR_EMPTY_BORING",1,1,1,14,14,14)
    create_rect("XAR_EMPTY_BORING",7,7,0,8,8,15)
    add_bent_s(7,7,7,"bent_base_txt","This is a bubblegum, there will be ^xff5555tier 3 ^xff0000pool balls ^!inside, very easily escapable, except for the fact the walls are sticky.")
    add_bent(8,8,7,"bent_base_save")
end