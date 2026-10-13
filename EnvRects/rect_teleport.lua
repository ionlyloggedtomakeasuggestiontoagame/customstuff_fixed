function p.__on_touch(level,bp)
    local momentum = ga_get_sys_v("game.player.move.last_pos_diff")
    ga_tele(ga_get_viewer_path(), std.vec_add(ga_get_viewer_offset(),std.vec(0,0,16)))
    game_movement.add_impulse(momentum.x, momentum.y, momentum.z)
end