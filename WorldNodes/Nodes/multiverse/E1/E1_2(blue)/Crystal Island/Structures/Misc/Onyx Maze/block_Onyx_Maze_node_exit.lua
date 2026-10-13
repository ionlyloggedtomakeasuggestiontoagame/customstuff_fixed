function p.__get_is_solid() return true end
function p.__get_tex() return "block_black" end

function p.__main()
    set_default_block("XAR_ANTI_PLUG")
    std.create_shell("XAR_SOLID_BORING_BLACK")
    omniverse.create_edges("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",1,1,1,14,14,14)
    add_bent_s(7,7,7,"bent_base_txt","Give up?")
    add_bent(7,7,5,"bent_base_ring_pink_source")
    create_rect("XAR_ANTI_PLUG",7,7,0,8,8,0)
end
