function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_bright_green_border"
end

function p.__main()
    set_default_block("XAR_SOLID_BORING_BRIGHT_GREEN_BORDER")
    local code = get_input_path_block_s(get_level()-1, "code")
    for i = 1,6 do
    local digit = (code):sub(i,i)
    set_pos(11-i,15,2,"XAR_SOLID_BORING_NUM_"..digit)  
    end
end
