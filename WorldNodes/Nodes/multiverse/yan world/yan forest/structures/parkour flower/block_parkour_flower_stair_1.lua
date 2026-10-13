function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_concrete_dark_dot"
end

function p.__main()
    set_default_block("XAR_SOLID_BORING_BLUE_BORDER")
    create_rect("XAR_EMPTY_BORING", 1,0,1, 14,14,15)
    create_rect("XAR_SOLID_BORING_BLUE_BORDER", 7,7,1, 7,7,15)
    create_rect("block_ladder_y_pos", 7,6,1, 7,6,15)
end
