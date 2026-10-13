function p.__get_is_solid() return true end
function p.__get_tex() return "block_deco1" end

function p.__main()
    set_default_block("block_E1_2_air")
    block_Citrine_Pillar.crystal_pillar("block_Quartz_Pillar_tip","block_Quartz_Pillar")
    if get_input_adj_bt(0, 0, -1) == "block_E1_2_air" then
    create_rect("block_Quartz_Pillar",7,7,7,8,8,15)
    end
    srand(seed_normal())
    if (get_input_adj_bt(-1, -1, 0) == "block_Quartz_Pillar") then
        for i = 0,7 do
            set_pos(i,i,7,"block_Quartz_Hall")
            set_pos(i,i+1,7,"block_Quartz_Hall")
            set_pos(i+1,i,7,"block_Quartz_Hall")
        end
    end
    if (get_input_adj_bt(1, 1, 0) == "block_Quartz_Pillar") then
        for i = 8,15 do
            set_pos(i,i,7,"block_Quartz_Hall")
            set_pos(i,i+1,7,"block_Quartz_Hall")
            set_pos(i+1,i,7,"block_Quartz_Hall")
        end
    end
    if (get_input_adj_bt(1, -1, 0) == "block_Quartz_Pillar") then
        for i = 0,7 do
            set_pos(15-i,i,7,"block_Quartz_Hall")
            set_pos(15-i,i+1,7,"block_Quartz_Hall")
            set_pos(15-i-1,i,7,"block_Quartz_Hall")
        end
    end
    if (get_input_adj_bt(-1, 1, 0) == "block_Quartz_Pillar") then
        for i = 0,7 do
            set_pos(i,15-i,7,"block_Quartz_Hall")
            set_pos(i,15-i-1,7,"block_Quartz_Hall")
            set_pos(i+1,15-i,7,"block_Quartz_Hall")
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