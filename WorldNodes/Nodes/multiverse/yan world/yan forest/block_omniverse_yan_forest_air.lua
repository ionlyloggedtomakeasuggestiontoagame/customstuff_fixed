function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__main()
    set_default_block("block_omniverse_yan_forest_air")

    set_pos(6,7,9,"XAR_YING_FOREST")
    set_pos(6,7,8,"XAR_SOLID_BORING_DARK_GREEN_BORDER")
    set_pos(6,7,7,"block_omniverse_yan_forest_ammo_refill")
    set_pos(6,7,6,"XAR_SOLID_BORING_CONCRETE_PURPLE_BORDER")
    set_pos(6,7,5,"block_omniverse_yan_forest")

    --depth thing
    local parent_depth = 0
    local level = get_level()
    if(get_input_path_block_var_exists(level-1, "depth", "i")) then
        parent_depth = get_input_path_block_i(level-1, "depth")
    end
    local depth = parent_depth + 1
    chunk_set_i("depth", depth)

    --special case
    if get_input_adj_bt(0,0,-1) == "block_omniverse_yan_forest_waypoint" then
        create_rect("XAR_SOLID_BORING_DARK_GREEN_BORDER",5,5,0,10,10,0)
        create_rect("XAR_YING_FOREST",5,5,1,10,10,1)
    end

    --monsters
    if(randf() < 0.125) then
        local x = randi(0,15)
        local y = randi(0,15)
        local z = randi(0,15)
        if depth > 0 then
            add_ment(x,y,z,"ment_monster_mad_goblin")
        end
    end

    --rings
    if(randf() < 0.25) then
        local x = randi(0,15)
        local y = randi(0,15)
        local z = randi(0,15)
        if(randf() > 0.3) then
            add_bent(x,y,z,"bent_base_ring_green")
        else
            add_bent(x,y,z,"bent_base_ring_red")
        end
    end
end

function p.__type_init(id)
    ia_block_new_var_i(id, "depth", 0)
end