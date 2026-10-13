function p.__get_is_solid()
    return false
end

function p.__get_tex()
    return ""
end

function p.__main()
    for x = 0,15 do
        for y = 0,15 do
            for z = 0,15 do
                if (randf() < 0.5) then
                    set_pos(x,y,z,"block_omniverse_yan_world_air_grid")
                else
                    set_pos(x,y,z,"XAR_YW_0")
                end
            end
        end
    end
end