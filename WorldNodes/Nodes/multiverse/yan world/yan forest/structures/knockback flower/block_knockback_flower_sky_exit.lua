function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__main()
    create_xar_chunk("XAR_HELLBERRY_ARCADE_ENTER_Z_NEG")
    create_rect("block_field_boring",1,1,7,15,15,8)
    add_env_rect(1,1,7,15,15,7,"rect_gravity_enter")
    add_env_rect(1,1,8,15,15,8,"rect_gravity_exit")
    omniverse.create_edges("XAR_SOLID_BORING_WHITE_BOX",0,0,6,15,15,6)
    add_env_rect(0,0,6,15,15,6,"env_rect_take_ammo")
end
