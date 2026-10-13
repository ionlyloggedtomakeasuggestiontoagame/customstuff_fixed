function p.__get_is_solid()
    return false
end

function p.__get_tex()
    return ""
end

function p.__main()
    set_default_block("block_E1_1_air")
    std.create_edges("block_E1_1_walls")
    add_bent(7,7,8,"bent_base_ring_green")
    set_pos(7,7,7,"block_tick_dungeon2")
end   

local next_time = 0
function p.__on_chunk_update(level,bp)
    if ga_bp_to_bt(level,ga_get_viewer_bp(level)) == "block_tick_dungeon_main" then
        if ga_get_game_time() >= next_time then
            next_time = next_time+1
        end
        if next_time == 30 then
            ga_block_change_perm(level+1, std.bp(7,7,7), "block_tick_dungeon1");
        end
        if next_time == 60 then
            ga_block_change_perm(level+1, std.bp(7,7,7), "block_tick_dungeon2");
            next_time = 0
        end
    end
end