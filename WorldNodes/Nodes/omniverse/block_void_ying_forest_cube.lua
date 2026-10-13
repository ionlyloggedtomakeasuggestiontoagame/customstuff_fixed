function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_dark_concrete_green_border"
end

function p.__main()
    set_default_block("block_void_shards")
    std.create_edges("block_void_lasagna")
    add_bent(7,7,9,"bent_base_ring_green")
    local x1 = randi(4,6)
    local z1 = randi(4,6)
    local x2 = randi(8,10)
    local z2 = randi(8,10)
    create_rect("block_omniverse_yan_forest", x1,z1,5, x2,z2,5)
    create_rect("XAR_SOLID_BORING_CONCRETE_PURPLE_BORDER", x1,z1,6, x2,z2,6)
    create_rect("block_green_and_pink", x1,z1,7, x2,z2,7)
    create_rect("XAR_SOLID_BORING_DARK_GREEN_BORDER", x1,z1,8, x2,z2,8)
    create_rect("XAR_YING_FOREST", x1,z1,9, x2,z2,9)
end