function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_concrete_checker_dark"
end

function p.__main()
    create_xar_chunk("XAR_DANVILLE_PENTHOUSE")
    for x = 1,14 do
        for y = 1,14 do
        local forests = {"XAR_WILLISTON_TREES","XAR_YING_FOREST","XAR_GROUP_3_PATCH_TREES_BELOW","XAR_FANATIC_ISLAND_ABOVE","XAR_FANATIC_WEED","XAR_MINI_AMMO_FOREST_GUERRILLA_KILO"}
        local foresttype = forests[randi(1,#forests)]
        set_pos(x,y,0,foresttype)
        end
    end
    bent_set_param_s(2,2,6, "Forest Bubble")
    set_pos(2,2,8,"XAR_EMPTY_BORING")
    add_bent_s(2,2,8, "bent_base_txt","Message from ^xa17600 Imp^!:\n\n^xa17600It is great to just be able to breath such a nice air here, no polution, just many trees.")
end
