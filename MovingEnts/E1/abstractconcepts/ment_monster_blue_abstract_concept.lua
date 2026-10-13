-------------------------------------------------
--            Type Init Function
-------------------------------------------------

-- Name     HP     DPS
--
-- giga     1B
-- mega     300M
-- high     100M
-- elite    30M
-- adept    10M
-- grand    3M
-- major    1M           red
-- greater  300K   3000  orange
-- normal   100K   1000  brown
-- lesser   30K    300   yellow
-- minor    10K    100   white/tan

function p.__type_init(id)
    game_ment_type_init.monster(id)
    ia_ment_set_builtin_var_f(id, "__respawn_length", 60*60)
    ia_ment_set_builtin_var_f(id, "__radius", 1.75)
    ia_ment_set_builtin_var_s(id, "__mesh", "MonsterRatMinor")
    -- ia_ment_set_builtin_var_f(id, "__respawn_length", 10) --DEBUGGING!!!
    ia_ment_new_var_i(id, "health", 5000, 60.0)
    ia_ment_new_static_var_f(id, "xp_mod", 3) --High!
    ia_ment_new_static_var_f(id, "dps", 1000.0)
    ia_ment_new_static_var_b(id, "emp_immune", true) --Emp, but not freeze immune.
    ia_ment_new_static_var_s(id, "sound_hurt", "pickup_shield")
    ia_ment_new_static_var_f(id, "sound_hurt_period", 3.0)
    ia_ment_new_static_var_s(id, "sound_death", "dark_hole_hit")
    ia_ment_new_static_var_s(id, "identity_str", "Blue Abstract Concept")
    local aura_radius = 8.0
    ia_ment_new_static_var_b(id, "damage_aura_has", true)
    ia_ment_new_static_var_f(id, "damage_aura_duration", 1.0)
    ia_ment_new_static_var_i(id, "damage_aura_damage", 500)
    ia_ment_new_static_var_f(id, "damage_aura_radius", aura_radius)
    ia_ment_new_static_var_b(id, "damage_aura_only_same_level", true)
    ia_ment_new_var_f(id, "damage_aura_next_time", 0.0, 60.0)
    ia_ment_set_builtin_var_f(id, "__gas_cloud_period", 1)
    ia_ment_set_builtin_var_f(id, "__gas_cloud_radius", aura_radius)
    ia_ment_set_builtin_var_f(id, "__gas_cloud_trigger_dist", 64.0)
    --
    ia_ment_set_builtin_var_b(id, "__homing", false)
    ia_ment_set_builtin_var_f(id, "__homing_speed", 10.0)
    ia_ment_set_builtin_var_f(id, "__homing_min_dist", 4.0)
    ia_ment_set_builtin_var_b(id, "__collides", false)
    ia_ment_set_builtin_var_b(id, "__point_block_correct", true)
    ia_ment_set_builtin_var_b(id, "__ment_correct", true)
    --
    ia_ment_new_var_b(id, "picture_aura_has", true, 60.0)
    ia_ment_new_static_var_s(id, "picture_aura_picture", "crossbones")
    ia_ment_new_static_var_f(id, "picture_aura_radius", 500)
    ia_ment_new_static_var_b(id, "picture_aura_only_same_level", true)
    ia_ment_new_var_f(id, "picture_aura_next_time", 0.0, 60.0)
    ia_ment_new_var_i(id, "time", 0, 60)
end

-------------------------------------------------
--              Inst Functions
-------------------------------------------------

function p.__on_add_to_live_world(inst_id)
    game_ment_add_to_live.monster(inst_id)
end

function p.__on_alarm(inst_id, alarm_name)
    game_ment_alarms.monster(inst_id, alarm_name)
end

function p.__on_update(inst_id, elapsed_time, elapsed_level_time)
    if ga_ment_get_var_special_dist_to_viewer(inst_id) <= 12 then
        ga_ment_set_s(inst_id, "identity_str", "Mad Abstract Concept")
        --ga_ment_set_f(inst_id, "__homing_speed", 8.0)
        ga_ment_set_b(inst_id, "__homing", true)
    else
        ga_ment_set_s(inst_id, "identity_str", "Blue Abstract Concept")
        --ga_ment_set_f(inst_id, "__homing_speed", 2.0)
        ga_ment_set_b(inst_id, "__homing", false)
        ga_ment_set_v(inst_id, "__vel", std.vec(0, 0, 0))
    end
end

function p.__on_render(inst_id, radius)
    local cur_time = ga_get_level_time(ga_get_viewer_level())
    local scale = (1.0 + math.cos(6.0 * cur_time) * 0.1)*(radius+0.1)
    local mesh_name = "txt_box"
    if ga_ment_get_var_special_dist_to_viewer(inst_id) >= 12 then
        tex_name = "striped_blue"
    else
        tex_name = "striped_red"
    end
    
    ga_ment_set_i(inst_id, "time", ga_ment_get_i(inst_id, "time")+1)
    if ga_ment_get_i(inst_id,"time") >= 15 then
        for i = 1,2 do
            local x = ga_randi(45,55)/100+0.1
            local y = ga_randi(45,55)/100+0.1
            local z = ga_randi(45,55)/100+0.1
            ga_render_matrix_scaled(scale*x, scale*y, scale*z);
            local x = ga_randi(47,53)/100-0.5
            local y = ga_randi(47,53)/100-0.5
            local z = ga_randi(47,53)/100-0.5
            ga_render_matrix_translated(x,y,z)
            ga_render_mesh_with_tex(mesh_name,tex_name)
        end
    else
        ga_render_matrix_scaled(scale, scale, scale);
        ga_render_mesh_with_tex(mesh_name,tex_name)
    end
    if ga_ment_get_i(inst_id,"time") == 25 then
        ga_ment_set_i(inst_id, "time", 0)
    end
    
end
