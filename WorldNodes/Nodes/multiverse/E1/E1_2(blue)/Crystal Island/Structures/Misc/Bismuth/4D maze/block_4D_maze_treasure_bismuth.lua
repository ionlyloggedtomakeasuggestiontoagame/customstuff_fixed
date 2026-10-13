function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__main()
    set_default_block("XAR_EMPTY_BORING") 
    add_bent(7,7,11,"bent_base_save")
    add_bent(7,7,9,"bent_gold_once_1000")
    add_bent(7,7,7,"bent_base_waypoint_out_only")
    omniverse.txtpeople(7,7,5,"Oh the fourth dimension, many say its time, many say its space, some say its something else, this maze proves to me that u can def do horribly tough challenges in it tho")
    add_bent(7,7,3,"bent_base_ring_pink_source")
    add_bent(7,0,10,"bent_sleep_hour")
    add_bent_s(7,0,8,"bent_key_green","key_of_rainbowness")
    bent_set_param_i(7, 0, 8, 120)
end
