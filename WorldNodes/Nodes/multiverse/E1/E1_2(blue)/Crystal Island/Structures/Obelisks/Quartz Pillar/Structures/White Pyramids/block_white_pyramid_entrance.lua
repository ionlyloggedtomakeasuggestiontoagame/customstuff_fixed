function p.__get_is_solid() return true end
function p.__get_tex() return "block_dark_concrete_white_border" end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")
    std.create_shell("XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER")
    std.create_edges("XAR_SOLID_BORING_CONCRETE_WHITE_X")
    omniverse.create_edges("XAR_SOLID_BORING_BRIGHT_GREEN_BORDER",6,0,0,9,0,3)
    create_rect("XAR_ANTI_PLUG",7,0,1,8,0,2)
    omniverse.create_edges("XAR_SOLID_BORING_BRIGHT_GREEN_BORDER",6,6,15,9,9,15)
    create_rect("XAR_ANTI_PLUG",7,7,15,8,8,15)
    add_bent(6,7,2,"bent_base_save")
    add_bent_s(9,7,2,"bent_base_txt","Pristine on the outside, dark on the inside, and full of guardians, the treasure is at the top, traverse through the layered mazes in order to get there.")
    create_rect("XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER",6,15,0,9,15,15)
    create_rect("XAR_EMPTY_BORING",6,15,1,9,15,14)
end
