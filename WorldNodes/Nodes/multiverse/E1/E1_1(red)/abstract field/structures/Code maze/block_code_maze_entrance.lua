function p.__get_is_solid()
    return false
end

function p.__get_tex()
    return ""
end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")
    std.create_edges("XAR_SOLID_BORING_BRIGHT_GREEN_BORDER")
    add_bent(8,8,10,"bent_base_save")
    add_bent_s(8,8,8,"bent_base_txt","In here lies a 7x7 maze and on the outside u can see a numerical code with digits ranging from 0 to 9, each dead end of this maze leads to another maze with a number on it, if u did burlington combination lock, u must know what to do but if not, u gotta input the code seen on the outside on each maze until u get to the treasure.")
end
