function p.__get_is_solid() return true end
function p.__get_tex() return "buy_station" end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")
    std.create_shell("XAR_SOLID_BORING_EXPANDER")
    create_rect("XAR_EMPTY_BORING",3,0,3,12,0,12)
    ment_start(7,7,7,"ment_monster_growth_shopkeeper")
    ment_set_i("price", 10000)
    ment_set_offset(7.5, 7.5, 7.5)
    ment_end()
end
