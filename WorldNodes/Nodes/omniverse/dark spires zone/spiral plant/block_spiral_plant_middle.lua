function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_concrete_purple_border"
end

function p.__main()
    --get parent depth part, i think
    local level = get_level() --level of place
    if( get_input_path_block_var_exists(level-1, "depth", "i") ) then
        parent_depth = get_input_path_block_i(level-1, "depth")
    end
    local depth = parent_depth

    set_default_block("XAR_SOLID_BORING_CONCRETE_PURPLE_BORDER")
    create_rect("XAR_EMPTY_BORING",1,1,1,14,14,14)
    create_rect("XAR_GLASS",2,0,1,13,0,14)
    create_rect("XAR_GLASS",2,15,1,13,15,14)
    create_rect("XAR_GLASS",0,2,1,0,13,14)
    create_rect("XAR_GLASS",15,2,1,15,13,14)
    if get_input_adj_bt(0,-1,0) == "block_spiral_plant_middle" then --back glass
        create_rect("XAR_EMPTY_BORING",2,0,1,13,0,14)
    end
    if get_input_adj_bt(0,1,0) == "block_spiral_plant_middle" then --front glass
        create_rect("XAR_EMPTY_BORING",2,15,1,13,15,14)
    end
    if (get_input_adj_bt(-1,0,0) == "block_spiral_plant_middle") or (get_input_adj_bt(-1,0,0) == "block_spiral_plant") then --left glass
        create_rect("XAR_EMPTY_BORING",0,2,1,0,13,14)
    end
    if (get_input_adj_bt(1,0,0) == "block_spiral_plant_middle") or (get_input_adj_bt(1,0,0) == "block_spiral_plant_entrance") then --right glass
        create_rect("XAR_EMPTY_BORING",15,2,1,15,13,14)
    end
    --if get_input_adj_bt(1,0,0) == "block_spiral_plant_entrance" then --right glass entrance
    --    create_rect("XAR_EMPTY_BORING",15,2,1,15,13,14)
    --end
    --if get_input_adj_bt(-1,0,0) == "block_spiral_plant" then --left glass "exit"
    --    create_rect("XAR_ANTI_PLUG_GLASS",0,2,1,0,13,14)
    --end
    local depths = {5,15,25,50,100,200,300,400,600,800}
    local x = randi(3,12)
    local z = randi(3,12)
    local y = randi(4,11)
    if depth > depths[5] then
        add_bent_s(7,7,7,"bent_base_txt", "Feeling rich? Good luck climbing back up, cuz if you havent noticed, there is no blue or pink rings to the top :3")
    end
    if depth > depths[1] and depth < depths[2] then
        add_bent(x,z,y,"bent_gold_once_20")
    else if depth > depths[2] and depth < depths[3] then
        add_bent(x,z,y,"bent_gold_once_100")
    else if depth > depths[3] and depth < depths[4] then
        add_bent(x,z,y,"bent_gold_once_200")
    else if depth > depths[4] and depth < depths[5] then
        add_bent(x,z,y,"bent_gold_once_300")
    else if depth > depths[5] and depth < depths[6] then
        add_bent(x,z,y,"bent_gold_once_500")
    else if depth > depths[6] and depth < depths[7] then
        if (randf() > 0.9) then
            add_bent(x,z,y,"bent_gold_once_500")
        else
            add_bent(x,z,y,"bent_upgrade_gun_3_ammo_cap")
        end
    else if depth > depths[7] and depth < depths[8] then
        if (randf() > 0.9) then
            add_bent(x,z,y,"bent_gold_once_500")
        else
            add_bent(x,z,y,"bent_upgrade_gun_5_ammo_cap")
        end
    else if depth > depths[8] and depth < depths[9] then
        if (randf() > 0.9) then
            add_bent(x,z,y,"bent_gold_once_500")
        else
            add_bent(x,z,y,"bent_upgrade_gun_8_damage")
        end
    else if depth > depths[9] and depth < depths[10] then
        if (randf() > 0.9) then
            add_bent(x,z,y,"bent_gold_once_500")
        else
            add_bent(x,z,y,"bent_upgrade_shield")
        end
    else if depth > depths[10] then
        add_bent(x,z,y,"bent_gold_once_1000")
    end end end end end end end end end end
end
