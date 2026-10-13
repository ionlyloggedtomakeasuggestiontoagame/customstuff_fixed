function p.__get_can_use(level, bp)
    return true
end

function p.__get_use_msg(level, bp)
    return "You need a Maze Key to open this door"
end

function p.__on_use(level, bp)
    p.payload(level, bp)
end

function p.payload(level, bp)
    if ga_get_b("multi.custom.key.maze") then
        ga_play_sound("oh_yeah")
        ga_play_sound("toll_door")
        local vcp = ga_bp_to_parent_vcp(bp)

        for xi = 0,15 do
        for yi = 0,15 do
        for zi = 0,15 do
            local lbp = std.bp(xi,yi,zi)
            local bp2 = std.lbp_to_bp(vcp, lbp)
            --
            local block_type = ga_block_get(level, bp2)
            if( block_type == "block_E1_1_door" ) then
                --Removing the block.
                ga_block_change_perm(level, bp2, "XAR_EMPTY_BORING")
            end
        end end end
        ga_bent_remove_perm(level, bp)
    else
        ga_play_sound("xar_error")
    end
end
