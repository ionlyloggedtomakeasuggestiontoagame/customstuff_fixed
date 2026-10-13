function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")
    create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",7,7,0,8,7,2)
    create_rect("block_ladder_y_neg",7,8,0,8,8,2)
    local r = randi(16,255)
    local g = randi(16,255)
    local b = randi(16,255)
    while r+g+b <= 240 do
        r = randi(16,255)
        g = randi(16,255)
        b = randi(16,255)
    end
    r = dectohex(r)
    g = dectohex(g)
    b = dectohex(b)
    local textcolor = "^x"..r..g..b
    local text = textcolor.."Message from the Last creature in here: \n\n".."hey, I don't k^xffffffN"..textcolor.."ow how to get this bonus treasure in here, do yo^xffffffU"..textcolor.."?- wait no, that's stupid. if you ^xffffffK"..textcolor.."new how to g^xffffffE"..textcolor.."t it, you get it yourself."
    add_bent_s(9,9,2,"bent_base_txt",text)
end
