-------------------------------------------------
--            Type Init Function
-------------------------------------------------

function p.__type_init(id)
    ia_ment_set_builtin_var_f(id, "__ttl", -1.0)
    ia_ment_set_builtin_var_f(id, "__respawn_length", 60)
    ia_ment_set_builtin_var_i(id, "__extra_min_levels", 0)
    ia_ment_set_builtin_var_i(id, "__extra_max_levels", 0)
    ia_ment_set_builtin_var_f(id, "__radius", 2)
    ia_ment_set_builtin_var_s(id, "__mesh", "MonsterCuteGoblin")
    ia_ment_set_builtin_var_b(id, "__solid_wrt_player", true)
    ia_ment_set_builtin_var_f(id, "__turn_speed", 2)
    ia_ment_set_builtin_var_b(id, "__turn_towards_player", true)
    ia_ment_set_builtin_var_b(id, "__homing", false)
    ia_ment_set_builtin_var_i(id, "__team_id_source", 0)
    ia_ment_set_builtin_var_i(id, "__team_id_target", 2)
    ia_ment_new_var_i(id, "price", 0, 60);
    --
    ia_ment_new_var_i(id, "armor", 20, 60.0) --20 Armor, resets everty 60 secs.
end

function p.__get_can_use(inst_id) return true end
function p.__get_use_msg(inst_id) return "Growth Shopkeeper" end
function p.__on_use(inst_id)
    local price = ga_ment_get_i(inst_id, "price")
    ga_create_i("temp.xar.ent.pay_growth.price")
    ga_set_i("temp.xar.ent.pay_growth.price", price)
    ga_window_push("win_growth_shopkeeper")
end

function p.__on_render(level, bp)
    local cur_time = ga_get_game_time()
    local speed_mod = 1.0
    ga_render_matrix_scaled(2, 2, 2)
    --
    local angle1 = cur_time * 50.0 * speed_mod
    local axis1 = std.vec(1.0, 0.0, 0.0)
    ga_render_matrix_rotated(angle1, axis1)
    ga_render_mesh("ring_grow_large")
    --
    local angle2 = cur_time * 70.0 * speed_mod
    local axis2 = std.vec(0.0, 1.0, 0.0)
    ga_render_matrix_rotated(angle2, axis2)
    ga_render_mesh("ring_grow_med")
    --
    local angle3 = cur_time * 90.0 * speed_mod
    local axis3 = std.vec(1.0, 0.0, 0.0)
    ga_render_matrix_rotated(angle3, axis3)
    ga_render_matrix_scaled(0.5, 0.5, 0.5)
    ga_render_mesh("bent_buy_station")
end