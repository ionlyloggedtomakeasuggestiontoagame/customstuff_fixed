function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_dark_concrete_red_border"
end

function p.__main()
    set_default_block("block_city_air")
    if get_input_adj_bt(0,0,-1) == "block_xmbb_shawdovar_adapt" then
        create_rect("block_void_city", 0,0,8, 15,15,9)
        create_rect("XAR_SOLID_BORING_DARK_CONCRETE_GREEN_BORDER", 0,0,7, 15,15,8)
        create_rect("block_xmbb_shawdovar_adapt", 0,0,6, 15,15,7)
        create_rect("block_multiversal_structure", 0,0,5, 15,15, 5)
    else
        create_rect("block_void_city", 0,0,0, 15,15,0)
    end
    create_rect("block_xmbb_shawdovar_adapt", 0,14,0, 1,15,15)
    create_rect("block_xmbb_shawdovar_adapt", 0,0,0, 1,1,15)
    create_rect("block_xmbb_shawdovar_adapt", 14,14,0, 15,15,15)
    create_rect("block_xmbb_shawdovar_adapt", 14,0,0, 15,1,15)
end
