function p.__get_is_solid() return true end
function p.__get_tex() return "block_deco1" end

function p.__main()
    set_default_block("block_Quartz_Hall_air")
    srand(seed_normal())
    create_rect("block_Quartz_Hall_floor",0,0,1,15,15,1)
    if chunk_get_b("gravitybarrier") then
        omniverse.wallsauto(0,"block_E1_2_air","block_field_boring")
        omniverse.wallsauto(0,"block_Quartz_Pillar","block_field_boring")
    end
    create_rect("block_Quartz_Hall",0,0,0,15,15,0)
    create_rect("block_Quartz_Hall",0,0,15,15,15,15)
    if (randf() < 0.25) then
        local x = randi(0,15)
        local y = randi(0,15)
        local z = randi(0,15)
        if not bt_get_is_solid_physically(get_pos(x,y,z)) then
            add_bent(x,y,z,"bent_base_ring_green")
        end
    end
    if chunk_get_b("gravitybarrier") then
        if get_input_adj_bt(1,0,0) ~= "block_Quartz_Hall" then
            add_env_rect(15,1,1,15,14,14,"rect_gravity_exit")
            add_env_rect(14,1,1,14,14,14,"rect_gravity_enter")
        end
        if get_input_adj_bt(-1,0,0) ~= "block_Quartz_Hall" then
            add_env_rect(0,1,1,0,14,14,"rect_gravity_exit")
            add_env_rect(1,1,1,1,14,14,"rect_gravity_enter")
        end
        if get_input_adj_bt(0,1,0) ~= "block_Quartz_Hall" then
            add_env_rect(1,15,1,14,15,14,"rect_gravity_exit")
            add_env_rect(1,14,1,14,14,14,"rect_gravity_enter")
        end
        if get_input_adj_bt(0,-1,0) ~= "block_Quartz_Hall" then
            add_env_rect(1,0,1,14,0,14,"rect_gravity_exit")
            add_env_rect(1,1,1,14,1,14,"rect_gravity_enter")
        end
    end
end

function p.__type_init(id)
    ia_block_new_var_b(id, "gravitybarrier", true)
end