function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_dark_green_border"
end

function p.__main()
    set_default_block("block_abstract_field_air")
    srand(seed_xy())
    block_abstract_field_air.air()
    for z = -1,16,0.25 do
        local angle = z * 22.5
        for radius = 2,4,0.5 do
            local x1 = math.cos(math.rad(angle)) * radius + 8
            local y1 = math.sin(math.rad(angle)) * radius + 8
            set_pos(math.floor(x1), math.floor(y1), math.floor(z), "XAR_TAU_CAVE_MOSS_TOP")
            set_pos(math.floor(x1), math.floor(y1), math.floor(z+1), "XAR_YING_FOREST")
        end
    end


    omniverse.rings()
    block_abstract_field.monsters()
end