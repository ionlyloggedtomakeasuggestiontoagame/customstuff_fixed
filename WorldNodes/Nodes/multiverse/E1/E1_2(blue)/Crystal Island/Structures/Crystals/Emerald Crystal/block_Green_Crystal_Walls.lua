function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_deco1_green2"
end

function p.__main()
    set_default_block("block_Green_Crystal_Walls")
        caves_start()
    caves_set_5x5x5()
    caves_set_num_nodes(0,2)
    caves_set_nodes(0.1,2,3,3,4)
    caves_set_edges(23, 0.5, 1,2, 2,3)
    caves_end()

    local filled_nodes = {}
    for x = 0,15 do
        for y = 0,15 do
            for z = 0,15 do
                local close_to_edge = caves_close_to_edge(x,y,z)
                local data = caves_close_to_node2(x,y,z)
                local close_to_node = data.close --Carving the position if need be.
                if close_to_node or close_to_edge then
                    set_pos(x,y,z,"block_Green_Crystal_Air")
                    if (randf()>0.999) then
                        add_bent(x,y,z,"bent_base_ring_green")
                    end
                end
                if close_to_node then
                    local which_node = data.which_node
                    local dist = data.dist
                    local is_big = data.is_big
                    if (dist < 1.5) and
                        filled_nodes[which_node] == nil
                    then
                        filled_nodes[which_node] = true
                        add_ment(x,y,z, "ment_monster_emerald_rock")
                    end
                end
            end
        end
    end
end
