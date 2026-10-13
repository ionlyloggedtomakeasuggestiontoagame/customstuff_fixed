function p.__get_is_solid() return true end
function p.__get_tex() return "block_concrete_yellow" end

function p.__main()
    set_default_block("block_cheese_caves")
    --make caves
    caves_start()
    caves_set_5x5x5()
    caves_set_num_nodes(1,1)
    caves_set_nodes(0.1,3,6,6,9)
    caves_set_edges(23.0, 0.05, 1.0,2.0, 7.0,8.0)
    caves_end()

    local filled_nodes = {}
    for x = 0,15 do
        for y = 0,15 do
            for z = 0,15 do
                local close_to_edge = caves_close_to_edge(x,y,z)
                local data = caves_close_to_node2(x,y,z)
                local close_to_node = data.close --Carving the position if need be.
                if close_to_node or close_to_edge then
                    set_pos(x,y,z,"block_omniverse_yan_forest_air")
                end --Adding rats
                if close_to_node then
                    local which_node = data.which_node
                    local dist = data.dist
                    local is_big = data.is_big
                    if (dist < 1.5) and filled_nodes[which_node] == nil then
                        filled_nodes[which_node] = true
                        if randf() > 0.95 then
                            local rats = {"ment_monster_rat","ment_monster_rat_minor","ment_monster_rat_lesser"}
                            local rattype = rats[randi(1,#rats)]
                            add_ment(x,y,z, rattype)
                        end
                    end
                end
            end
        end
    end
end
