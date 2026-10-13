function p.__get_is_solid() return true end
function p.__get_tex() return "block_deco1_orange1" end

function p.__main()
    set_default_block("block_E1_2_air")
    if get_input_adj_bt(0, 1, 0) == "block_Citrine_Pillar" then
        create_rect("block_Citrine_City",7,8,9,8,15,9)
    end
    if get_input_adj_bt(0, -1, 0) == "block_Citrine_Pillar" then
        create_rect("block_Citrine_City",7,0,9,8,7,9)
    end
    if get_input_adj_bt(1, 0, 0) == "block_Citrine_Pillar" then
        create_rect("block_Citrine_City",8,7,9,15,8,9)
    end
    if get_input_adj_bt(-1, 0, 0) == "block_Citrine_Pillar" then
        create_rect("block_Citrine_City",0,7,9,7,8,9)
    end
    if get_input_adj_bt(0, 0, -1) == "block_Citrine_Sponge" then
        create_rect("block_Citrine_City",0,0,0,15,15,0)
    end
    block_Citrine_Pillar.crystal_pillar("block_Citrine_Pillar_tip","block_Citrine_Pillar")
    if get_input_adj_bt(0, 0, -1) == "block_E1_2_air" then
    create_rect("block_Citrine_Pillar",7,7,9,8,8,15)
    create_rect("block_Citrine_Sponge",7,7,7,8,8,8)
    end
    srand(seed_normal())
    if get_input_adj_bt(0, 1, 0) == "block_Citrine_Pillar" then
        create_rect("block_Citrine_Sponge",7,8,7,8,15,8)
    end
    if get_input_adj_bt(0, -1, 0) == "block_Citrine_Pillar" then
        create_rect("block_Citrine_Sponge",7,0,7,8,7,8)
    end
    if get_input_adj_bt(1, 0, 0) == "block_Citrine_Pillar" then
        create_rect("block_Citrine_Sponge",8,7,7,15,8,8)
    end
    if get_input_adj_bt(-1, 0, 0) == "block_Citrine_Pillar" then
        create_rect("block_Citrine_Sponge",0,7,7,7,8,8)
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

    --rings
    if(randf() < 0.25) then
         local x = randi(0,15)
         local y = randi(0,15)
         local z = randi(0,15)
         if not bt_get_is_solid_physically(get_pos(x,y,z)) then
            if(randf() > 0.3) then
                add_bent(x,y,z,"bent_base_ring_green")
            else
                add_bent(x,y,z,"bent_base_ring_red")
            end
        end
    end
end

function p.crystal_pillar(tip,pillar)
    srand(seed_xy())
    local randsize = randi(3,5)
    local offset = 8-.5
    if get_input_adj_bt(0, 0, -1) == "block_E1_2_air" then
        for x = 0,15 do
        for y = 0,15 do
        for z = 0,15 do
                if (x-offset)^2+(y-offset)^2+(z-15.5)^2 < randsize^2 then
                set_pos(x,y,z+1,tip)
                set_pos(x,y,z,pillar)
            end
        end
        end
        end
    else
        for x = 0,15 do
        for y = 0,15 do
        for z = 0,15 do
            if (x-offset)^2+(y-offset)^2 < randsize^2 then
                set_pos(x,y,z,pillar)
            end
        end
        end
        end
    end
end