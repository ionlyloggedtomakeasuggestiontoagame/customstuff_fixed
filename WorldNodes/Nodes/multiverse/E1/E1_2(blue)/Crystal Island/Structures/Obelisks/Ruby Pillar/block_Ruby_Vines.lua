function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__main()
    set_default_block("block_E1_2_air")
    for x = 0,15 do
    for y = 0,15 do
        local height = randi(4,13)
        create_rect("block_Ruby_Pillar",x,y,height,x,y,15)
        set_pos(x,y,height-1,"block_Ruby_Sponge")
        if (randf() > 0.05) then
            set_pos(x,y,height-2,"block_Ruby_Vines")
        else
            local structures = {"block_Pyrite_Outside","block_Citrine_Sponge","block_Bismuth_Outside","block_Jade_Maze_Outside","block_Quartz_Pillar","block_Onyx_Maze_Outside"}
            local structuretype = structures[randi(1,#structures)]
            if randf() > 0.125 then
                set_pos(x,y,height-2,structuretype)
            else
                set_pos(x,y,height-2,"block_Ruby_Secret")  
            end
        end
    end
    end
    --monsters
    if(randf() < 0.125) then
        local x = randi(0,15)
        local y = randi(0,15)
        local z = randi(0,15)
            if not bt_get_is_solid_physically(get_pos(x,y,z)) then
                if randf() > 0.5 then
                    add_ment(x,y,z,"ment_monster_demon")
                else
                    add_ment(x,y,z,"ment_monster_overlord")
                end
            end
    end

    --rings
    omniverse.rings()
end