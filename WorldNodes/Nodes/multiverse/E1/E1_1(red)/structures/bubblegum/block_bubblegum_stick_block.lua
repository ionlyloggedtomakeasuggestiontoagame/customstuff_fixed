function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_deco1_purple1"
end

function p.__main()
    set_default_block("block_bubblegum_stick_block")
end

function p.__on_close(level, bp)
    local momentum = ga_get_sys_v("game.player.move.last_pos_diff")
    game_movement.add_impulse(-momentum.x/50, -momentum.y/50, -momentum.z/50)
end
