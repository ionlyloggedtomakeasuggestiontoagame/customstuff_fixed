function p.__get_is_solid()
    return false
end

function p.__get_tex()
    return ""
end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")
    
    std.create_edges("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER")
    local input = get_input_path_block_s(get_level()-1, "input")
    if input == "" then
        input = "None"
    end
    local funny = {"42","420","69","69420","8008","80085","1337"}
    if valueinlist(input,funny) then
        add_bent_s(7,7,7,"bent_base_txt","Code combination put:\n\n^x00ff00"..input.."\n\n^x0000ffHehe, funny.")
    else
        add_bent_s(7,7,7,"bent_base_txt","Code combination put:\n\n^x00ff00"..input)
    end
    
    
end
