function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__main()
    if chunk_get_b("small?") then
        set_default_block("XAR_EMPTY_BORING")
        if randf() < 0.25 then
            local x_min = randi(4,6)
            local y_min = randi(4,6)
            local x_max = randi(9,11)
            local y_max = randi(9,11)
            local height = randi(1,14)

            create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",x_min,y_min,height,x_max,y_max,height)
            local ammo = {"bent_ammo_gun_9","bent_ammo_gun_4_large","bent_ammo_gun_7_large","bent_ammo_gun_0"}
            local ammotype = ammo[randi(1,#ammo)]
            add_bent(7,7,height+1,ammotype)
        end
    else
        set_default_block("block_knockback_flower_plataforms")
        for x,y,z in bps(0,0,0,15,15,15) do
            block_set_b(x,y,z, "small?", true)
        end
        if get_input_adj_bt(0,0,1) == "block_water_blue_ring" then
            create_rect("block_knockback_flower_sky_exit",0,0,15,15,15,15)
        end
    end
end

function p.__type_init(id)
    ia_block_new_var_b(id, "small?", false)
end
