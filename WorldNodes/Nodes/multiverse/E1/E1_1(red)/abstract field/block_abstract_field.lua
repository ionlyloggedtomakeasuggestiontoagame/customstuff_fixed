function p.__get_is_solid() return true end
function p.__get_tex() return "ice" end

function p.__main()
    set_default_block("block_abstract_field_air")
    std.create_edges("block_abstract_field")
    for x,y,z in bps(0,0,0,15,15,15) do
        if randf() < 0.125 then
            if get_pos(x,y,z) == "block_abstract_field" then
                set_pos(x,y,z,"block_diagonal_lattice_big")
            end
        end
    end

    block_abstract_field_air.air()
    omniverse.rings()
end

function p.monsters()
    if(randf() < 1/64) then
        local x = randi(0,15)
        local y = randi(0,15)
        local z = randi(0,15)
        if not bt_get_is_solid_physically(get_pos(x,y,z)) then
            local monster = {"ment_monster_twisted_fanatic","ment_monster_fanatic","ment_monster_abomination_blue","ment_monster_abomination_antiblue","ment_monster_blue_abstract_concept","ment_monster_green_abstract_concept","ment_monster_orange_abstract_concept","ment_monster_twisted_rat"}
            local monstertype = monster[randi(1,#monster)]
            ment_start(x,y,z,monstertype)
            ment_set_f("__radius",randi(1,2))
            ment_end()
        end
    end
end