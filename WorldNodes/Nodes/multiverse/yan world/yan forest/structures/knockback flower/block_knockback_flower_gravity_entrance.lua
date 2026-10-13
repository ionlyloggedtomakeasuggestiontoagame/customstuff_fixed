function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")
    if get_input_adj_bt(0,0,-1) ~= "block_knockback_flower_shrink" then
        std.create_shell("block_field_boring")
        std.create_edges("XAR_SOLID_BORING_CONCRETE_BROWN_BORDER")
        create_rect("XAR_SOLID_BORING_CONCRETE_BROWN_BORDER",0,0,15,15,15,15)
        create_rect("XAR_SOLID_BORING_CONCRETE_BROWN_BORDER",0,0,0,15,15,0)
        create_rect("XAR_EMPTY_BORING",6,6,0,9,9,0)
        add_env_rect(15,1,1,15,14,14,"rect_gravity_enter")
        add_env_rect(14,1,1,14,14,14,"rect_gravity_exit")
        add_env_rect(0,1,1,0,14,14,"rect_gravity_enter")
        add_env_rect(1,1,1,1,14,14,"rect_gravity_exit")
        add_env_rect(1,15,1,14,15,14,"rect_gravity_enter")
        add_env_rect(1,14,1,14,14,14,"rect_gravity_exit")
        add_env_rect(1,0,1,14,0,14,"rect_gravity_enter")
        add_env_rect(1,1,1,14,1,14,"rect_gravity_exit")
        add_bent_s(7,7,7,"bent_base_txt", "From here, you gotta use the knockback of your weapons to build your way up and touch the B blocks at the ceilling.")
    else
        set_pos(7,7,0,"block_knockback_flower_gravity_entrance")
        block_knockback_flower_sky_entrance.sky()
    end
end

function p.__type_init(id)
    --doesnt do shit other than prevent game from crashing
    ia_block_new_var_b(id, "plataforms?", true)
end
