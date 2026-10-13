function p.__get_is_solid() return true end
function p.__get_tex() return "block_concrete_green_diag" end

function p.__main()
    set_default_block("XAR_SOLID_BORING_BLUE_BORDER")
    create_rect("XAR_EMPTY_BORING",7,7,7,7,7,15)
    set_pos(7,6,7,"block_electricity_flower_treasure")
    set_pos(7,8,7,"block_big_maze_flower_treasure")
    set_pos(6,7,7,"block_cow_field_structure")
    set_pos(8,7,7,"block_electricity_maze_flower")
    set_pos(7,7,6,"block_E1_cuboid")
end
