function p.__get_is_solid()
    return false
end

function p.__get_tex()
    return ""
end

function p.__main()
    set_default_block("block_cow_field_air")
    block_cow_field.floor()

    --nomster
    if(randf() < 1/16) then
        local x = randi(0,15)
        local y = randi(0,15)
        local z = randi(8,15)
        add_ment(x,y,z,"ment_monster_common_cow")
    end

    --rings
    if(randf() < 0.25) then
         local x = randi(0,15)
         local y = randi(0,15)
         local z = randi(1,3)
         if not bt_get_is_solid_physically(get_pos(x,y,z)) then
            if(randf() > 0.3) then
                add_bent(x,y,z,"bent_base_ring_green")
            else
                add_bent(x,y,z,"bent_base_ring_red")
            end
        end
    end
end

function p.floor()
    --depth thing
    local parent_depth = 0
    local level = get_level()
    if get_input_path_bt(level-1) == "block_omniverse_yan_forest_air" then
        else
        if( get_input_path_block_var_exists(level-1, "fielddepth", "i") ) then
        parent_depth = get_input_path_block_i(level-1, "fielddepth")
        end
    end
        local fielddepth = parent_depth + 1
    if fielddepth >= 30 then
        local fielddepth = 30
    end
    chunk_set_i("fielddepth", fielddepth)
    --
    local height = randi(0,1)
    create_rect("XAR_SOLID_BORING_DARK_GREEN_BORDER",0,0,-1,15,15,-1+height)
    for x = 0,15 do
    for y = 0,15 do
        if (randf() < 0.5) then
            if (randf() < 1/16) then
                local flowers = {"XAR_SMALL_BLUE_FLOWER","XAR_SMALL_2D_BLACK_FLOWER","XAR_SMALL_WHITE_FLOWER","XAR_SMALL_YELLOW_FLOWER","XAR_JUMBO_YELLOW_FLOWER"}
                local flowertype = flowers[randi(1,#flowers)]
                set_pos(x,y,0+height,flowertype)
            else
                set_pos(x,y,0+height,"XAR_YING_FOREST")
            end
        else
            if (randf() < fielddepth/2048) and (fielddepth ~= 1) then
                set_pos(x,y,0+height,"block_cheese_big")
                set_pos(x,y,1+height,"block_cheese_entrance_air")
            else
                set_pos(x,y,0+height,"block_cow_field")
            end
        end
    end
    end
end

function p.__type_init(id)
ia_block_new_var_i(id, "fielddepth", 0)
end