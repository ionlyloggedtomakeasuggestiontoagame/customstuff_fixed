--code from cxar 7x7x7x7 maze but adapted into a 5x5x5x5 that may appear inside bismuths, idea by sirstafford and perms from ezno

--most of the comments in it werent made by me, they were made by the people that helped cxar


function p.__get_is_solid() return true end
function p.__get_tex() return "block_dark_concrete_white_border" end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")
    --currently, always assuming the maze for the next layer is 7,7,5
    set_pos(7,7,7,"block_4D_maze_bismuth")
    add_bent(15,15,15,"bent_base_ring_pink_dest")
    local g = std_4dmaze.generate_rect_maze_4d(5,5,5,5)
    chunk_set_s("maze_encoded", g)
    --add_bent_s(2,2,2,"bent_base_txt",g)

    omniverse.create_edges("XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER",0,0,0,15,15,15)
    omniverse.create_edges("XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER",2,2,2,13,13,13)
    omniverse.create_edges("XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER",4,4,4,11,11,11)
    set_pos(6,7,6,"XAR_ANTI_PLUG_GLASS")
    set_pos(6,7,8,"XAR_ANTI_PLUG_GLASS")
    set_pos(6,8,7,"XAR_ANTI_PLUG_GLASS")
    set_pos(6,6,7,"XAR_ANTI_PLUG_GLASS")
    set_pos(5,7,7,"XAR_ANTI_PLUG_GLASS")
    set_pos(6,7,7,"XAR_PINK_SOURCE_INVISIBLE")
    add_bent(6,7,7,"bent_base_ring_green")
    set_pos(15,15,15,"XAR_EMPTY_BORING")
end


function p.__type_init(id)
    --String with length (2x-1)(2y-1)(2z-1)w
    ia_block_new_var_s(id, "maze_encoded", "")
    --idk man
    ia_block_new_var_i(id,"room_w_depth", -1)
end
