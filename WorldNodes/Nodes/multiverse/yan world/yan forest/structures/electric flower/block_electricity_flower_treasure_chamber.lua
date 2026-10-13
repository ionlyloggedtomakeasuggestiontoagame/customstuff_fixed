function p.__get_is_solid() return true end
function p.__get_tex() return "block_concrete_purple_x" end

function p.__main()
    set_default_block("XAR_SOLID_BORING_CONCRETE_PURPLE_BORDER")
    create_rect("XAR_YING_FOREST_AIR", 1,1,1,14,14,14)
    set_pos(7,7,7,"block_electricity_flower_treasure")
    set_pos(7,7,0,"XAR_YING_FOREST_AIR")
end
