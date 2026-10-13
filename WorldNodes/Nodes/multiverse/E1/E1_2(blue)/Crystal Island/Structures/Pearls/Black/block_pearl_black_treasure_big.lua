function p.__get_is_solid() return true end
function p.__get_tex() return "block_concrete_yellow_x" end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")
    std.create_edges("XAR_SOLID_BORING_CONCRETE_YELLOW_X")
    set_pos(5,7,7,"block_pearl_weapon_mod")
    set_pos(7,7,7,"block_pearl_black_treasure")
    set_pos(9,7,7,"block_E1_wall_key")
end
