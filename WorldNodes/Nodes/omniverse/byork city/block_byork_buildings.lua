function p.__get_is_solid()
    return false
end

function p.__get_tex()
    return ""
end

function p.__main()
    set_default_block("block_multiversal_air")
        for x = 1,15,2 do
            for z = 1,15,2 do
                local height = (randi(6,12))
                if get_input_adj_bt(0,0,1) == "block_byork_buildings" then
                    create_rect("block_byork_building_middle",x,z,0,x,z,15)  
                else 
                    create_rect("block_byork_building_middle",x,z,0,x,z,height)
                    set_pos(x,z,height,"block_byork_building_top")
                    if (randf() > 0.5) then
                        set_pos(x,z,height+1,"byork_buildings_bottom")
                        topcities = {"XAR_EMP_CITY","shawvoland","XAR_SPONGE2","XAR_EMERALD_GEM","byork","XAR_ORANGE_GROUND_CITY","block_custom_jericho_caves"}
                        randombuild = topcities[randi(1,7)]
                        set_pos(x,z,height+2,randombuild)
                        if randombuild == "block_custom_jericho_caves" then
                            set_pos(x,z,height+3,"byork")
                        end
                    end
                    if (height+4 < 15) and (randf() > 0.9) then
                        add_ment(x,z,height+4,"ment_monster_night_guard")
                    end
                end
            end
        end

    omniverse.rings()
end
