function p.__get_is_solid() return true end
function p.__get_tex() return "block_concrete_border" end

function p.__main()
    set_default_block("block_quartz_rich_mountain_caves")
    --balls
    local chop = 2
    local max = 2^(chop+4)-1
    local balls = {}
    for dx,dy,dz in bps(-1,-1,-1,1,1,1) do
        local data = get_vchunk_data(chop,dx,dy,dz)
        srand(data.seed)
        for i = 1,2 do
            local ball_pos = std.vec(
                randi(data.min2.x,data.max2.x-1),
                randi(data.min2.y,data.max2.y-1),
                randi(data.min2.z,data.max2.z-1)
            )
            balls[#balls+1] = ball_pos
        end
    end
    for x,y,z in bps(0,0,0,15,15,15) do
        for i = 1,#balls do
            local v = balls[i]
            if (x-v.x)^2+(y-v.y)^2+(z-v.z)^2 < 8^2 then
                set_pos(x,y,z,"block_mountain_caves_supports_air")
                break
            end
        end
    end
    --perlin
    local perlin = get_perlin_data_xyz_tail(chop, 0)
    cache_perlin_data_xyz(0, perlin.seeds)
    for x,y,z,rx,ry,rz in vchunk_bps(chop,0,0,0) do
        if perlin_noise_xyz(0, x/2^(chop+4), y/2^(chop+4), z/2^(chop+4)) > 0.35 then
            set_pos(rx,ry,rz,"block_mountain_caves_supports_air")
        end
    end
    srand(seed_normal())
    caves_start()
    caves_set_5x5x5()
    caves_set_num_nodes(1,2)
    caves_set_nodes(0.01, 3.0, 4.3, 5,6)
    caves_set_edges(20.0, 0.01, 2.0,3.0, 4.0,4.5)
    caves_end()

    for x,y,z in bps(0,0,0,15,15,15) do
        local close = caves_close_to_node(x,y,z)
        or caves_close_to_edge(x,y,z)
        if close then--Carving out the position.
            set_pos(x,y,z,"block_mountain_caves_supports_air")
        end
    end
    local filled_nodes = {}
        for x,y,z in bps(0,0,0,15,15,15) do
        local close_to_edge = caves_close_to_edge(x,y,z)
        local data = caves_close_to_node2(x,y,z)
        local close_to_node = data.close
        if close_to_node or close_to_edge then
            set_pos(x,y,z,"block_mountain_caves_supports_air")
        end
        if close_to_node then
            local which_node = data.which_node
            local dist = data.dist
            local is_big = data.is_big
                if (dist < 1.5) and
                filled_nodes[which_node] == nil
                then
                    filled_nodes[which_node] = true
                    add_bent(x,y,z, "bent_base_ring_green")
                end
            end
        end


    create_rect("block_mountain_caves_supports",6,6,0,6,6,15)

    if (get_input_adj_bt(0,0,1) == "block_Quartz_Hall_air") then
        create_rect("block_quartz_rich_mountain_caves",0,0,15,15,15,15)
    end
    if (get_input_adj_bt(0,0,-1) == "block_Quartz_Hall") then
        create_rect("block_quartz_rich_mountain_caves",0,0,0,15,15,0)
    end

    for x,y,z in bps(0,0,0,15,15,15) do
        if get_pos(x,y,z) == "block_quartz_rich_mountain_caves" then
            if randf() > 0.99 then
                set_pos(x,y,z,"block_Quartz_dense")
            end
        end
    end
    --ore veins
    local chop = 1
    local perlin2 = get_perlin_data_xyz_tail(chop, 0)
    cache_perlin_data_xyz(1, perlin2.seeds)
    for x,y,z,rx,ry,rz in vchunk_bps(chop,0,0,0) do
        local data = get_vchunk_data(chop,x,y,z)
        srand(data.seed)
        if perlin_noise_xyz(1, x/2^(chop+4), y/2^(chop+4), z/2^(chop+4)) > 0.35 then
            if get_pos(rx,ry,rz) == "block_quartz_rich_mountain_caves" then
                if randf() > 0.75 then
                    if randf() > 0.5 then
                        set_pos(rx,ry,rz,"block_Quartz_dense")
                    else
                        set_pos(rx,ry,rz,"block_Ore_block")
                    end
                end
            end
        end
    end

    srand(seed_normal())
end