--code from cxar 7x7x7x7 maze but adapted into a 5x5x5x5 that may appear inside bismuths, idea by sirstafford and perms from ezno

--most of the comments in it werent made by me, they were made by the people that helped cxar


-- i thought about using blue ring for this but then i realized i needed to set terminal and down and up and all that typeof stuff, realized this was much simpler, even thinking about it. so I decided to do this instead. 
--function p.__get_is_solid() return true end
--function p.__get_tex() return "block_concrete_checker_blue" end
function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__main()
    set_default_block("XAR_SOLID_BORING")
end

function p.__get_can_use(level, bp)
    return true
end

function p.__get_use_msg(level, bp)
    return "Teleport down to the lower level"
end

function p.__on_use(level, bp)
    --there should be a standard 4d maze layout, which should teleport to inside the maze, which should always be at 7,7,5
    --for now, at least, until a general solution is come up with. 
    --or, maybe the block should read a variable?
    local s = ga_bp_to_path(level, bp)
    s = s:sub(1, -5)
    local new_last4 = s:sub(-4)
    --775 is where we assume the maze is, 777 is the final offset in the chunk.
    local vec3 = ga_block_get_v(level,bp,"maze_pos")
    s = s .. "_" .. math.floor(vec3.x) .. math.floor(vec3.y) .. math.floor(vec3.z) .. new_last4
    ga_tele(s,std.vec(7,7,7))
end

function p.__on_use2(level, bp)
    if(p.__get_can_use(level,bp) == true) then
        p.__on_use(level, bp)
    end
end


function p.__type_init(id)
    --change with ga_block_set_v after setting the block to change the teleport destination based on where the maze is in the chunk.
    ia_block_new_var_v(id,"maze_pos",std.vec(7,7,5))
end

function p.__on_render(level, bp)
    if( level ~= ga_get_viewer_level() ) then return end

    --Creating the shrinking look.
    local mesh_name = "large_box_case_edges"
    local tex_name = "ring_blue"
    local cur_time = ga_get_game_time()
    ga_render_color(std.vec(1,1,1))
    ga_render_mesh_with_tex_no_lighting(mesh_name,tex_name)
    local scale = -math.fmod((cur_time/2),1)+1
    ga_render_matrix_scaled(scale, scale, scale)
    ga_render_mesh_with_tex_no_lighting(mesh_name,tex_name)
end