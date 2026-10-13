function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__main()
    set_default_block("block_abstract_field_air")
    if chunk_get_b("rotated?") then
        for z = 0,15 do
            for i = 0,15,2 do
                set_pos(15-i,i,z,"block_E1_1_walls")
                set_pos(14-i,i+1,z,"block_diagonal_spires")
                block_set_b(14-i, i+1, z, "rotated?", true)
            end
        end
    else
        for z = 0,15 do
            for i = 0,15,2 do
                set_pos(i,i,z,"block_E1_1_walls")
                set_pos(i+1,i+1,z,"block_diagonal_spires")
            end
        end
    end
    block_abstract_field_air.air()
    omniverse.rings()
    block_abstract_field.monsters()
end

function p.__type_init(id)
ia_block_new_var_b(id, "rotated?", false)
end