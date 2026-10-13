-------------------------------------------------
--            Type Init Function
-------------------------------------------------

function p.__type_init(id)
    game_ment_type_init.monster_proj(id)
    ia_ment_set_builtin_var_f(id, "__radius", 0.1)
    ia_ment_set_builtin_var_s(id, "__mesh", "plasma1")
    ia_ment_set_builtin_var_i(id, "__team_id_source", 2)
    ia_ment_set_builtin_var_i(id, "__team_id_target", 2)
    ia_ment_new_static_var_s(id, "sound_death", "die_fly")
    ia_ment_new_var_i(id, "damage", 100, 60.0) --1 thousand damage.
    ia_ment_new_var_i(id, "health", 1, 60.0)
    ia_ment_new_static_var_b(id, "freeze_immune", true)
    ia_ment_new_static_var_b(id, "emp_immune", true)
    ia_ment_new_static_var_b(id, "counts_for_pacifist", false)
    ia_ment_new_var_i(id, "time", 0, 60);
end

-------------------------------------------------
--              Inst Functions
-------------------------------------------------

function p.__on_alarm(inst_id, alarm_name)
    game_ment_alarms.monster_proj(inst_id, alarm_name)
end

function p.__on_ment_hit(
    source_inst_id,
    target_inst_id,
    level, lp, normal)
--
    local args = {}
    args.source_inst_id = source_inst_id
    args.target_inst_id = target_inst_id
    args.level = level
    args.lp = lp
    args.normal = normal
    --
    ret = game_ment_hit.process_hit_and_got_hit(args)
    return ret.terminal_hit
end

function p.__on_update(inst_id,elapsed_time,elapsed_level_time)
    ga_ment_set_i(inst_id, "time", ga_ment_get_i(inst_id, "time")+1)
    if ga_ment_get_i(inst_id,"time") == 25*10 then
        ga_ment_set_i(inst_id, "time", 0)
        ga_ment_remove(inst_id)
    end
end