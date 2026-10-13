function p.__get_is_solid() return true end
function p.__get_tex() return "block_bright" end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")
    std.create_edges("XAR_SOLID_BORING")
    --set_gen_root_parent("block_outside_debug")
    set_gen_root_parent("XAR_NEG_LEVEL_1_TRUNK")
    base_blue_tele.set_blue_type_down(7,7,7);
    --omniverse.create_edges("XAR_SOLID_BORING",1,1,1,14,14,14)
    add_bent(7,7,5,"bent_base_ring_blue")
    add_bent_s(7,7,9,"bent_base_txt","It seems like u went above and ^xffffff beyond^!.\n\n Id hate to break it to you but there is not much to do out here anyways.")
    add_bent_s(7,7,3,"bent_base_waypoint","Beyond")
    set_pos(0,15,14,"XAR_ROOT_SECRET")
    --create_rect("XAR_EMPTY_BORING",0,14,14,1,15,15)
    set_pos(0,15,15,"XAR_HEART_HOUSE_AREA")
    set_pos(7,7,7,"block_omniverse")
    --if get_level() == 0 then
        --set_gen_root_child(7,7,7,"block_omniverse")
    --else
    --    set_gen_root_child(7,7,7,"block_true_root")
    --end
    add_ment_f(7.5,7.5,7.5,"ment_white_void_box")
end
