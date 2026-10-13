function p.__get_is_solid() return true end
function p.__get_is_solid_visibly() return false end
function p.__get_tex() return "" end

function p.__main()
    set_default_block("block_Quartz_Hall_air")
    for i = 0,7 do
        create_rect("block_quartz_rich_mountain_caves",0+i,0+i,i*2,15-i,15-i,i*2+1)
    end
end

function p.__on_render(level, bp)
    --if level ~= ga_get_viewer_level() then 
    --    if ga_block_dist_to_viewer(level, bp) > 100 then
    --        return 
    --    end
    --end

    local mesh_name = "pyramid"
    local tex_name = "block_concrete_x"
    ga_render_color(std.vec(1,1,1))
    ga_render_matrix_rotated(180,std.vec(0,1,0))
    ga_render_matrix_scaled(0.5,0.5,1)
    ga_render_matrix_translated(0,0,0.5)
    ga_render_mesh_with_tex_no_lighting(mesh_name,tex_name)
end