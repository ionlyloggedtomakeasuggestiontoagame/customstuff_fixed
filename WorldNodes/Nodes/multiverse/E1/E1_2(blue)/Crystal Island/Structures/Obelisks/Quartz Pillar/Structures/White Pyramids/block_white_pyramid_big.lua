function p.__get_is_solid() return true end
function p.__get_is_solid_visibly() return false end
function p.__get_tex() return "" end

function p.__main()
    set_default_block("block_Quartz_Hall_air")
    for i = 0,7 do
        create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",0+i,0+i,i,15-i,15-i,i)
        create_rect("XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER",1+i,1+i,i,14-i,14-i,i)
    end
    set_pos(7,0,0,"block_white_pyramid_entrance")
    for i = 0,3 do
        maze_start()
        for x = 1+i,14-i,2 do
        for y = 1+i,14-i,2 do
            maze_add_vertex(x,y,i)
            set_pos(x,y,i,"block_white_pyramid_node")
        end
        end

        for x = 1+i,14-i,2 do
        for y = 1+i,14-i,2 do
            if (x+2 <= 14-i) then
                maze_add_edge(x,y,i, x+2,y,i)
            end
            if (y+2 <= 14-i) then
                maze_add_edge(x,y,i, x,y+2,i)
            end
        end
        end
        maze_end()

        for x = 1+i,14-i,2 do
        for y = 1+i,14-i,2 do
            if (x+2 <= 14-i) then
                if maze_edge_open(x,y,i, x+2,y,i) then
                    set_pos(x+1,y,i,"block_white_pyramid_node")
                end
            end
            if (y+2 <= 14-i) then
                if maze_edge_open(x,y,i, x,y+2,i) then
                    set_pos(x,y+1,i,"block_white_pyramid_node")
                end
            end
        end
        end
    end
    --stairs
        --layer 1
    create_rect("block_white_pyramid_node",2,2,0,2,2,1)
    block_set_b(2, 2, 0, "stairsup", true)
    block_set_b(2, 2, 1, "stairsdown", true)
    create_rect("block_white_pyramid_node",2,12,0,2,12,1)
    block_set_b(2, 12, 0, "stairsup", true)
    block_set_b(2, 12, 1, "stairsdown", true)
    create_rect("block_white_pyramid_node",12,2,0,12,2,1)
    block_set_b(12, 2, 0, "stairsup", true)
    block_set_b(12, 2, 1, "stairsdown", true)
    create_rect("block_white_pyramid_node",12,12,0,12,12,1)
    block_set_b(12, 12, 0, "stairsup", true)
    block_set_b(12, 12, 1, "stairsdown", true)
        --layer 2
    create_rect("block_white_pyramid_node",7,7,1,7,7,2)
    block_set_b(7, 7, 1, "stairsup", true)
    block_set_b(7, 7, 2, "stairsdown", true)
        --layer 3
    create_rect("block_white_pyramid_node",4,4,2,4,4,3)
    block_set_b(4, 4, 2, "stairsup", true)
    block_set_b(4, 4, 3, "stairsdown", true)
    create_rect("block_white_pyramid_node",4,10,2,4,10,3)
    block_set_b(4, 10, 2, "stairsup", true)
    block_set_b(4, 10, 3, "stairsdown", true)
    create_rect("block_white_pyramid_node",10,4,2,10,4,3)
    block_set_b(10, 4, 2, "stairsup", true)
    block_set_b(10, 4, 3, "stairsdown", true)
    create_rect("block_white_pyramid_node",10,10,2,10,10,3)
    block_set_b(10, 10, 2, "stairsup", true)
    block_set_b(10, 10, 3, "stairsdown", true)
        --layer 4
    set_pos(7,7,3,"block_white_pyramid_node")
    block_set_b(7, 7, 3, "stairsup", true)
    for i = 4,7 do
        create_rect("block_white_pyramid_wedge",i,i,i,15-i,15-i,i)
        create_rect("block_white_pyramid_edge",i+1,i+1,i,14-i,14-i,i)
        for j = i,15-i do
            block_set_b(i,j,i, "-X", true)
            block_set_b(15-i,j,i, "+X", true)
            block_set_b(j,i,i, "-Y", true)
            block_set_b(j,15-i,i, "+Y", true)
            block_set_b(i,j,i-1, "-X", true)
            block_set_b(15-i,j,i-1, "+X", true)
            block_set_b(j,i,i-1, "-Y", true)
            block_set_b(j,15-i,i-1, "+Y", true)
        end
    end

    create_rect("XAR_EMPTY_BORING",6,6,4,9,9,4)
    create_rect("XAR_EMPTY_BORING",7,7,5,8,8,5)

    add_ment_f(8,8,7.5,"ment_monster_night_guard")
    add_ment_f(8,8,9.5,"ment_base_ring_pink_dest")

    set_pos(7,7,5,"block_white_pyramid_treasure")
    set_pos(7,7,4,"block_white_pyramid_treasure")
end

function p.__on_render(level, bp)
    --if level ~= ga_get_viewer_level() then 
    --    if ga_block_dist_to_viewer(level, bp) > 100 then
    --        return 
    --    end
    --end

    local mesh_name = "pyramid"
    local tex_name = "block_concrete_white_diag"
    ga_render_color(std.vec(1,1,1))
    ga_render_matrix_rotated(180,std.vec(0,1,0))
    ga_render_matrix_scaled(0.5,0.5,0.5)
    ga_render_matrix_translated(0,0,1)
    ga_render_mesh_with_tex_no_lighting(mesh_name,tex_name)
end