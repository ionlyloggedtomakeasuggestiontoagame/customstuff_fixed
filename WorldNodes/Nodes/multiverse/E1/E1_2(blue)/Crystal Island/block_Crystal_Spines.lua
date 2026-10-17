function p.__get_is_solid()
    return false
end

function p.__get_tex()
    return ""
end

function p.__main()
    set_default_block("block_E1_2_air")
    
    create_rect("block_Crystal_Spines",0,0,0,15,15,1)

    local ore = {"crystal","pillar"}
    if get_input_adj_bt(0, 0, -1) == "block_Crystal_Spines" then
        srand(seed_nearby(0, 0, -1))
    else
        srand(seed_normal()) 
    end
    local oretype = ore[randi(1,#ore)]
    if oretype == "crystal" then
        local randsize = randi(2,4)
        local crystals = {"block_Green_Crystal_Walls_big","block_Indigo_Crystal_Walls_big","block_Yellow_Crystal_Walls_big"}
        if (randf() < 1/16) then
        crystals[#crystals+1] = "block_Purple_Crystal_Walls_big"
        end
        local crystalstype = crystals[randi(1,#crystals)]
        if get_input_adj_bt(0, 0, -1) ~= "block_Crystal_Spines" then
            for x = 0,15 do
            for y = 0,15 do
            for z = 0,15 do
                local offset = 16-0.5
                if ((x*randsize-offset))^2+((y*randsize-offset))^2-(z-11.5)^2 < 0 then
                    if (z-11.5)*-1 > 0 then
                        set_pos(x,y,z+2,"block_Crystal_Spines")
                        set_pos(x,y,z+1,"block_Crystal_Spines")
                        set_pos(x,y,z,crystalstype)
                    end
                end
            end
            end
            end
            set_pos(8-randsize,8-randsize,1,"block_crystal_inside")
            add_bent(8-randsize,8-randsize,1,"bent_base_ring_green")
        else
            set_pos(7,7,7,"block_E1_2_rhombus")
        end
    end
    if oretype == "pillar" then
        local crystals = {"Citrine","Quartz","Ruby"}
        local crystalstype = crystals[randi(1,#crystals)]
        local crystalstip = "block_"..crystalstype.."_Pillar_tip"
        crystalstype = "block_"..crystalstype.."_Pillar"

        local randsize = randi(3,5)
        local offset = 8-0.5
        if get_input_adj_bt(0, 0, -1) == "block_Crystal_Spines" then
            for x = 0,15 do
            for y = 0,15 do
            for z = 0,15 do
                if (x-offset)^2+(y-offset)^2-(0.5*(z-(randsize*2)))^2 < 0 then
                    if (0.5*(z-(randsize*2)))*-1 > 0 then
                        set_pos(x,y,z+1,crystalstip)
                        set_pos(x,y,z,crystalstype)
                    end
                end
            end
            end
            end
            if bt_get_is_solid_physically(get_input_adj_bt(0, 0, -2)) == false then
                create_rect("block_Crystal_Spines",0,0,0,15,15,15)
                set_pos(7,7,7,"block_E1_2_rhombus")
            end
        else
            for x = 0,15 do
            for y = 0,15 do
            for z = 0,15 do
                if (x-offset)^2+(y-offset)^2 < randsize^2 then
                    set_pos(x,y,z,crystalstype)
                    if bt_get_is_solid_physically(get_input_adj_bt(0, 0, 1)) == false then
                        set_pos(x,y,15,crystalstype)
                    end
                end
            end
            end
            end
        end
    end
    --set_pos(8-randsize,8-randsize,1,"debug")
    --air if below is air
    if bt_get_is_solid_physically(get_input_adj_bt(0, 0, -1)) == false then
        if get_input_adj_bt(0, 0, -1) ~= "block_Crystal_Spines" then
        create_rect("block_Crystal_Spines",0,0,0,15,15,15)
        set_pos(7,7,7,"block_E1_2_rhombus")
        end
    end
    --monsters
    if(randf() < 0.125) then
         local x = randi(0,15)
         local y = randi(0,15)
         local z = randi(0,15)
            if not bt_get_is_solid_physically(get_pos(x,y,z)) then
                add_ment(x,y,z,"ment_monster_mad_goblin")
            end
    end
    omniverse.rings()
end