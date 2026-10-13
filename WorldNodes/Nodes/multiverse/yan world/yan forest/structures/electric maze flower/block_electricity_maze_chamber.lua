function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_yellow_black_striped_maze"
end

function p.__main()
    set_default_block("block_omniverse_yan_forest_air")
    local expo = 3
    local offset = 7.5
    omniverse.superellipse("XAR_SOLID_BORING_MAZE",7,expo+1,offset,offset,offset)
    omniverse.superellipse("XAR_SOLID_BORING_YELLOW_BLACK_STRIPED",7,expo,offset,offset,offset)
    create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",6,6,14,8,8,14)
    set_pos(7,7,14,"XAR_MYLANTIS_CAVES_LIB_ASCEND_WALL_Z_POS")
    set_pos(7,7,13,"XAR_EMPTY_BORING")
    add_bent(7,7,13,"bent_base_ring_green")
    set_pos(7,7,12,"block_electricity_maze_Maze")
    set_pos(7,7,11,"block_electricity_maze_treasure_kilo")
end
