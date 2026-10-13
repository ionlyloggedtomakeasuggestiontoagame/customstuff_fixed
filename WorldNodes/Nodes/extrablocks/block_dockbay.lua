function p.__get_is_solid() return true end
function p.__get_tex() return "block_dock" end

function p.__main()
    set_default_block("XAR_ANTI_PLUG")
    create_rect("XAR_SOLID_BORING_YELLOW_BLACK_STRIPED", 0,0,0, 0,15,0)
    create_rect("XAR_SOLID_BORING_YELLOW_BLACK_STRIPED", 15,1,15, 15,15,15)
    create_rect("XAR_SOLID_BORING_YELLOW_BLACK_STRIPED", 0,1,15, 0,14,15)
    create_rect("XAR_SOLID_BORING_YELLOW_BLACK_STRIPED", 1,15,0, 14,15,0)
    create_rect("XAR_SOLID_BORING_YELLOW_BLACK_STRIPED", 1,0,15, 15,0,15)
    create_rect("XAR_SOLID_BORING_YELLOW_BLACK_STRIPED", 0,15,1, 0,15,15)
    create_rect("XAR_SOLID_BORING_YELLOW_BLACK_STRIPED", 0,0,1, 0,0,15)
    create_rect("XAR_SOLID_BORING_YELLOW_BLACK_STRIPED", 15,15,1, 15,15,14)
    create_rect("XAR_SOLID_BORING_YELLOW_BLACK_STRIPED", 1,15,15, 14,15,15)
    create_rect("XAR_SOLID_BORING_YELLOW_BLACK_STRIPED", 1,0,0, 15,0,0)
    create_rect("XAR_SOLID_BORING_YELLOW_BLACK_STRIPED", 15,1,0, 15,15,0)
    create_rect("XAR_SOLID_BORING_YELLOW_BLACK_STRIPED", 15,0,1, 15,0,14)
end
