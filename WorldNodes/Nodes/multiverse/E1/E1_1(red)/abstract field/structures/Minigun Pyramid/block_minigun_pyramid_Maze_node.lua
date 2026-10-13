function p.__get_is_solid() return true end
function p.__get_tex() return "block_concrete_green_diag" end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")
    std.create_shell("XAR_SOLID_BORING_DECO_1_GREEN_2")
    if chunk_get_b("X+") then
        create_rect("XAR_EMPTY_BORING",15,1,1,15,14,14)
    end
    if chunk_get_b("X-") then
        create_rect("XAR_EMPTY_BORING",0,1,1,0,14,14)
    end
    if chunk_get_b("Y+") then
        create_rect("XAR_EMPTY_BORING",1,15,1,14,15,14)
    end
    if chunk_get_b("Y-") then
        create_rect("XAR_EMPTY_BORING",1,0,1,14,0,14)
    end
    if chunk_get_b("Z+") then
        create_rect("XAR_EMPTY_BORING",1,1,15,14,14,15)
    end
    if chunk_get_b("Z-") then
        create_rect("XAR_EMPTY_BORING",1,1,0,14,14,0)
    end
    --enemies
    if (randf() > 0.5) then
        add_ment(7,7,7,"ment_monster_marine")
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