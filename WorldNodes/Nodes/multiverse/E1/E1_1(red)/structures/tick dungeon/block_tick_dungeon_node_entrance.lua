function p.__get_is_solid()
    return false
end

function p.__get_tex()
    return ""
end

function p.__main()
    set_default_block("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER")
    create_rect("XAR_EMPTY_BORING",1,1,0,14,14,15)
    add_bent_s(7,7,7,"bent_base_txt","Meet the ticking dungeon, a 7x7x7 maze that constantly switches between 2 states, rather easy to do but beware, greater rats live inside the gates that will close on you.")
end
