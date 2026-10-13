-- function p.__get_pulsates() return false end

function p.__on_render(level, bp)
    ga_render_matrix_rotated(90, std.vec(0,0,1))
    ga_render_matrix_translated(0.5,0,0.5)
    local bent_type = ga_bent_get_type(level, bp)
    local mesh = bent_type
    local tex = ga_mesh_get_tex(mesh)
    ga_render_mesh_with_tex_no_lighting(mesh, tex)
end
