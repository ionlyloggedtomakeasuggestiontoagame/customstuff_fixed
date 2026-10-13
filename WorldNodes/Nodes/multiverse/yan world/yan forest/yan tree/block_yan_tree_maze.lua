function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_concrete_purple_border"
end

function p.__main()
    set_default_block("block_yan_tree_2")
        maze_start()
    for x = 1,14,2 do
    for y = 1,14,2 do
    for z = 1,14,2 do
        maze_add_vertex(x,y,z)
        if (randf() < 0.99) then
            set_pos(x,y,z,"block_yan_tree_maze_air")
        else
            if(randf() < 0.5) then
                set_pos(x,y,z,"block_yan_tree_maze_treasures") 
            else
                set_pos(x,y,z,"block_yan_tree_maze_map")  
            end
        end
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
                set_pos(x+1,y,z,"block_yan_tree_maze_air")
            end
        end
        if (y+2 <= 14) then
            if maze_edge_open(x,y,z, x,y+2,z) then
                set_pos(x,y+1,z,"block_yan_tree_maze_air")
            end
        end
        if (z+2 <= 14) then
            if maze_edge_open(x,y,z, x,y,z+2) then
                set_pos(x,y,z+1,"block_yan_tree_maze_air")
            end
        end
    end
    end
    end
    set_pos(0,7,7,"block_dockbay")
    set_pos(7,0,7,"block_dockbay")
    set_pos(7,7,0,"block_dockbay")
    set_pos(15,7,7,"block_dockbay")
    set_pos(7,15,7,"block_dockbay")
    set_pos(7,7,15,"block_dockbay")
    set_pos(14,7,7,"block_dockbay")
    set_pos(7,14,7,"block_dockbay")
    set_pos(7,7,14,"block_dockbay")
end