function p.__get_is_solid() return true end
function p.__get_tex() return "block_concrete_white_border" end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")

    if chunk_get_b("-X") then
        for i = 0,15 do
            create_rect("XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER",i,0,i-1,i,15,i-1)
        end
        for j = 0,15 do
            for i = 0,15 do
                create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",i,0,i+j,i,15,i+j)
            end
        end
    end
    if chunk_get_b("+X") then
        for i = 0,15 do
            create_rect("XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER",15-i,0,i-1,15-i,15,i-1)
        end
        for j = 0,15 do
            for i = 0,15 do
                create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",15-i,0,i+j,15-i,15,i+j)
            end
        end
    end
    if chunk_get_b("-Y") then
        for i = 0,15 do
            create_rect("XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER",0,i,i-1,15,i,15-1)
        end
        for j = 0,15 do
            for i = 0,15 do
                create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",0,i,i+j,15,i,i+j)
            end
        end
    end
    if chunk_get_b("+Y") then
        for i = 0,15 do
            create_rect("XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER",0,15-i,i-1,15,15-i,15-1)
        end
        for j = 0,15 do
            for i = 0,15 do
                create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",0,15-i,i+j,15,15-i,i+j)
            end
        end
    end
    --edges
    if (chunk_get_b("-X") and chunk_get_b("-Y")) or (chunk_get_b("-X") and chunk_get_b("+Y")) then
        create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",0,0,0,0,15,15)
    end
    if (chunk_get_b("+X") and chunk_get_b("-Y")) or (chunk_get_b("+X") and chunk_get_b("+Y")) then
        create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",15,0,0,15,15,15)
    end
end

function p.__type_init(id)
    ia_block_new_var_b(id, "-X", false)
    ia_block_new_var_b(id, "+X", false)
    ia_block_new_var_b(id, "-Y", false)
    ia_block_new_var_b(id, "+Y", false)
end