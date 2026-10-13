function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_concrete_border"
end

function p.__main()
    create_xar_chunk("XAR_HEART_HOUSE_AREA")
    set_pos(8,5,2,"XAR_EMPTY_BORING")
    set_pos(7,7,8,"block_not_heart")
    set_pos(7,7,7,"XAR_SOLID_BORING_DARK_GREEN_BORDER")
end