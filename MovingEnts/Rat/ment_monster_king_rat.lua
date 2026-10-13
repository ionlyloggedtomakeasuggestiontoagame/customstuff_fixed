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
    ia_ment_set_builtin_var_f(id, "__radius", 1.75/2)
    ia_ment_set_builtin_var_s(id, "__mesh", "MonsterKingRat")
    ia_ment_set_builtin_var_b(id, "__player_can_telefrag", false) --for a monster that is meant to be found in cheese, it surelly wants to keep all the cheese for itself
    --ia_ment_set_builtin_var_f(id, "__respawn_length", 10) --DEBUGGING!!!
    ia_ment_new_var_i(id, "health", 100000000, 60.0)
    ia_ment_new_static_var_f(id, "xp_mod", 3) --High!
    ia_ment_new_static_var_f(id, "dps", 1000.0)
    ia_ment_new_static_var_b(id, "emp_immune", true) --Emp, but not freeze immune.
    ia_ment_new_var_b(id, "emp_immune_true", true, 60*5)
    ia_ment_new_static_var_s(id, "sound_hurt", "hurt_rat")
    ia_ment_new_static_var_f(id, "sound_hurt_period", 3.0)
    ia_ment_new_static_var_s(id, "sound_death", "die_rat")
    ia_ment_new_static_var_s(id, "identity_str", "King Rat")
    local aura_radius = 8.0
    ia_ment_new_static_var_b(id, "damage_aura_has", true)
    ia_ment_new_static_var_f(id, "damage_aura_duration", 1.0)
    ia_ment_new_static_var_i(id, "damage_aura_damage", 100)
    ia_ment_new_static_var_f(id, "damage_aura_radius", aura_radius)
    ia_ment_new_static_var_b(id, "damage_aura_only_same_level", false)
    ia_ment_new_var_f(id, "damage_aura_next_time", 0.0, 60.0)
    ia_ment_set_builtin_var_f(id, "__gas_cloud_period", 0.05)
    ia_ment_set_builtin_var_f(id, "__gas_cloud_radius", aura_radius)
    ia_ment_set_builtin_var_f(id, "__gas_cloud_trigger_dist", 128.0)
    --
    ia_ment_set_builtin_var_b(id, "__homing", true)
    ia_ment_set_builtin_var_f(id, "__homing_speed", 10.0)
    ia_ment_set_builtin_var_f(id, "__homing_min_dist", 4.0)
    ia_ment_set_builtin_var_b(id, "__collides", false)
    ia_ment_set_builtin_var_b(id, "__point_block_correct", true)
    ia_ment_set_builtin_var_b(id, "__ment_correct", true)
    --
    ia_ment_new_var_b(id, "picture_aura_has", true, 60.0)
    ia_ment_new_static_var_s(id, "picture_aura_picture", "crossbones")
    ia_ment_new_static_var_f(id, "picture_aura_radius", 1000)
    ia_ment_new_static_var_b(id, "picture_aura_only_same_level", false)
    ia_ment_new_var_f(id, "picture_aura_next_time", 0.0, 60.0)
    --
    ia_ment_new_static_var_b(id, "shoots", true)
    ia_ment_new_static_var_f(id, "shoot_period", 4/16)
    ia_ment_new_static_var_s(id, "shoot_proj_type", "ment_monster_king_rat_proj")
    ia_ment_new_static_var_f(id, "shoot_proj_speed", 40.0)
    ia_ment_new_static_var_f(id, "shoot_proj_ttl", 2.5)
    ia_ment_new_static_var_i(id, "shoot_proj_damage", 25)
    --
    ia_ment_new_static_var_s(id, "die_drop_bent", "bent_key_green")
    ia_ment_new_static_var_i(id, "die_drop_bent_param_i", 60)
    ia_ment_new_static_var_s(id, "die_drop_bent_param_s", "king_rat")
    ia_ment_new_static_var_s(id, "die_drop_box_txt", "Green Key")
    ia_ment_new_static_var_b(id, "die_drop_box_allow", true)
    ia_ment_new_static_var_i(id, "die_drop_extra_levels", 1)
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

--function p.__on_block_hit(inst_id,level,bp,lp,normal_side,normal)
--    ga_ment_tele(inst_id, ga_bp_to_chunk_id(level,bp), lp-normal)
--end
