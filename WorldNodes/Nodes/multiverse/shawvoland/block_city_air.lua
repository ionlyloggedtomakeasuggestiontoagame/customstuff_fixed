function p.__get_is_solid()
    return false
end

function p.__get_tex()
    return ""
end

function p.__main()
    set_default_block("block_city_air")
    srand(seed_normal())
    if (randf() > 0.75) then
        local x = randi(0,15)
        local z = randi(0,15)
        local y = randi(1,14)
        for i = 0,2 do
            set_pos(x,z,y+1,"XAR_MYLANTIS_CITY_BUILDING_RANDOM_TOP")
            set_pos(x,z,y,"block_xmbb_shawdovar_adapt")
            set_pos(x,z,y-1,"block_multiversal_structure")
        end
    end
    omniverse.rings()
end
