function p.__get_is_solid() return true end
function p.__get_tex() return "block_high_voltage" end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")
    std.create_shell("XAR_HIGH_VOLTAGE_2")
    std.create_edges("XAR_HIGH_VOLTAGE")
    if chunk_get_b("X+") then
        create_rect("XAR_EMPTY_BORING",15,1,1,15,14,14)
    else
        add_env_rect(15,1,1,15,14,14,"env_rect_base_death")
    end
    if chunk_get_b("X-") then
        create_rect("XAR_EMPTY_BORING",0,1,1,0,14,14)
    else
        add_env_rect(0,1,1,0,14,14,"env_rect_base_death")
    end
    if chunk_get_b("Y+") then
        create_rect("XAR_EMPTY_BORING",1,15,1,14,15,14)
    else
        add_env_rect(1,15,1,14,15,14,"env_rect_base_death")
    end
    if chunk_get_b("Y-") then
        create_rect("XAR_EMPTY_BORING",1,0,1,14,0,14)
    else
        add_env_rect(1,0,1,14,0,14,"env_rect_base_death")
    end
    if chunk_get_b("Z+") then
        create_rect("XAR_EMPTY_BORING",1,1,15,14,14,15)
    else
        add_env_rect(1,1,15,14,14,15,"env_rect_base_death")
    end
    if chunk_get_b("Z-") then
        create_rect("XAR_EMPTY_BORING",1,1,0,14,14,0)
    else
        add_env_rect(1,1,0,14,14,0,"env_rect_base_death")
    end
    --enemies
    if (randf() > 0.5) then
        local monster = {"ment_monster_demon","ment_monster_goblin","ment_monster_vulcan","ment_monster_guardian_minor"}
        local monstertype = monster[randi(1,#monster)]
        add_ment(7,7,7,monstertype)
    end
end

function p.__type_init(id)
    ia_block_new_var_b(id, "X+", false)
    ia_block_new_var_b(id, "X-", false)
    ia_block_new_var_b(id, "Y+", false)
    ia_block_new_var_b(id, "Y-", false)
    ia_block_new_var_b(id, "Z+", false)
    ia_block_new_var_b(id, "Z-", false)
end