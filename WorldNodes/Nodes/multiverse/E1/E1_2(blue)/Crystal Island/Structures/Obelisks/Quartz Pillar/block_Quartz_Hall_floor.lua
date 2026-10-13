function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__main()
    set_default_block("block_Quartz_Hall_air")
    omniverse.rings()
    for x,y,z in bps(0,0,0,15,15,0) do
        if randf() < 0.99 then
            set_pos(x,y,z,"block_Quartz_Hall_floor")
        else
            local structure = {"block_white_pyramid_big","block_quartz_rich_mountain","block_shining_pearl_box"}
            local structuretype = structure[randi(1,#structure)]
            if structuretype == "block_shining_pearl_box" then
                set_pos(x,y,z+1,structuretype)
            else
                set_pos(x,y,z,structuretype)
            end
        end
    end
end