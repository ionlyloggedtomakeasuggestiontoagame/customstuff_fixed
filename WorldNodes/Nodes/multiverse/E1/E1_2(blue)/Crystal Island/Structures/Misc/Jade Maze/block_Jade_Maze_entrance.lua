function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__main()
    set_default_block("XAR_SOLID_BORING_DECO_1_GREEN_2")
    create_rect("XAR_EMPTY_BORING",1,0,1,14,15,14)
    add_bent_s(8,8,8,"bent_base_txt","In here lies a 5x5x5 maze with treasure on the other side, it is very thin tho and can get easily blocked, hopefully u find the other side.")
end
