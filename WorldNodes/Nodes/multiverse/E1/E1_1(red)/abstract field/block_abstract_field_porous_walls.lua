function p.__get_is_solid() return true end

function p.__get_tex() return "Nuke2Explosion" end

-- TEST!!!!! live share test specifically

function p.__main()
    set_default_block("block_abstract_field_air")
    std.create_edges("block_abstract_field_porous_walls")
    create_rect("block_abstract_field_porous_walls",0,0,0,15,0,15)
    create_rect("block_abstract_field_air",1,15,0,14,15,15)
    create_rect("block_abstract_field_air",0,15,1,15,15,14)
    if bt_get_is_solid_physically(get_input_adj_bt(0,1,0)) == false then
        create_rect("block_abstract_field_air",0,1,0,15,15,15)
    end

    for i = 1,randi(10,30) do
        local x = randi(1,14)
        local z = randi(1,14)
        if randf() < 1/16 then
            local structures = {"block_ying_maze_ex","Key dungeon","block_code_maze_ex","block_void_growth_dungeon","block_duo_maze"}
            local structuretype = structures[randi(1,#structures)]
            if structuretype == "Key dungeon" then
                if randf() < 1/16 then
                    structuretype = "block_keyed_dungeon_key" 
                else
                    structuretype = "block_keyed_dungeon_lock"
                end
            end
            set_pos(x,0,z,structuretype)
        else
            set_pos(x,0,z,"block_abstract_field_air")
        end
    end
    block_abstract_field_air.air()
    omniverse.rings()
    block_abstract_field.monsters()
end
