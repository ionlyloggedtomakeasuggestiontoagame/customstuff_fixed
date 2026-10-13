function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__main()
    set_default_block("block_pearl_black_air")
    caves_start()
    caves_set_5x5x5()
    caves_set_num_nodes(0,2)
    caves_set_nodes(0.1,2,3,3,4)
    caves_set_edges(17, 0.1, 2,3, 3,4)
    caves_end()

    local filled_nodes = {}
    if get_input_adj_bt(0, 0, -1) ~= "block_pearl_black_inner_shrink_2" then
        for x,y,z in bps(0,0,0,15,15,15) do
            local close_to_edge = caves_close_to_edge(x,y,z)
            local data = caves_close_to_node2(x,y,z)
            local close_to_node = data.close --Carving the position if need be.
            if close_to_node or close_to_edge then
                set_pos(x,y,z,"XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER")
            end
        end
    end
    for x,y,z in bps(0,0,0,15,15,15) do
        if (get_pos(x,y,z) ~= "XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER") and (get_pos(x,y,z-1) == "XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER") then
            if randf() > 1/72 then
                set_pos(x,y,z,"XAR_YING_FOREST")
            else
                if randf() > 0.5 then
                    set_pos(x,y,z,"block_Citrine_Sponge")
                else
                    set_pos(x,y,z,"XAR_COLCHESTER")
                end
            end
        end
    end
    if randf() < 1/64 then
        local x = randi(0,15)
        local y = randi(0,15)
        local z = randi(0,15)
        set_pos(x,y,z,"XAR_ELEVATOR_RED_GREEN")
    end
    if randf() < 0.25 then
        local x = randi(0,15)
        local y = randi(0,15)
        local z = randi(0,15)
        if not bt_get_is_solid_physically(get_pos(x,y,z)) then
            add_ment(x,y,z,"ment_monster_guardian")
        end
    end
end