function p.__get_is_solid()
    return false
end

function p.__get_tex()
    return ""
end

function p.__main()
    set_default_block("XAR_GLASS")
    std.create_edges("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER")
    create_rect("XAR_EMPTY_BORING", 1,1,1, 14,15,14)
    add_bent(7,7,7,"bent_base_ring_red")
end
