function p.__get_is_solid() return true end
function p.__get_tex() return "block_cube_1" end

function p.__main()
    set_default_block("block_E1_2_air")
    std.create_shell("block_field_boring")
    
    add_env_rect(0,0,0,0,15,15,"rect_gravity_enter")
    add_env_rect(1,1,1,1,14,14,"rect_gravity_exit")

    add_env_rect(15,0,0,15,15,15,"rect_gravity_enter")
    add_env_rect(14,1,1,14,14,14,"rect_gravity_exit")

    add_env_rect(0,0,0,15,0,15,"rect_gravity_enter")
    add_env_rect(1,1,1,14,1,14,"rect_gravity_exit")

    add_env_rect(0,15,0,15,15,15,"rect_gravity_enter")
    add_env_rect(1,14,1,14,14,14,"rect_gravity_exit")

    add_env_rect(0,0,0,15,15,0,"rect_gravity_enter")
    add_env_rect(1,1,1,14,14,1,"rect_gravity_exit")

    add_env_rect(0,0,15,15,15,15,"rect_gravity_enter")
    add_env_rect(1,1,14,14,14,14,"rect_gravity_exit")
    

    std.create_edges("XAR_SOLID_BORING")
    for x,y,z in bps(0,0,0,15,15,15) do
        if get_pos(x,y,z) == "XAR_SOLID_BORING" then
            local color = {"XAR_SOLID_BORING_DECO_1","XAR_SOLID_BORING_DECO_1_BLUE_1","XAR_SOLID_BORING_DECO_1_GREEN_1","XAR_SOLID_BORING_DECO_1_GREEN_2","XAR_SOLID_BORING_DECO_1_PURPLE_1","XAR_SOLID_BORING_DECO_1_PURPLE_2","XAR_SOLID_BORING_DECO_1_YELLOW_1"}
            local colortype = color[randi(1,#color)]
            set_pos(x,y,z,colortype)
        end
    end
    for x,y,z in bps(2,2,2,13,13,13) do
        if randf() > 0.95 then
            local ore = {"XAR_TOPAZ_GEM","XAR_EMERALD_GEM","XAR_IOLITE_GEM","block_Citrine_Sponge","block_Quartz_Hall","block_Jade_Maze_Outside"}
            for i = 1,3 do
            --they are in order
                local chances = {0.5,
                                0.75,
                                0.99}
                local rareores = {"block_Bismuth_Outside",
                                "XAR_AMETHYST_GEM",
                                "XAR_SAPPHIRE_GEM"}
                if randf() > chances[i] then
                    ore[#ore+1] = rareores[i]
                end
            end
            local colortype = ore[randi(1,#ore)]
            set_pos(x,y,z,colortype)
        end
    end
    omniverse.rings()
end