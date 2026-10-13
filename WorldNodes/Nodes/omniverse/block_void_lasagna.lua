function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_dark_concrete_purple_border"
end

function p.__main()
    set_default_block("block_void_shards")
    for y = 0,15,2 do
        create_rect("block_void_lasagna", 0,0,y+1, 15,15,y+1)
        for i = 2,10 do
            local x = randi(0,15)
            local z = randi(0,15)
            set_pos(x,z,y+1,"block_void_shards")
        end
        for i = 0,randi(0,2) do
            local x = randi(0,15)
            local z = randi(0,15)
            set_pos(x,z,y+2,"block_void_ying_forest_cube")
            set_pos(x,z,y+1,"block_void_ying_forest_cube")
            if get_input_adj_bt(0,0,-1) == "block_void_lasagna" then
                set_pos(x,z,y,"block_void_ying_forest_cube")
            end
        end
        if (randf() < 0.2) then
            local x = randi(0,15)
            local z = randi(0,15)
            add_bent(x,z,y,"bent_base_ring_green")
        end
    end
    if get_input_adj_bt(0,0,-1) == "block_dark_spires" then
        create_rect("block_dark_spires", 0,0,0, 15,15,0)
        for x = 0,15,3 do
        for z = 0,15,3 do
                if (randf() < 0.5) then
                    create_rect("block_void_lasagna", x,z,0, x,z,0)
                else
                    create_rect("block_void_shards", x,z,0, x,z,0)
                end
        end end
    end
end
