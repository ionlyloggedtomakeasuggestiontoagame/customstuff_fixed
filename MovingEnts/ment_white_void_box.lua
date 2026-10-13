-- function p.__get_pulsates() return false end
function p.__type_init(id)
    ia_ment_set_builtin_var_f(id, "__radius", 1)
    ia_ment_set_builtin_var_s(id, "__mesh", "white_void")
end

function p.__on_render(inst_id, radius)
    local mesh = "white_void"
    local tex = ga_mesh_get_tex(mesh)
    ga_render_matrix_translated(0.5,0.5,0.5)
    ga_render_color(std.vec(1.0, 1.0, 1.0))
    if ga_get_icarus_enabled() then
        local viewerdist = ga_ment_get_var_special_dist_to_viewer(inst_id)
        if viewerdist/8 < 1 then
            ga_render_mesh_with_tex_alpha_no_lighting(mesh, tex, -(viewerdist/8)+1.25)
        else
            ga_render_mesh_with_tex_alpha_no_lighting(mesh, tex, 0.25)
        end
    else
        ga_render_mesh_with_tex_alpha_no_lighting(mesh, tex, 1)
    end
end
