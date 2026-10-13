function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_stopper2"
end

function p.__main()
    set_default_block("XAR_APPLE_TREE_AIR_2")
    srand(seed_normal())
    create_rect("XAR_MYLANTIS_CAVES_LIB_ASCEND_WALL_Y_NEG",0,0,0,15,0,15)
    create_rect("XAR_EMPTY_BORING",0,1,0,15,0,15)
    create_rect("XAR_STOPPER",0,2,0,15,2,15)
    add_bent(7,1,7,"bent_base_ring_green")
    ment_start(7,7,7,"ment_monster_clockwork_watchman")
    ment_set_f("shoot_period",1)
    ment_end()
end
