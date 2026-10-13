function p.__get_is_solid() return true end
function p.__get_is_solid_move_body() return false end
function p.__get_tex() return "block_blue" end

function p.__main()
    base_blue_tele.set_blue_type_up()
    set_default_block("block_water_blue_ring")
    add_env_rect(0,0,0,15,15,15,"rect_blue_ring_env")
end

function p.__get_can_use(level,bp)
    return true
end

function p.__get_use_msg(level,bp)
    return "Reset back to the checkpoint"
end

function p.__on_use(level,bp)
    local center = std.block_center(std.bp(0,0,0))
    local chunk_id = ga_bp_to_parent_chunk_id (ga_get_viewer_level(), std.bp(0,0,0))
    game_base_tele_blue.start_tele(chunk_id)
    --
    ga_play_sound("blue_ring")
    ga_play_sound("waypoint_travel")
end