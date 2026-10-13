function p.__get_is_solid() return true end
function p.__get_is_solid_visibly() return false end
function p.__get_tex() return "" end

function p.__main()
    set_default_block("XAR_YING_FOREST_AIR_TOP")
    for i = 0,7 do
        create_rect("XAR_SOLID_BORING_LIGHT_GREEN_BORDER",0+i,0+i,i,15-i,15-i,i)
    end
    set_pos(7,7,7,"block_minigun_pyramid_entrance")
    set_pos(7,7,6,"block_minigun_pyramid_shrink")
    set_pos(7,7,5,"block_minigun_pyramid_Maze")
    set_pos(7,7,4,"block_minigun_pyramid_treasure_kilo")
    add_ment_f(8,8,9.5,"ment_base_ring_pink_dest")
end

function p.__on_render(level, bp)
    --if level ~= ga_get_viewer_level() then 
    --    if ga_block_dist_to_viewer(level, bp) > 100 then
    --        return 
    --    end
    --end

    local mesh_name = "pyramid"
    local tex_name = "block_concrete_green_diag"
    ga_render_color(std.vec(1,1,1))
    ga_render_matrix_rotated(180,std.vec(0,1,0))
    ga_render_matrix_scaled(0.5,0.5,0.5)
    ga_render_matrix_translated(0,0,1)
    ga_render_mesh_with_tex_no_lighting(mesh_name,tex_name)
end