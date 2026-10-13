function p.__get_is_solid() return false end

function p.__get_tex() return "" end

function p.__main()
    base_blue_tele.set_blue_type_down(7,7,7)
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
    set_pos(7,7,7,"block_omniverse_yan_world_air_middle_island")
end