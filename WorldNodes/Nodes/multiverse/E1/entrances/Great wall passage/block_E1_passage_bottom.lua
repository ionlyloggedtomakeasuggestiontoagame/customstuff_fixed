function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_concrete_blue_border"
end

function p.__main()
    set_default_block("XAR_SOLID_BORING_CONCRETE_BLUE_BORDER")
    create_rect("block_E1_2_air",1,1,0,14,14,15)
end
