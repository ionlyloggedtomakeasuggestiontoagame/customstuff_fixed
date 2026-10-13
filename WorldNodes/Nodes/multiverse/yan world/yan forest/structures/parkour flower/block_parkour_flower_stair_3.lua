function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_concrete_dark_dot"
end

function p.__main()
    set_default_block("XAR_SOLID_BORING_BLUE_BORDER")
    create_rect("XAR_EMPTY_BORING", 1,0,1, 14,14,14)
    create_rect("XAR_SOLID_BORING_BLUE_BORDER", 7,7,0, 7,7,14)
    create_rect("block_ladder_y_pos", 7,6,0, 7,6,14)
    add_bent_s(7,3,2,"bent_base_txt","Message from TON 618: \n\n^x0000ffHeh, I didnt even need to change anything in the code, this parkour by itself already has a second layer with no checkpoints >:)")
end
