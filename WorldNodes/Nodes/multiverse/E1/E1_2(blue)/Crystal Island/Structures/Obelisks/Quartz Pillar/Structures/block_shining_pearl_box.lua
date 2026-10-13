function p.__get_is_solid() return true end
function p.__get_tex() return "block_deco1" end

function p.__main()
    set_default_block("block_E1_2_air")
    std.create_shell("block_field_boring")
    
    add_env_rect(0,0,0,0,15,15,"rect_gravity_enter")
    add_env_rect(1,1,1,1,14,14,"rect_gravity_exit")

    add_env_rect(15,0,0,15,15,15,"rect_gravity_enter")
    add_env_rect(14,1,1,14,14,14,"rect_gravity_exit")

    add_env_rect(0,0,0,15,0,15,"rect_gravity_enter")
    add_env_rect(1,1,1,14,1,14,"rect_gravity_exit")

    add_env_rect(0,15,0,15,15,15,"rect_gravity_enter")
    add_env_rect(1,14,1,14,14,14,"rect_gravity_exit")

    add_env_rect(0,0,0,15,15,0,"rect_gravity_enter")
    add_env_rect(1,1,1,14,14,1,"rect_gravity_exit")

    add_env_rect(0,0,15,15,15,15,"rect_gravity_enter")
    add_env_rect(1,1,14,14,14,14,"rect_gravity_exit")
    

    std.create_edges("XAR_SOLID_BORING_DECO_1")
    set_pos(7,7,7,"block_pearl_white")
    add_bent(7,7,8,"bent_base_ring_green")
    omniverse.rings()
end