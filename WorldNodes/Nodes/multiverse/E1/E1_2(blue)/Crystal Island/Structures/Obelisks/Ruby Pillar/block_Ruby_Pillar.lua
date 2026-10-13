function p.__get_is_solid() return true end
function p.__get_tex() return "block_deco1_red1" end

function p.__main()
    set_default_block("block_E1_2_air")
    --placed before pillar
    if get_input_adj_bt(0, 1, 0) == "block_Ruby_Pillar" then
        create_rect("block_Ruby_Vines",7,8,6,8,15,6)
    end
    if get_input_adj_bt(0, -1, 0) == "block_Ruby_Pillar" then
        create_rect("block_Ruby_Vines",7,0,6,8,7,6)
    end
    if get_input_adj_bt(1, 0, 0) == "block_Ruby_Pillar" then
        create_rect("block_Ruby_Vines",8,7,6,15,8,6)
    end
    if get_input_adj_bt(-1, 0, 0) == "block_Ruby_Pillar" then
        create_rect("block_Ruby_Vines",0,7,6,7,8,6)
    end
    --if (get_input_adj_bt(-1, -1, 0) == "block_Ruby_Pillar") then
        for i = 0,7 do
            set_pos(i,i,13,"block_Ruby_Vines")
            set_pos(i,i+1,13,"block_Ruby_Vines")
            set_pos(i+1,i,13,"block_Ruby_Vines")
        end
    --end
    --if (get_input_adj_bt(1, 1, 0) == "block_Ruby_Pillar") then
        for i = 8,15 do
            set_pos(i,i,13,"block_Ruby_Vines")
            set_pos(i,i+1,13,"block_Ruby_Vines")
            set_pos(i+1,i,13,"block_Ruby_Vines")
        end
    --end
    --if (get_input_adj_bt(1, -1, 0) == "block_Ruby_Pillar") then
        for i = 0,7 do
            set_pos(15-i,i,13,"block_Ruby_Vines")
            set_pos(15-i,i+1,13,"block_Ruby_Vines")
            set_pos(15-i-1,i,13,"block_Ruby_Vines")
        end
    --end
    --if (get_input_adj_bt(-1, 1, 0) == "block_Ruby_Pillar") then
        for i = 0,7 do
            set_pos(i,15-i,13,"block_Ruby_Vines")
            set_pos(i,15-i-1,13,"block_Ruby_Vines")
            set_pos(i+1,15-i,13,"block_Ruby_Vines")
        end
    --end
    --pillar
    block_Citrine_Pillar.crystal_pillar("block_Ruby_Pillar_tip","block_Ruby_Pillar")
    --placed after pillar
    create_rect("block_Ruby_Pillar",0,0,0,0,0,15)
    create_rect("block_Ruby_Pillar",0,15,0,0,15,15)
    create_rect("block_Ruby_Pillar",15,0,0,15,0,15)
    create_rect("block_Ruby_Pillar",15,15,0,15,15,15)

    if get_input_adj_bt(0, 1, 0) == "block_Ruby_Pillar" then
        create_rect("block_Ruby_Sponge",7,8,7,8,15,7)
    end
    if get_input_adj_bt(0, -1, 0) == "block_Ruby_Pillar" then
        create_rect("block_Ruby_Sponge",7,0,7,8,7,7)
    end
    if get_input_adj_bt(1, 0, 0) == "block_Ruby_Pillar" then
        create_rect("block_Ruby_Sponge",8,7,7,15,8,7)
    end
    if get_input_adj_bt(-1, 0, 0) == "block_Ruby_Pillar" then
        create_rect("block_Ruby_Sponge",0,7,7,7,8,7)
    end

    --if (get_input_adj_bt(-1, -1, 0) == "block_Ruby_Pillar") then
        for i = 0,7 do
            set_pos(i,i,14,"block_Ruby_Sponge")
            set_pos(i,i+1,14,"block_Ruby_Sponge")
            set_pos(i+1,i,14,"block_Ruby_Sponge")
        end
    --end
    --if (get_input_adj_bt(1, 1, 0) == "block_Ruby_Pillar") then
        for i = 8,15 do
            set_pos(i,i,14,"block_Ruby_Sponge")
            set_pos(i,i+1,14,"block_Ruby_Sponge")
            set_pos(i+1,i,14,"block_Ruby_Sponge")
        end
    --end
    --if (get_input_adj_bt(1, -1, 0) == "block_Ruby_Pillar") then
        for i = 0,7 do
            set_pos(15-i,i,14,"block_Ruby_Sponge")
            set_pos(15-i,i+1,14,"block_Ruby_Sponge")
            set_pos(15-i-1,i,14,"block_Ruby_Sponge")
        end
    --end
    --if (get_input_adj_bt(-1, 1, 0) == "block_Ruby_Pillar") then
        for i = 0,7 do
            set_pos(i,15-i,14,"block_Ruby_Sponge")
            set_pos(i,15-i-1,14,"block_Ruby_Sponge")
            set_pos(i+1,15-i,14,"block_Ruby_Sponge")
        end
    --end

    if get_input_adj_bt(0, 0, -1) == "block_E1_2_air" then
    create_rect("block_Ruby_Pillar",7,7,9,8,8,15)
    create_rect("block_Ruby_Sponge",7,7,7,8,8,8)
    end

    srand(seed_normal())

    --monsters
    if(randf() < 0.125) then
        local x = randi(0,15)
        local y = randi(0,15)
        local z = randi(0,15)
            if not bt_get_is_solid_physically(get_pos(x,y,z)) then
                if randf() > 0.5 then
                    add_ment(x,y,z,"ment_monster_demon")
                else
                    add_ment(x,y,z,"ment_monster_overlord")
                end
            end
    end

    --rings
    omniverse.rings()
end