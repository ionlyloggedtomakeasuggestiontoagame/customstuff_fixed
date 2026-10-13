-- ezno stuff:
p.view_bob = 0
p.bob_time = 0
local def_bot_to_eye = 1.3
local def_eye_to_top = 0.6

local last_last_pos = std.vec(0,0,0)

local cur = def_bot_to_eye+def_eye_to_top

function p.enable()
    --Setting the body.
    local tele = std.vec_zero()
    local new_radius     = 0.23
    local new_bot_to_eye = 1.3
    local new_eye_to_top = 0.6
    local body_worked = ga_move_set_body_ground(
        tele, new_radius,
        new_bot_to_eye, new_eye_to_top)
    if( not body_worked ) then
         --Aborting.
        if ga_bt_get_physically_solid(ga_bp_to_bt(ga_get_viewer_level(),(std.get_adj_bp(ga_get_viewer_bp(ga_get_viewer_level()),5)))) == true then
        ga_tele(ga_get_viewer_path(), std.vec_add(ga_get_viewer_offset(),std.vec(0,0,1)))
        else
        ga_tele(ga_get_viewer_path(), std.vec_add(ga_get_viewer_offset(),std.vec(0,0,-1)))
        end
    end
    return true
end

function p.disable()
    --Setting the body.
    game_body.set_default_fly_mode()
end

function p.update_discrete_post()
    ga_set_s("xar.inf2.movement.mod", "") --Note this.
end

