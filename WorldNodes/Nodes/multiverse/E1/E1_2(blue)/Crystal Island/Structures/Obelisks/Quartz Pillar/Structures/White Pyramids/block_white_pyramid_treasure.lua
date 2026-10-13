function p.__get_is_solid() return true end
function p.__get_tex() return "block_concrete_white_border" end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")
    if (get_input_adj_bt(0,0,1) ~= "block_white_pyramid_treasure") then
        std.create_shell("block_field_boring")
        std.create_edges("XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER")
        add_bent(6,6,2,"bent_base_save")
        add_bent(6,8,2,"bent_gold_once_200")
        omniverse.txtpeople(8,6,2,"Sphinx of black quartz, judge my vow!")
        add_bent_s(8,8,2,"bent_base_waypoint","White pyramid")
        create_rect("XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER",0,0,0,15,15,0)
        create_rect("XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER",0,0,15,15,15,15)
        for i = 2,5 do
        --upgrades
        add_bent(14,3,i,"bent_upgrade_gun_9_ammo_cap")
        add_bent(14,4,i,"bent_upgrade_gun_9_proj_speed")
        add_bent(14,5,i,"bent_upgrade_gun_9_damage")
        add_bent(14,6,i,"bent_upgrade_health_cap")
        add_bent(14,7,i,"bent_upgrade_health_cap")
        add_bent(14,8,i,"bent_upgrade_health_regen")
        add_bent(14,9,i,"bent_upgrade_health_regen")
        add_bent(14,10,i,"bent_upgrade_gun_4_ammo_cap")
        add_bent(14,11,i,"bent_upgrade_gun_4_proj_speed")
        add_bent(14,12,i,"bent_upgrade_gun_4_damage")
        end
        add_bent_i(1,7,2,"bent_damage_5x_stacking",60)
        --off gravity
        add_env_rect(15,1,1,15,14,14,"rect_gravity_enter")
        add_env_rect(14,1,1,14,14,14,"rect_gravity_exit")
        add_env_rect(0,1,1,0,14,14,"rect_gravity_enter")
        add_env_rect(1,1,1,1,14,14,"rect_gravity_exit")
        add_env_rect(1,15,1,14,15,14,"rect_gravity_enter")
        add_env_rect(1,14,1,14,14,14,"rect_gravity_exit")
        add_env_rect(1,0,1,14,0,14,"rect_gravity_enter")
        add_env_rect(1,1,1,14,1,14,"rect_gravity_exit")
    else
        create_rect("XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER",0,0,0,0,0,15)
        create_rect("XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER",15,0,0,15,0,15)
        create_rect("XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER",0,15,0,0,15,15)
        create_rect("XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER",15,15,0,15,15,15)
        add_bent_s(7,7,1,"bent_base_txt","Maybe all we need is something a bit explosive, hopefully u brought ammo for this")
        add_bent(12,12,1,"bent_base_ring_pink_source")   
        set_pos(12,12,0,"XAR_SOLID_BORING_PINK")
    end
end
