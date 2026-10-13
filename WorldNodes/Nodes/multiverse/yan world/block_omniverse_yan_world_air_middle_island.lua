function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__main()
    set_default_block("block_omniverse_yan_world_air")
    base_blue_tele.set_blue_type_terminal(7,7,7)
    create_xar_chunk("XAR_YW_0_BLUE")
    create_rect("XAR_SOLID_BORING_CONCRETE_PURPLE_BORDER",5,5,7,11,10,7)
    create_rect("block_omniverse_yan_forest",5,5,6,11,10,6)
    set_pos(7,7,5,"XAR_SMALL_WHITE_FLOWER")
    set_pos(7,7,4,"XAR_SOLID_BORING_DARK_GREEN_BORDER")
    set_pos(7,7,3,"XAR_SMALL_WHITE_FLOWER_YING_BONUS")
end
