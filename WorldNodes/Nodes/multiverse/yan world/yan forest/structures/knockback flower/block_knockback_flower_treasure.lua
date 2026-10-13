function p.__get_is_solid() return true end
function p.__get_tex() return "block_concrete_yellow_x" end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")
    if get_input_path_bt(get_level()-1) == "block_knockback_flower_treasure" then
        base_blue_tele.set_blue_type_terminal(7,7,7)
        std.create_shell("block_field_boring")
        std.create_edges("XAR_SOLID_BORING_GREEN_BLACK_STRIPED")
        create_rect("XAR_SOLID_BORING_GREEN_BLACK_STRIPED",0,0,15,15,15,15)
        create_rect("XAR_SOLID_BORING_GREEN_BLACK_STRIPED",0,0,0,15,15,0)
        add_env_rect(15,1,1,15,14,14,"rect_gravity_enter")
        add_env_rect(14,1,1,14,14,14,"rect_gravity_exit")
        add_env_rect(0,1,1,0,14,14,"rect_gravity_enter")
        add_env_rect(1,1,1,1,14,14,"rect_gravity_exit")
        add_env_rect(1,15,1,14,15,14,"rect_gravity_enter")
        add_env_rect(1,14,1,14,14,14,"rect_gravity_exit")
        add_env_rect(1,0,1,14,0,14,"rect_gravity_enter")
        add_env_rect(1,1,1,14,1,14,"rect_gravity_exit")

        add_bent(13,13,13,"bent_base_ring_pink_source")
        add_bent_s(7,7,11,"bent_base_waypoint","Knockback Flower Treasure")
        add_bent(7,7,9,"bent_base_save")
        add_bent(7,7,7,"bent_gold_once_100")
        add_bent_s(7,7,5,"bent_base_txt","^x00ff00Message from your friend K: \n\nWell, another place where i can have some fun in such a dangerous world.")
        for i = 4,11 do
        --rocket, railgun and nukes
        add_bent(1,1,i,"bent_upgrade_gun_4_damage")
        add_bent(1,2,i,"bent_upgrade_gun_4_ammo_cap")
        add_bent(1,3,i,"bent_upgrade_gun_4_proj_speed")
        add_bent(1,4,i,"bent_upgrade_gun_4_fire_speed")
        add_bent(1,5,i,"bent_upgrade_gun_4_radius")
        add_bent(1,6,i,"bent_upgrade_gun_7_fire_speed")
        add_bent(1,7,i,"bent_upgrade_gun_7_damage")
        add_bent(1,8,i,"bent_upgrade_gun_7_ammo_cap")
        add_bent(1,9,i,"bent_upgrade_gun_7_damage")
        add_bent(1,10,i,"bent_upgrade_gun_7_fire_speed")
        add_bent(1,11,i,"bent_upgrade_gun_9_damage")
        add_bent(1,12,i,"bent_upgrade_gun_9_ammo_cap")
        add_bent(1,13,i,"bent_upgrade_gun_9_proj_speed")
        add_bent(1,14,i,"bent_upgrade_gun_9_radius")
        end
    else
        set_pos(7,7,0,"block_knockback_flower_treasure")
        set_pos(7,5,0,"block_knockback_flower_ladders")
        base_blue_tele.set_blue_type_down(7,7,0)
        create_rect("block_knockback_flower_sky_entrance",0,0,1,15,15,1)
        for x,y,z in bps(0,0,1,15,15,1) do
            block_set_b(x,y,z, "small?", true)
        end
    end
end
