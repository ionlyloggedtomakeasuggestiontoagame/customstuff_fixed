function p.__get_is_solid() return true end
function p.__get_tex()return "block_concrete_red_border" end

function p.__main()
    set_default_block("block_Amalgam_red")
    block_abstract_amalgamation.amalgamation()
    block_Amalgam_red.holes()
end

function p.holes()
    create_rect("block_abstract_field_air", 0,7,7, 15,8,8)
    create_rect("block_abstract_field_air", 7,0,7, 8,15,8)
    create_rect("block_abstract_field_air", 7,7,0, 8,8,15)
end