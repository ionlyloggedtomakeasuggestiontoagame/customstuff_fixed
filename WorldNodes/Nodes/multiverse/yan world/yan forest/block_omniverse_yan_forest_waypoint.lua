function p.__get_is_solid() return false end

function p.__get_tex() return "" end

function p.__main()
    set_default_block("block_omniverse_yan_forest_air")

    --depth thing
    local parent_depth = 0
    local level = get_level()
    if( get_input_path_block_var_exists(level-1, "depth", "i") ) then
        parent_depth = get_input_path_block_i(level-1, "depth")
    end
    local depth = parent_depth + 1
    chunk_set_i("depth", depth)
    
    create_rect("block_omniverse_yan_forest",0,0,15,15,15,15)
    create_rect("XAR_SOLID_BORING",5,5,15,10,10,15)
    create_rect("XAR_SOLID_BORING_BLUE_BORDER",6,6,15,9,9,15)
    create_rect("XAR_SOLID_BORING",5,5,7,10,10,7)
    create_rect("XAR_SOLID_BORING_BLUE_BORDER",6,6,7,9,9,7)
    create_rect("XAR_YING_FOREST",5,5,8,10,10,8)
    create_rect("XAR_SOLID_BORING",5,5,7,5,5,15)
    create_rect("XAR_SOLID_BORING",5,10,7,5,10,15)
    create_rect("XAR_SOLID_BORING",10,5,7,10,5,15)
    create_rect("XAR_SOLID_BORING",10,10,7,10,10,15)
    create_rect("XAR_SOLID_BORING_CONCRETE_PURPLE_BORDER",5,5,6,10,10,6)
    create_rect("block_omniverse_yan_forest",5,5,5,10,10,5)

    add_bent(7,7,13,"bent_base_save")
    add_bent(8,8,12,"bent_base_waypoint_out_only")
    add_bent(7,7,11,"bent_bookmark")
    if get_input_adj_bt(0,0,1) == "block_omniverse_yan_forest_air" then
        add_bent_s(8,8,10,"bent_base_waypoint","Floating Yan Forest Waypoint")
    else
        add_bent_s(8,8,10,"bent_base_waypoint","Yan Forest Waypoint")
    end
    local msg = "Current yan forest layer: " .. depth
    add_bent_s(7,7,9,"bent_base_txt",msg)
    add_bent_s(8,8,8,"bent_base_txt","You shall find a field and search for cheese, inside you will meet a choice, either finish a big maze flower or an electric flower to get the key that unlocks both sides of E1.\n\nAt depth 20 and beyond however u can find a rare and hard hybrid of the 2.")
    --rings
    if(randf() < 0.25) then
        local x = randi(0,15)
        local y = randi(0,15)
        local z = randi(0,15)
        if depth == 0 then
            if(randf() > 0.3) then
                add_bent(x,y,z,"bent_base_ring_green")
            else
                add_bent(x,y,z,"bent_base_ring_red")
            end
        end
    end
end

function p.__type_init(id)
    ia_block_new_var_i(id, "depth", 0)
end