function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_deco1_blue1"
end

function p.__main()
    set_default_block("block_Crystal_Island_floor_big")
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
                    local underblock = nil
                    if (z-1 > 0) then
                        underblock = get_pos(x,y,z-1)
                    end
                    if (underblock == "block_Crystal_Island_floor_big") then
                        set_pos(x,y,z,"block_Crystal_Spines")
                    else
                        if (underblock == "block_Crystal_Spines") then
                            set_pos(x,y,z,"block_Crystal_Spines")
                        else
                            set_pos(x,y,z,"block_E1_2_air")
                        end
                    end
                end
            end
        end
    end
end
