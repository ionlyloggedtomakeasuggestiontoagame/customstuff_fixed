function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")
    std.create_edges("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER")
    add_bent(7,7,9,"bent_base_save")
    add_bent(7,7,7,"bent_base_ring_blue")
    add_bent_s(7,7,5,"bent_base_txt","This is an Onyx.\n\nIn here lies a 3-layered 7x7x5 maze with treasure if u manage to escape it, however its layout is dark and full of gold, remember haunted house 2 and ^xff0000DO NOT BE GREEDY^!.")
    base_blue_tele.set_blue_type_up()
end
