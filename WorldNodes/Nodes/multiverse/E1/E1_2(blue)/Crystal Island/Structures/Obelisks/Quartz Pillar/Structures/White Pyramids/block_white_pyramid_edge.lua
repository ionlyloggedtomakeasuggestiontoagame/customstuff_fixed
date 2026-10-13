function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")

    if chunk_get_b("-X") then
        create_rect("XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER",0,0,15,0,15,15)
    end
    if chunk_get_b("+X") then
        create_rect("XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER",15,0,15,15,15,15)
    end
    if chunk_get_b("-Y") then
        create_rect("XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER",0,0,15,15,0,15)
    end
    if chunk_get_b("+Y") then
        create_rect("XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER",0,15,15,15,15,15)
    end
end

function p.__type_init(id)
    ia_block_new_var_b(id, "-X", false)
    ia_block_new_var_b(id, "+X", false)
    ia_block_new_var_b(id, "-Y", false)
    ia_block_new_var_b(id, "+Y", false)
end