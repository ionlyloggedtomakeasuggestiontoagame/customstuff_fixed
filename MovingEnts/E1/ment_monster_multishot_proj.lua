-------------------------------------------------
--            Type Init Function
-------------------------------------------------

function p.__type_init(id)
    game_ment_type_init.monster_proj(id)
    ia_ment_set_builtin_var_f(id, "__radius", 1)
    ia_ment_set_builtin_var_s(id, "__mesh", "marker_short_1")
    ia_ment_set_builtin_var_i(id, "__team_id_source", 2)
    ia_ment_set_builtin_var_i(id, "__team_id_target", 2)
    ia_ment_new_static_var_b(id, "counts_for_pacifist", false)
    ia_ment_new_static_var_s(id, "sound_death", "die_fly")
    ia_ment_new_var_i(id, "time", 0, 60);
end

-------------------------------------------------
--              Inst Functions
-------------------------------------------------

function p.__on_alarm(inst_id, alarm_name)
    game_ment_alarms.monster(inst_id, alarm_name)
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
    local ret = game_ment_hit.process_hit_and_got_hit(args)
    return ret.terminal_hit
end

function p.__on_update(inst_id,elapsed_time,elapsed_level_time)
    ga_ment_set_i(inst_id, "time", ga_ment_get_i(inst_id, "time")+1)
    if ga_ment_get_i(inst_id,"time") == 30 then
        ga_ment_set_i(inst_id, "time", 0)
        local start_level = ga_ment_get_i(inst_id, "__start_level")
	    local sllp = ga_ment_get_sllp(inst_id)
    	local damage = ga_ment_get_i(inst_id, "damage")
        ga_ment_start(start_level, sllp, "ment_monster_multishot_proj_proj")
	    vecx = ga_randi(40,80)
    	vecy = ga_randi(40,80)
	    vecz = ga_randi(40,80)
            ga_ment_init_set_v("__vel", std.vec(vecx,vecy,vecz))
            ga_ment_init_set_i("damage", damage)
        ga_ment_end()
    end
end