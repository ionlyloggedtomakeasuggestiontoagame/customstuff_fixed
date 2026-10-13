function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_dark_concrete_orange_border"
end

function p.__main()
    --generating universes
    if (randf() > 0.5) then
        for i = 0,randi(1,8) do
            local x = randi(0,15)
            local y = randi(0,15)
            local z = randi(0,15)
            set_pos(x,y,z,"block_universe_cube")
        end
    end

    set_default_block("block_multiversal_air")
    std.create_edges("block_multiversal_structure")
    
    create_rect("block_multiversal_structure", 5,5,5, 10,10,10)
    create_rect("block_multiversal_air", 5,6,6, 10,9,9)
    create_rect("block_multiversal_air", 6,5,6, 9,10,9)
    create_rect("block_multiversal_air", 6,6,5, 9,9,10)
    add_bent(7,7,8,"bent_base_ring_green")
    create_rect("block_multiversal_air", 7,7,8, 7,7,15)
    if get_input_adj_bt(0,0,-1) == "XAR_SOLID_BORING_DARK_CONCRETE_GREEN_BORDER" then
        create_rect("block_multiversal_structure", 0,0,0, 15,15,0)
    elseif get_input_adj_bt(0,0,1) == "block_xmbb_shawdovar_adapt" then
        create_rect("block_multiversal_structure", 0,0,15, 15,15,15)
    elseif get_input_adj_bt(0,0,1) == "block_void_city" then
        create_rect("block_multiversal_structure", 0,0,15, 15,15,15) 
    end
end