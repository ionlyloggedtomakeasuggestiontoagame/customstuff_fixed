function p.__get_is_solid() return true end
function p.__get_tex() return "block_concrete_dark_dot" end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")
    add_env_rect(0,7,0,15,7,15,"rect_gravity_exit")
    add_env_rect(0,8,0,15,8,15,"rect_gravity_enter")
    create_rect("block_field_boring", 0,7,0, 15,8,15)
    create_rect("XAR_ONE_WAY_Y_NEG", 0,15,0, 15,15,15)
    add_env_rect(0,14,0,15,14,15,"env_rect_arcade_exit")
end
