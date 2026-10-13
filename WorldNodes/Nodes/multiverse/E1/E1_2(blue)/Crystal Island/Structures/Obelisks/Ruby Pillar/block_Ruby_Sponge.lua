function p.__get_is_solid() return true end
function p.__get_tex() return "block_deco1_red1" end

function p.__main()
    set_default_block("block_E1_2_air")
    srand(seed_normal())
    omniverse.sponge("block_E1_2_air","block_Ruby_Sponge")
    create_rect("block_E1_2_air",4,4,4, 11,11,11)
    if get_input_adj_bt(0, 0, 1) == "block_Ruby_Pillar" then
        create_rect("block_Ruby_Sponge",0,0,15,15,15,15)
    end
    if (get_input_adj_bt(0, 0, -1) == "block_Ruby_Pillar") or (get_input_adj_bt(0, 0, -1) == "block_Ruby_Vines") then
        create_rect("block_Ruby_Sponge",0,0,0,15,15,0)
    end
    create_rect("block_Ruby_Pillar",7,15,4, 8,15,11)
    create_rect("block_Ruby_Pillar",7,0,4, 8,0,11)
    create_rect("block_Ruby_Pillar",15,7,4, 15,8,11)
    create_rect("block_Ruby_Pillar",0,7,4, 0,8,11)
    --monsters
    if(randf() < 0.125) then
         local x = randi(0,15)
         local y = randi(0,15)
         local z = randi(0,15)
            if not bt_get_is_solid_physically(get_pos(x,y,z)) then
                add_ment(x,y,z,"ment_monster_overseer")
            end
    end

    --rings
    omniverse.rings()
end
