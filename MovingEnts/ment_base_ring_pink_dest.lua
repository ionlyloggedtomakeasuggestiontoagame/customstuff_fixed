function p.__type_init(id)
    ia_ment_set_builtin_var_f(id, "__radius", 0.7)
    ia_ment_set_builtin_var_s(id, "__mesh", "sphere_pink")
end

function p.__get_can_use(inst_id)
    local dist = ga_ment_get_var_special_dist_to_viewer(inst_id)
    return (dist > 2.0)
end
function p.__on_use(inst_id)
    str =
        "This is a ^xff00ffPink Sphere^!. \n\n" ..
        "^xff0000You cannot use this entity.^!\n\n" ..
        "When you use ^xff00ffPink Rings^!, " ..
        "you will become larger and will be teleported " ..
        "to one of these pink spheres.\n\n" ..
        "More precisely, using Pink Rings causes you to move " ..
        "closer to the root of the chunk tree " ..
        "until you reach a chunk with a Pink Sphere. "
    ga_create_s("temp.base.textbox_text")
    ga_set_s("temp.base.textbox_text", str)
    ga_window_push("win_base_txt")
end

function p.__on_render(inst_id, radius)
    if ga_ment_get_level(inst_id) ~= ga_get_viewer_level() then return end
    --ga_render_matrix_scaled(0.7, 0.7, 0.7)
    ga_render_mesh("sphere_pink")
end
