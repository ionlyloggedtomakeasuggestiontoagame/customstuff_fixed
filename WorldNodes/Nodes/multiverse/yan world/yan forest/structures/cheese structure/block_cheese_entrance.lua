function p.__get_is_solid() return true end
function p.__get_tex() return "block_concrete_yellow_border" end

function p.__main()
    create_xar_chunk("XAR_SOLID_BORING_CONCRETE_YELLOW_BORDER")
    create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",6,6,0,9,9,15)
    create_rect("XAR_EMPTY_BORING",1,1,1,14,14,14)
    create_rect("XAR_EMPTY_BORING",7,7,0,8,8,15)
    add_bent_s(7,7,7,"bent_base_txt","This is the fast entrance of the cheese, the usual way is to shrink at the walls until u can go through them but u can instead go here but having to fight a king rat, u will also get extra treasure")
    add_bent(8,8,7,"bent_base_save")
    for i = 6,9 do
        add_bent(1,4,i,"bent_ammo_gun_7_large_once")
        add_bent(1,5,i,"bent_ammo_gun_7_large_once")
        add_bent(1,7,i,"bent_ammo_gun_8_once")
        add_bent(1,8,i,"bent_ammo_gun_8_once")
        add_bent(1,10,i,"bent_ammo_gun_9_once")
        add_bent(1,11,i,"bent_ammo_gun_9_once")
    end
    --boss room
    add_bent(7,7,4,"bent_base_ring_green")
    create_rect("XAR_GLASS",6,6,1,9,9,3)
    omniverse.create_edges("XAR_SOLID_BORING_CONCRETE_YELLOW_BORDER",6,6,0,9,9,3)
    omniverse.create_edges("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",6,6,0,9,9,0)
    create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",7,7,3,8,8,3)
    set_pos(7,7,3,"block_cheese_boss_entrance")
    create_rect("XAR_EMPTY_BORING",7,7,1,8,8,2)
    set_pos(7,7,2,"block_cheese_king_rat")
    create_rect("block_cheese_exit",7,7,0,8,8,0)
    set_pos(7,7,0,"block_cheese_exit_treasure")

end