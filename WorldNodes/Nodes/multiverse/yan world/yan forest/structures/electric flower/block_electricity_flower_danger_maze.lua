function p.__get_is_solid() return true end
function p.__get_tex() return "block_yellow_black_striped" end

function p.__main()
    set_default_block("XAR_HIGH_VOLTAGE")
    maze_start()
    for x = 1,14,2 do
    for y = 1,14,2 do
    for z = 1,14,2 do
        maze_add_vertex(x,y,z)
        set_pos(x,y,z,"XAR_EMPTY_BORING")
    end
    end
    end

    for x = 1,14,2 do
    for y = 1,14,2 do
    for z = 1,14,2 do
        if (x+2 <= 14) then
            maze_add_edge(x,y,z, x+2,y,z)
        end
        if (y+2 <= 14) then
            maze_add_edge(x,y,z, x,y+2,z)
        end
        if (z+2 <= 14) then
            maze_add_edge(x,y,z, x,y,z+2)
        end
    end
    end
    end
    maze_end()
    for x = 1,14,2 do
    for y = 1,14,2 do
    for z = 1,14,2 do
        if (x+2 <= 14) then
            if maze_edge_open(x,y,z, x+2,y,z) then
                set_pos(x+1,y,z,"XAR_EMPTY_BORING")
            end
        end
        if (y+2 <= 14) then
            if maze_edge_open(x,y,z, x,y+2,z) then
                set_pos(x,y+1,z,"XAR_EMPTY_BORING")
            end
        end
        if (z+2 <= 14) then
            if maze_edge_open(x,y,z, x,y,z+2) then
                set_pos(x,y,z+1,"XAR_EMPTY_BORING")
            end
        end
    end
    end
    end
    create_rect("XAR_SOLID_BORING_RED_BLACK_STRIPED", 6,6,0, 8,8,0)
    set_pos(7,7,0,"XAR_EMPTY_BORING")
    set_pos(7,7,1,"block_dockbay")
    add_bent(7,7,0, "bent_base_ring_green")
    create_rect("XAR_SOLID_BORING_GREEN_BLACK_STRIPED", 6,6,15, 8,8,15)
    set_pos(7,7,15,"XAR_EMPTY_BORING")
    set_pos(7,7,14,"XAR_EMPTY_BORING")
    add_bent(7,7,15, "bent_base_ring_green")
    set_pos(13,14,1,"block_electricity_flower_growth_shop")
end
