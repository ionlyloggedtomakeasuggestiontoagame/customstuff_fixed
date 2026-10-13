function p.__get_is_solid() return true end

function p.__get_tex() return "block_concrete_border" end

function p.__main()
    set_default_block("XAR_SOLID_BORING")
    std.create_edges("XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER")
    create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",0,6,6,15,9,9)
    create_rect("XAR_ANTI_PLUG",0,7,7,15,8,8)
    create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",6,0,6,9,15,9)
    create_rect("XAR_ANTI_PLUG",7,0,7,8,15,8)
    create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",6,6,0,9,9,15)
    create_rect("XAR_ANTI_PLUG",7,7,0,8,8,15)
    create_rect("XAR_YING_FOREST_AIR_TOP",1,1,1,14,14,14)
    add_bent(7,7,8,"bent_base_ring_green_danger")
    set_pos(7,7,7,"block_void_growth_dungeon_treasure2")
end
