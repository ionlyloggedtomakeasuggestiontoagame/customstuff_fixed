function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_blue_border"
end

function p.__main()
    set_default_block("XAR_SOLID_BORING_BLUE_BORDER")
    --entrance
    create_rect("XAR_YING_FOREST_AIR_PLATFORM_FAST_3", 8,8,1, 8,8,15)
    set_pos(8,8,1,"block_omniverse_shell_lock")
    set_pos(8,8,15,"block_omniverse_shell_lock")
    set_pos(8,8,0,"XAR_STOPPER")

end