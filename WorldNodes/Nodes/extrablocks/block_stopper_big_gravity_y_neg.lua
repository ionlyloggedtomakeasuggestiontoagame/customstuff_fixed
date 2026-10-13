function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_stopper2"
end

function p.__main()
    create_xar_chunk("XAR_STOPPER_BIG")
    add_env_rect(0,1,0,15,1,15,"rect_gravity_exit")
    add_env_rect(0,0,0,15,0,15,"rect_gravity_enter")
end
