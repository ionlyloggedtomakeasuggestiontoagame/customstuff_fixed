function p.__on_touch(level,bp)
    local center = std.block_center(std.bp(0,0,0))
    --
    --Old way.
    -- ga_tele_blue2(center) --DEPRECATED!!!
    --
    --New way.
    local chunk_id = ga_bp_to_parent_chunk_id (ga_get_viewer_level(), std.bp(0,0,0))
    game_base_tele_blue.start_tele(chunk_id)
    --
    ga_play_sound("blue_ring")
    ga_play_sound("waypoint_travel")
end