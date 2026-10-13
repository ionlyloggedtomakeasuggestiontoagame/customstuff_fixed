function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_infinity_green"
end

function p.__main()
    create_xar_chunk("XAR_ROOT")
    bent_set_param_s(7,7,13, "Top OF World (Xar)")
    local msg = "This is the root chunk of the world.\n\nThere is Nothing beyond this Chunk as far as we know. \n\nWelcome to the edge of the universe.\n\nThese ^x0000ffBlue Rings ^!will bring you inside the infinity cube in the center. Specifically, you will be brought to the top of the planet Mylantis."
    bent_set_param_s(7,7,3, msg)
    set_pos(0,15,15,"XAR_SOLID_BORING")
    set_pos(0,15,15,"block_heart_house_replacement")
    set_pos(0,15,14,"XAR_ROOT_SECRET")
end