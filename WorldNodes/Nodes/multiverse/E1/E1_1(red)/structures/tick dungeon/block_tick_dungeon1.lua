function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_metronome_tick"
end

function p.__main()
    set_default_block("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER")
    create_rect("block_tick_dungeon_hollow",1,1,1,14,14,14)
    create_rect("block_tick_dungeon_node",7,7,13,7,7,15)
    set_pos(7,7,15,"block_tick_dungeon_node_entrance")
    set_pos(7,7,0,"block_tick_dungeon_treasure")
    add_bent(7,7,15,"bent_base_ring_green")
        maze_start()
    for x = 1,14,2 do
    for y = 1,14,2 do
    for z = 1,14,2 do
        maze_add_vertex(x,y,z)
        set_pos(x,y,z,"block_tick_dungeon_node")
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
                set_pos(x+1,y,z,"block_tick_dungeon_node")
            end
        end
        if (y+2 <= 14) then
            if maze_edge_open(x,y,z, x,y+2,z) then
                set_pos(x,y+1,z,"block_tick_dungeon_node")
            end
        end
        if (z+2 <= 14) then
            if maze_edge_open(x,y,z, x,y,z+2) then
                set_pos(x,y,z+1,"block_tick_dungeon_node")
            end
        end
    end
    end
    end
end   