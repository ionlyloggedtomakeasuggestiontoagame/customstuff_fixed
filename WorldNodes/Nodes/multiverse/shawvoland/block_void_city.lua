function p.__get_is_solid()
    return false
end

function p.__get_tex()
    return ""
end

function p.__main()
    set_default_block("block_city_air")
    create_rect("block_void_city", 0,0,0, 15,15,0)
    --add the buildings
    for x = 0,15,2 do
        for z = 0,15,2 do
            local height = randi(1,10)       
            create_rect("XAR_MYLANTIS_CITY_BUILDING_MID_BORING", x,z,0, x,z,height)
            set_pos(x,z,0,"block_xmbb_shawdovar_adapt")
            set_pos(x,z,height,"XAR_MYLANTIS_CITY_BUILDING_RANDOM_TOP")
            if (randf() > 0.95) then
                add_ment(x,z,height+3,"ment_monster_vulcan")
            end
            --now the XAR cities on top of the buildings
            if (randf() > 0.9) then
                local blocks = {
                "XAR_RICHMOND_SEWERS_1",
                "XAR_DANVILLE_BELOW",
                "XAR_SOLID_BORING",
                "XAR_BURLINGTON_BELOW_KILO",
                "XAR_COLCHESTER",
                "XAR_DENVER",
                "XAR_HUNTINGTON",
                "XAR_BRISTOL",
                "XAR_MONTREAL",
                "XAR_TORONTO",
                "XAR_JERICHO",
                "XAR_HINESBURG",
                "XAR_ESSEX"}
                --do not remove the block_air stuff
                --or else it tries to place non-existence
                --idk how to make this better, but its working
                --and if i mess this up its gonna be hard to remember back
                local upperblock = {
                "XAR_RICHMOND",
                "XAR_DANVILLE_ABOVE",
                "XAR_WILLISTON_KILO_CITY_ABOVE",
                "XAR_BURLINGTON",
                "block_city_air",
                "block_city_air",
                "block_city_air",
                "block_city_air",
                "block_city_air",
                "block_city_air",
                "block_city_air",
                "block_city_air",
                "block_city_air"}
                local blockID = randi(1,13)
                set_pos(x,z,height+1,blocks[blockID])
                set_pos(x,z,height+2,upperblock[blockID])
            else
                set_pos(x,z,height+2,"block_void_city")
                set_pos(x,z,height+1,"XAR_SOLID_BORING_DARK_CONCRETE_GREEN_BORDER")
            end
        end
    end
    --add the rings in the air
    omniverse.rings()
end
