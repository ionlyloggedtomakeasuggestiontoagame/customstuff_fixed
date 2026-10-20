function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__main()
    set_default_block("block_omniverse_yan_forest_air")

    --depth thing
    local parent_depth = 0
    local level = get_level()
    if get_input_path_bt(level-1) ~= "block_omniverse_yan_forest_air" then
        if( get_input_path_block_var_exists(level-1, "depth", "i") ) then
            parent_depth = get_input_path_block_i(level-1, "depth")
        end
    end
    local depth = parent_depth + 1
    chunk_set_i("depth", depth)

    --floor
    block_omniverse_yan_forest.floor(depth)
    --totem
    p.totem()

    --rings
    if(randf() < 0.25) then
        local x = randi(0,15)
        local y = randi(0,15)
        local z = randi(0,15)
        if depth == 0 then
            if not bt_get_is_solid_physically(get_pos(x,y,z)) then
                if(randf() > 0.3) then
                    add_bent(x,y,z,"bent_base_ring_green")
                else
                    add_bent(x,y,z,"bent_base_ring_red")
                end
            end
        end
    end
end

function p.__type_init(id)
    ia_block_new_var_i(id, "depth", 0)
end

function p.totem()
    if get_input_adj_bt(0,0,1) ~= "block_omniverse_yan_forest_air" then
        create_rect("XAR_SOLID_BORING",7,7,9,7,7,15)
    end
    omniverse.create_edges("XAR_SOLID_BORING",5,5,5,9,9,9)
    add_bent_s(7,7,7,"bent_base_txt","")
    local fact = randi(0,3)
    local corner = ""
    --local fact = 3
    if fact == 0 then
        corner = "block_sky_boring"
        bent_set_param_s(7,7,7,"Yan trees can grow forests too but sometimes they can end up beyond the branch, in which case the forest will adapt to float in the air and in such a forest u can find sky flowers.") 
    end
    if fact == 1 then
        corner = "XAR_SOLID_BORING_YELLOW_BLACK_STRIPED"
        bent_set_param_s(7,7,7,"Electric flowers have a corner shop that allows you to grow and complete the maze way faster if u do manage to get to such a corner") 
    end
    if fact == 2 then
        corner = "XAR_SOLID_BORING_CONCRETE_DARK_DOT"
        bent_set_param_s(7,7,7,"Parkour flowers are weirdly 2D, why no one tries to jump at the sides and see anything") 
    end
    if fact == 3 then
        corner = "XAR_SOLID_BORING_CONCRETE_PURPLE_X"
        bent_set_param_s(7,7,7,"Yan trees can be entered if shrunk down enough") 
    end
    set_pos(7,7,9,corner)
    set_pos(5,9,9,corner)
    set_pos(5,5,9,corner)
    set_pos(5,9,5,corner)
    set_pos(5,5,5,corner)
    set_pos(9,9,9,corner)
    set_pos(9,5,9,corner)
    set_pos(9,9,5,corner)
    set_pos(9,5,5,corner)

end