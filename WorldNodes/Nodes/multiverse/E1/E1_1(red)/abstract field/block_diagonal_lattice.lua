function p.__get_is_solid() return true end
function p.__get_tex() return "emp" end

function p.__main()
    set_default_block("block_abstract_field_air")
    for i = 0,15 do
    create_rect("block_diagonal_spires",i,i,0,i,i,15)
    create_rect("block_diagonal_spires",15-i,i,0,15-i,i,15)
        for z = 0,15 do
            block_set_b(15-i, i, z, "rotated?", true)
        end
    end
    for i = 0,15 do
        set_pos(i,i,i,"block_diagonal_lattice_big")
        set_pos(15-i,i,i,"block_diagonal_lattice_big")
        set_pos(i,15-i,i,"block_diagonal_lattice_big")
        set_pos(15-i,15-i,i,"block_diagonal_lattice_big")
    end
    for x,y,z in bps(0,0,0,15,15,15) do
        if (randf() < 0.125) and (get_pos(x,y,z) == "block_diagonal_lattice_big") then
            if randf() > 0.5 then
                set_pos(x,y,z,"XAR_FANATIC_LATTICE_BIG")
            else
                set_pos(x,y,z,"block_abstract_field")    
            end
        end
    end
    block_abstract_field_air.air()
    omniverse.rings()
    block_abstract_field.monsters()
end