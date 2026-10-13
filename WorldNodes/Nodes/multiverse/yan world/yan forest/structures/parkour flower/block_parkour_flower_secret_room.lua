function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_concrete_dark_dot"
end

function p.__main()
    create_xar_chunk("XAR_SPACE_GALAXY_FLOWER")
    create_rect("XAR_SOLID_BORING_CONCRETE_DARK_DOT", 0,0,0, 15,15,0)
    create_rect("XAR_SOLID_BORING_CONCRETE_DARK_DOT", 0,0,15, 15,15,15)
    create_rect("XAR_SOLID_BORING_CONCRETE_DARK_DOT", 0,0,0, 15,0,15)
    create_rect("XAR_SOLID_BORING_CONCRETE_DARK_DOT", 0,15,0, 15,15,15)
end
