function p.__get_is_solid()
    return false
end

function p.__get_tex()
    return ""
end

function p.__main()
    set_default_block("block_dark_spires")
    create_rect("block_dark_spires", 0,0,0, 15,15,0)
    for x = 0,15,3 do
    for z = 0,15,3 do
        if (randf() < 0.5) then
            create_rect("block_void_lasagna", x,z,0, x,z,15)
        else
            create_rect("block_void_shards", x,z,0, x,z,15)
        end
        if (randf() < 0.25) then
            local y = randi(0,15)
            structures = {"block_void_ying_forest_cube","spiral_plant"}
            set_pos(x,z,y,structures[randi(1,#structures)])
        end
    end end

    omniverse.rings()
end
