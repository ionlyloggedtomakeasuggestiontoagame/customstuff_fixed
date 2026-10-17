function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_concrete_red_border"
end

function p.__main()
    set_default_block("XAR_SOLID_BORING_CONCRETE_RED_BORDER")
    create_rect("block_E1_1_air",1,1,0,14,14,15)
end
