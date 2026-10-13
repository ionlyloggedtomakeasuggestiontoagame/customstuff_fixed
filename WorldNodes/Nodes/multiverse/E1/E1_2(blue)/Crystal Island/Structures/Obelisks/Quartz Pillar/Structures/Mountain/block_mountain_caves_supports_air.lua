function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__main()
    set_default_block("block_mountain_caves_supports_air")
    srand(seed_yz())
    if randf() > 0.9 then
        create_rect("XAR_SOLID_BORING_CONCRETE_BROWN_BORDER",0,6,0,15,9,0)
    end
    srand(seed_xz())
    if randf() > 0.9 then
        create_rect("XAR_SOLID_BORING_CONCRETE_BROWN_BORDER",6,0,0,9,15,0)
    end
    create_rect("block_mountain_caves_supports",6,6,0,6,6,15)
    srand(seed_normal())

    local x = randi(0,15)
    local y = randi(0,15)
    local z = randi(0,15)
    local radius = randi(1,3)
    local monster = {"ment_monster_nuclear_cyclotron","ment_monster_nuclear_ore_mining_location","ment_monster_nuclear_refinery","ment_monster_nuclear_silo","ment_monster_nuclear_silo_compromised","ment_monster_laboratory","ment_monster_science_core"}
    local monstertype = monster[randi(1,#monster)]
    if randf() < 1/48 then
        ment_start(x,y,z,monstertype)
            ment_set_f("__radius",radius)
        ment_end()
    end
    omniverse.rings()
end
