function p.__get_is_solid() return true end
function p.__get_tex() return "block_cheese" end

function p.__main()
    set_default_block("block_cheese_small_1")
    set_pos(7,7,15,"block_cheese_entrance")
    create_rect("block_omniverse_yan_forest_air",1,1,1,14,14,14)
    create_rect("XAR_SOLID_BORING_CONCRETE_RED_BORDER",7,7,9,9,9,9)
    create_rect("block_E1_unboring_mucube",7,7,8,9,9,8)
    create_rect("XAR_SOLID_BORING_CONCRETE_BLUE_BORDER",7,7,7,9,9,7)
    add_bent(8,8,10,"bent_base_ring_green")
    set_pos(8,8,9,"block_E1_1_entrance")
    set_pos(8,8,8,"block_E1_mucube")
    set_pos(8,8,7,"block_E1_2_entrance")
    add_bent(8,8,6,"bent_base_ring_green")
    set_pos(10,6,6,"block_cheese_inner_treasure")
    add_bent(10,6,7,"bent_base_ring_pink_dest")
end
