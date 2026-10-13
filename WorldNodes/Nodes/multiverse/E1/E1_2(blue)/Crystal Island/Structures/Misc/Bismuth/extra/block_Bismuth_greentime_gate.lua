function p.__get_is_solid()
    return false
end

function p.__get_tex()
    return ""
end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")
    create_rect("XAR_DOOR_GREEN",0,0,7,15,15,7)
    add_bent_s(7,7,11,"bent_open_green_door","greentime")

end