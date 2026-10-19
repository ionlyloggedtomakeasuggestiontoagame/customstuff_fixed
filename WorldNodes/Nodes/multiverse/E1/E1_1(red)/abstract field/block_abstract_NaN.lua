function p.__get_is_solid() return true end
function p.__get_tex() return "blocktex_default_not_set" end

function p.__main()
    set_default_block("block_abstract_field_air")
    
    fractals.sierpinski("block_abstract_NaN")

    for x,y,z in bps(0,0,0,15,15,15) do
        if (randf() < 1/64) and (get_pos(x,y,z) == "block_abstract_NaN") then
            local colors = {"block_diagonal_lattice","XAR_INFINITY_FLOWER_CHEESE_1","XAR_FANATIC_LATTICE"}
            local colortype = colors[randi(1,#colors)]
            set_pos(x,y,z,colortype)
        end
        if (randf() < 1/256) and (not bt_get_is_solid_physically(get_pos(x,y,z))) then
            add_bent(x,y,z,"bent_unknown_abstract")
        end
    end

        
    block_abstract_field_air.air()
    omniverse.rings()
    block_abstract_field.monsters()
end