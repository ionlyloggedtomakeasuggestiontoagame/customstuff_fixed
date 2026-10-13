function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_green_black_striped"
end

function p.__main()
    set_default_block("XAR_ANTI_PLUG")
    std.create_edges("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER")
    create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",1,1,0,14,14,0)
    add_bent(7,7,9,"bent_base_save")
    add_bent(7,7,7,"bent_gold_once_1000")
    local msg = "^x0000ffMessage from TON 618: \n\nSeriously? Level "
        .. get_level() .. "? ever since time has passed what once was the top of the world or as many call, level 0, has now been moved down this world by unknown means even for me. \n\nWhat you are searching is definitelly not here anymore. \n\nEven if i didnt do this, it is still funny however XD. hahahaha"
    add_bent_s(7,6,5,"bent_base_txt",msg)
    add_bent_s(7,8,5,"bent_base_txt","^x0000ffMessage from TON 618: \n\nI will recommend tho to hit your head on the ceilling of this root chunk, there is apparently a piece of void missing from it.")
    add_bent(7,7,3,"bent_base_ring_red")
end
