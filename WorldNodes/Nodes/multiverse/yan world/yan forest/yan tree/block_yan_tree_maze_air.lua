function p.__get_is_solid()
    return false
end

function p.__get_tex()
    return ""
end

function p.__main()
    set_default_block("block_omniverse_yan_forest_air")
    
    if get_input_adj_bt(0,0,1) == "block_yan_tree_3" then
        create_rect("block_omniverse_yan_forest",0,0,15,15,15,15)
    end

    --monsters
    if(randf() < 0.25) then
        local x = randi(0,15)
        local y = randi(0,15)
        local z = randi(0,15)
        if (randf() < 0.95) then
        add_ment(x,y,z,"ment_monster_mad_goblin")
        else
        add_ment(x,y,z,"ment_monster_rat_lesser")
        end
    end

    --rings
    if(randf() < 0.25) then
         local x = randi(0,15)
         local y = randi(0,15)
         local z = randi(0,15)
        add_bent(x,y,z,"bent_base_ring_green")
     end
end
