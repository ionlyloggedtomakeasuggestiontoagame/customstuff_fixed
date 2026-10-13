function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_concrete_green_border"
end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")
    std.create_edges("XAR_SOLID_BORING_BRIGHT_GREEN_BORDER")
    add_bent(8,8,10,"bent_base_save")
    add_bent_s(8,8,8,"bent_base_txt","This is a minigun pyramid.\n\nInside lies a rough 16x16x16 Maze, but if u finish it, you get a bunch of minigun damage upgrades and 16 minigun special upgrades.")
end
