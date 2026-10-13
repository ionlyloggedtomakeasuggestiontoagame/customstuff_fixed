-------------------------------------------------
--            Type Init Function
-------------------------------------------------

function p.__type_init(id)
    game_ment_type_init.monster(id)
    ia_ment_set_builtin_var_f(id, "__respawn_length", 60*60)
    ia_ment_set_builtin_var_f(id, "__radius", 0.75)
    ia_ment_set_builtin_var_s(id, "__mesh", "MonsterEmeraldRock")
    ia_ment_set_builtin_var_i(id, "__team_id_source", 0)
    ia_ment_set_builtin_var_i(id, "__team_id_target", 0)
    ia_ment_new_static_var_s(id, "identity_str", "Emerald Crystal")
    ia_ment_new_static_var_b(id, "identity_str_no_health", true)
    ia_ment_new_static_var_b(id, "shoots", true)
    ia_ment_new_static_var_f(id, "shoot_period", 0.1)
    ia_ment_new_static_var_f(id, "shoot_radius", 12.0)
    ia_ment_new_static_var_s(id, "shoot_proj_type", "ment_key_guard_yellow_proj")
    ia_ment_new_static_var_f(id, "shoot_proj_speed", 1000.0)
    ia_ment_new_static_var_f(id, "shoot_proj_ttl", 1.0)
    ia_ment_new_static_var_i(id, "shoot_proj_damage", 50)
    ia_ment_new_static_var_b(id, "emp_immune", true)
    ia_ment_new_var_b(id, "emp_immune_true", true, 60*5)
    ia_ment_new_static_var_b(id, "freeze_immune_true", true)
    ia_ment_new_static_var_b(id, "damage_aura_has", true)
    ia_ment_new_static_var_f(id, "damage_aura_duration", 2.0)
    ia_ment_new_static_var_i(id, "damage_aura_damage", 500)
    ia_ment_new_static_var_f(id, "damage_aura_radius", 1.5)
    ia_ment_new_static_var_b(id, "damage_aura_only_same_level", true)
    ia_ment_new_var_f(id, "damage_aura_next_time", 0.0, 60.0)
    ia_ment_set_builtin_var_f(id, "__gas_cloud_period", 0.5)
    ia_ment_set_builtin_var_f(id, "__gas_cloud_radius", 2)
    ia_ment_set_builtin_var_f(id, "__gas_cloud_trigger_dist", 10)
    ia_ment_new_var_i(id, "crystalhealth", 10,60)
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

function p.__on_update(inst_id, elapsed_time, elapsed_level_time);
    ment_monster_amethyst_rock.crystaldeath(inst_id)
end