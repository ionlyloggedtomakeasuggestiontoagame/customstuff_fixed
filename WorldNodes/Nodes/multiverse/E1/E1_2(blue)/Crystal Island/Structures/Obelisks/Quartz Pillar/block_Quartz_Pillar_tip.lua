function p.__get_is_solid() return true end
function p.__get_tex() return "block_deco1" end

function p.__main()
    set_default_block("block_E1_2_air")
    block_Citrine_Pillar_tip.crystal_pillar_tip("block_Quartz_Pillar_tip","block_Quartz_Pillar")
    srand(seed_normal())
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