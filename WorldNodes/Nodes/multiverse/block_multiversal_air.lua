function p.__get_is_solid()
    return false
end

function p.__get_tex()
    return ""
end

function p.__main()
    set_default_block("block_multiversal_air")
    if (randf() < 0.75) then
        set_pos(5,5,5,"block_multiversal_structure")
        if (randf() < 0.95) then
            set_pos(5,5,6,"block_diagonals")
        elseif (randf() < 0.5) then
            set_pos(5,5,6,"block_shawvoland")
        else
            set_pos(5,5,6,"XAR_SOLID_BORING_DARK_GREEN_BORDER")
            set_pos(5,5,7,"XAR_BULK_STANDING_CUBES")
        end
    end
    --rings
    if(randf() < 0.25) then
        local x = randi(0,15)
        local y = randi(0,15)
        local z = randi(0,15)
        set_pos(x,y,z,"block_multiversal_air")
        if(randf() > 0.3) then
            add_bent(x,y,z,"bent_base_ring_green")
        else
            add_bent(x,y,z,"bent_base_ring_red")
        end
    end
    --special case
    if get_input_adj_bt(0,0,-1) == "block_XAR_containment" then --front glass
        create_rect("XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER",6,6,0,8,8,0)
        set_pos(7,7,0,"block_multiversal_air")
        add_bent(7,7,0,"bent_base_ring_green")
    end
end
