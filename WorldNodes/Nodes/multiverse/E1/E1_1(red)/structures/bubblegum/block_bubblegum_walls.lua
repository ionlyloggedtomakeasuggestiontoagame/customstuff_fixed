function p.__get_is_solid()
    return false
end

function p.__get_tex()
    return ""
end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")
    caves_start()
    caves_set_5x5x5()
    caves_set_num_nodes(0,2)
    caves_set_nodes(0.1,2,3,3,4)
    caves_set_edges(23, 0.1, 2,3, 3,4)
    caves_end()

    local filled_nodes = {}
    for x = 0,15 do
        for y = 0,15 do
            for z = 0,15 do
                local close_to_edge = caves_close_to_edge(x,y,z)
                local data = caves_close_to_node2(x,y,z)
                local close_to_node = data.close --Carving the position if need be.
                if close_to_node or close_to_edge then
                    set_pos(x,y,z,"block_bubblegum_stick_block")
                end
            end
        end
    end
    if(randf() < 0.05) then
         local x = randi(0,15)
         local y = randi(0,15)
         local z = randi(0,15)
        add_ment(x,y,z,"ment_monster_pool_ball_3")
    end
end