function p.__get_is_solid() return true end
function p.__get_tex() return "block_cube_1" end

function p.__main()
    set_default_block("block_abstract_field_air")
    block_abstract_amalgamation.amalgamation()
end

function p.amalgamation()
    for x,y,z in bps(0,0,0,15,15,15) do
        if randf() < 1/4 then
            local colors = {"block_Amalgam_red"
                ,"block_Amalgam_orange"
                ,"block_Amalgam_yellow"
                ,"block_Amalgam_lime"
                ,"block_Amalgam_green"
                ,"block_Amalgam_blue"
                ,"block_Amalgam_purple"
                ,"block_abstract_amalgamation"
                ,"block_abstract_helix"
                ,"block_abstract_field"
                ,"block_abstract_field_porous_walls"
                ,"XAR_FANATIC_LATTICE"
                ,"XAR_CUBE1"
                ,"XAR_CUBE2"
                ,"block_diagonal_lattice"}
            local colortype = colors[randi(1,#colors)]
            set_pos(x,y,z,colortype)
        end
    end
    
    block_abstract_field_air.air()
    omniverse.rings()
    block_abstract_field.monsters()
end