--This file does basic Q2MD2 animations, but it does not
--handle crouching.  For that, see Data/Packages/package_tutorial2.
function p.movement_update_discrete()
    local alt_mode = ga_get_s("xar.inf2.movement.mod")
    if( alt_mode ~= "" ) then
        p.update_discrete_alternate()
        return
    end

    local old_moving_in_plane = ga_get_b("xar.inf2.movement.moving_in_plane")
    local new_moving_in_plane = old_moving_in_plane
    local old_in_air = ga_get_b("xar.inf2.movement.in_air")

    --This is the one used by the engine.
    local time_step = 0.04

    local on_sure_footing = ga_move_get_on_sure_footing()

    local momentum = ga_get_sys_v("game.player.move.last_pos_diff")

    --Getting the acc due to pressing keys.
    local vec_look = ga_get_sys_v("game.player.camera.look")
    local vec_left = ga_get_sys_v("game.player.camera.left")

    local plane_look = {}
    plane_look.x = vec_look.x
    plane_look.y = vec_look.y
    plane_look.z = 0.0
    std.normalize(plane_look)

    local plane_left = {}
    plane_left.x = vec_left.x
    plane_left.y = vec_left.y
    plane_left.z = 0.0
    std.normalize(plane_left)

    local new_moving_in_plane = false
    local plane_acc = {x=0.0, y=0.0, z=0.0}
    if ga_get_b("xar.movement.forward") then
        plane_acc.x = plane_acc.x + plane_look.x
        plane_acc.y = plane_acc.y + plane_look.y
        ga_player_model_set_look()
        new_moving_in_plane = true
    end
    if ga_get_b("xar.movement.back") then
        plane_acc.x = plane_acc.x - plane_look.x
        plane_acc.y = plane_acc.y - plane_look.y
        ga_player_model_set_look()
        new_moving_in_plane = true
    end
    if ga_get_b("xar.movement.left") then
        plane_acc.x = plane_acc.x + plane_left.x
        plane_acc.y = plane_acc.y + plane_left.y
        ga_player_model_set_look()
        new_moving_in_plane = true
    end
    if ga_get_b("xar.movement.right") then
        plane_acc.x = plane_acc.x - plane_left.x
        plane_acc.y = plane_acc.y - plane_left.y
        ga_player_model_set_look()
        new_moving_in_plane = true
    end
    ga_set_b("xar.inf2.movement.moving_in_plane", new_moving_in_plane)

    --Animation
    local new_crouching = false
    if( new_crouching ) then
        if( new_moving_in_plane and not old_moving_in_plane ) then
            if( not old_in_air ) then
                ga_player_model_q2md2_set_cmd("crwalk")
            end
        end
        --
        if( not new_moving_in_plane and old_moving_in_plane ) then
            if( not old_in_air ) then
                ga_player_model_q2md2_set_cmd("crstand")
            end
        end
    else
        if( new_moving_in_plane and not old_moving_in_plane ) then
            if( not old_in_air ) then
                ga_player_model_q2md2_set_cmd("run")
            end
        end
        --
        if( not new_moving_in_plane and old_moving_in_plane ) then
            if( not old_in_air ) then
                ga_player_model_q2md2_set_cmd("stand")
            end
        end
    end

    --Q2MD2 animation command for being in air.
    if( not on_sure_footing and not old_in_air )
    then
        ga_player_model_q2md2_set_cmd("jump_up")
        local new_in_air = true
        ga_set_b("xar.inf2.movement.in_air", new_in_air)
    end

    --Q2MD2 animating command for landing form the air.
    if( on_sure_footing and old_in_air )
    then
        ga_player_model_q2md2_set_cmd("jump_down")
        local new_in_air = false
        ga_set_b("xar.inf2.movement.in_air", new_in_air)
    end

    local new_crouching = false
    --Q2MD2 State.
    if( new_crouching ) then
        if( new_moving_in_plane ) then
            ga_player_model_q2md2_set_state("crouch_run")
        else
            ga_player_model_q2md2_set_state("crouch")
        end
    else
        if( new_moving_in_plane ) then
            ga_player_model_q2md2_set_state("run")
        else
            ga_player_model_q2md2_set_state("")
        end
    end

    --Normalizing plane_acc vector.
    if ( std.length(plane_acc) < 0.0001 ) then
        plane_acc = {x=0.0, y=0.0, z=0.0}
    else
        std.normalize(plane_acc)
    end

    --Shrinking player acc if not on sure footing.
    if not on_sure_footing then
        local air_control = 0.25
        plane_acc.x = plane_acc.x * air_control
        plane_acc.y = plane_acc.y * air_control
    end

    --The "acceleration."
    local acc = {x=0.0, y=0.0, z=0.0}

    --Setting plane compoent of acc.
    if ga_get_b("xar.movement.brake") then
    speed_mod = 0.035 --magic number.
    else
    if ga_get_b("xar.movement.rocket") then
    speed_mod = 0.14 --magic number.
    else
    speed_mod = 0.07 --magic number.
    end end
    acc.x = plane_acc.x * speed_mod
    acc.y = plane_acc.y * speed_mod

    --Setting the z component of acc.
    --Jumping.
    if( ga_get_b("xar.movement.up") and
        on_sure_footing )
    then
        --Actually jumping.
        acc.z = 0.23
        ga_set_b("xar.movement.up", false)
    end

    local gravity = 0.02
    acc.z = acc.z - gravity

    --Drag
    local air_drag = 0.995
    local ground_drag = 0.0
    if on_sure_footing then
        ground_drag = 0.6
    else
        ground_drag = 0.98
    end

    --Scaled momentum.
    local sm = {}
    sm.x = momentum.x * ground_drag
    sm.y = momentum.y * ground_drag
    sm.z = momentum.z * air_drag

    --Extra impulse.
    local extra_impl = ga_get_v("xar.movement.extra_impulse")
    local sme = {}
    sme.x = sm.x + extra_impl.x*2
    sme.y = sm.y + extra_impl.y*2
    sme.z = sm.z + extra_impl.z
    ga_set_v("xar.movement.extra_impulse", std.vec_zero())

    --Setting the travel.
    local travel = {}
    travel.x = sme.x + acc.x
    travel.y = sme.y + acc.y
    travel.z = sme.z + acc.z
    --Ledge guards are used in other packages,
    --but not the in Infinifrag 2 easter egg in
    --the xar package.
    -- ga_move_set_ledge_guards(
    --     ga_get_b("tut2.movement.ledge_guard"))

    if true then
        local horiz_speed = std.length(std.vec(momentum.x, momentum.y, 0))

        p.view_bob = p.view_bob + ((horiz_speed > 0.1 and 1 or 0)-p.view_bob)*0.3

        p.bob_time = p.bob_time + ga_get_sys_f("time.elapsed")*horiz_speed*50

        local new = def_bot_to_eye+math.sin(p.bob_time)*0.04*p.view_bob

        --game_msg.add(tostring(p.bob_time) .. " " .. new)
        ga_move_set_body_ground(std.vec(0,0,0*new-0*cur), 0.23, new, (def_bot_to_eye+def_eye_to_top)-new)
        cur = new
        
        travel.z = travel.z + new-cur

        last_last_pos = std.vec(momentum.x,momentum.y,momentum.z)
    end

    ga_move_set_desired_travel(travel)
