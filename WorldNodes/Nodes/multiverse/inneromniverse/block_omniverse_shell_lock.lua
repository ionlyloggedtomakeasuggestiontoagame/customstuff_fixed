function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_blue_border"
end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")
    create_rect("XAR_DOOR_GREEN", 0,0,7, 15,15,7)
    add_bent_s(7,7,9,"bent_open_green_door","Key to the Omniverse")
end
