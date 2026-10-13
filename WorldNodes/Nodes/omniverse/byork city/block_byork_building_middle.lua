function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_dark_concrete_blue_border"
end

function p.__main()
    set_default_block("XAR_SOLID_BORING_DARK_CONCRETE_BLUE_BORDER")
    create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",6,6,0,9,9,15)
    create_rect("dockbay",7,7,0,8,8,15)
    create_rect("e",1,1,1,14,14,14)
    create_rect("XAR_SOLID_BORING_DARK_CONCRETE_BLUE_BORDER",7,7,2,8,8,2)
    create_rect("XAR_SOLID_BORING_DARK_CONCRETE_BLUE_BORDER",7,7,13,8,8,13)
    --light colors (lampreys)
    local lamps = {"ment_monster_lamprey_blue",
    "ment_monster_lamprey_red",
    "ment_monster_lamprey_yellow",
    "ment_monster_lamprey_green",
    "ment_monster_lamprey"}
    --now, its time to turn on the lights
    add_ment(7,7,7,lamps[randi(1,5)])
end
