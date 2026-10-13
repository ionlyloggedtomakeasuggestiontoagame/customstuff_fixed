function p.__get_is_solid()
    return false
end

function p.__get_tex()
    return ""
end

function p.__main()
    set_default_block("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER")
    create_rect("XAR_EMPTY_BORING",6,0,6,8,15,8)
    for y = 5,9 do
    add_ment(7,y,7,"ment_monster_blood_boy_greatest")
    end
end
