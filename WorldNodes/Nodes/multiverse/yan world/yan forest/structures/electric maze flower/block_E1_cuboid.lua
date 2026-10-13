function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__main()
    set_default_block("block_omniverse_yan_forest_air")
    create_rect("XAR_SOLID_BORING_CONCRETE_RED_BORDER",6,6,9,9,9,9)
    create_rect("block_E1_unboring_mucube",6,6,8,9,9,8)
    create_rect("XAR_SOLID_BORING_CONCRETE_BLUE_BORDER",6,6,7,9,9,7)
    add_bent(8,8,10,"bent_base_ring_green")
    set_pos(8,8,9,"block_E1_1_entrance")
    set_pos(8,8,8,"block_E1_mucube")
    set_pos(8,8,7,"block_E1_2_entrance")
    add_bent(8,8,6,"bent_base_ring_green")
    add_bent(7,7,10,"bent_base_ring_pink_dest")
end