end

function p.update_discrete_alternate()
    local mode = ga_get_s("xar.inf2.movement.mod")

    if  mode == "ladder_x_pos" or
        mode == "ladder_x_neg" or
        mode == "ladder_y_pos" or
        mode == "ladder_y_neg"
    then
        --It would not be hard to multiply lad_up
        --by -1 if the viewer is looking down, etc.
        lad_up = {x=0.0, y=0.0, z=0.3}

        if mode == "ladder_x_pos" then
            lad_left = {x=0.0, y=0.03, z=0.0}
            lad_off = {x=-0.2, y=0.0, z=0.0}
        end
        if mode == "ladder_x_neg" then
            lad_left = {x=0.0, y=-0.03, z=0.0}
            lad_off = {x=0.2, y=0.0, z=0.0} 
        end
        if mode == "ladder_y_pos" then
            lad_left = {x=-0.03, y=0.0, z=0.0}
            lad_off = {x=0.0, y=-0.2, z=0.0}
        end
        if mode == "ladder_y_neg" then
            lad_left = {x=0.03, y=0.0, z=0.0}
            lad_off = {x=0.0, y=0.2, z=0.0} 
        end

        --Inverting the movement vectors based on
        --where the player is facing.
        vec_look = ga_get_sys_v("game.player.camera.look")
        if vec_look.z < 0.0 then
            lad_up.x = lad_up.x * (-1.0)
            lad_up.y = lad_up.y * (-1.0)
            lad_up.z = lad_up.z * (-1.0)
        end
        if  (mode == "ladder_x_pos" and vec_look.x < 0.0) or
            (mode == "ladder_x_neg" and vec_look.x > 0.0) or
            (mode == "ladder_y_pos" and vec_look.y < 0.0) or
            (mode == "ladder_y_neg" and vec_look.y > 0.0)
        then
            lad_left.x = lad_left.x * (-1.0)
            lad_left.y = lad_left.y * (-1.0)
            lad_left.z = lad_left.z * (-1.0)
        end

        travel = {x = 0.0, y = 0.0, z = 0.0}

        if ga_get_b("xar.movement.forward") then
            travel.x = travel.x + lad_up.x
            travel.y = travel.y + lad_up.y
            travel.z = travel.z + lad_up.z
        end
        if ga_get_b("xar.movement.back") then
            travel.x = travel.x - lad_up.x
            travel.y = travel.y - lad_up.y
            travel.z = travel.z - lad_up.z
        end
        if ga_get_b("xar.movement.left") then
            travel.x = travel.x + lad_left.x
            travel.y = travel.y + lad_left.y
            travel.z = travel.z + lad_left.z
        end
        if ga_get_b("xar.movement.right") then
            travel.x = travel.x - lad_left.x
            travel.y = travel.y - lad_left.y
            travel.z = travel.z - lad_left.z
        end
        if ga_get_b("xar.movement.up") then
            travel.x = travel.x + lad_off.x
            travel.y = travel.y + lad_off.y
            travel.z = travel.z + lad_off.z
        end

        ga_move_set_desired_travel(travel)
    else
        ga_print("*** Error: unknown movement mode found: " .. mode)
        ga_exit()
    end
end