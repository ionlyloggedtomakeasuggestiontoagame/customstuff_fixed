function p.__get_is_solid() return true end
function p.__get_tex() return "key_green" end

function p.__main()
    set_default_block("XAR_MOSSY_AIR_ASCEND_RECURSIVE")
    std.create_edges("XAR_SOLID_BORING_DARK_CONCRETE_GREEN_BORDER")
    add_bent(7,7,6,"bent_base_ring_pink_source")
    add_bent(7,7,10,"bent_sleep_hour")
    add_bent_s(7,7,8,"bent_key_green","Dungeon Key")
    add_bent_s(7,7,14,"bent_base_txt","This is a Key dungeon.\n\n In the outside, sometimes u can find either of these 2 blocks, the key inside the key block can unlock the lock in the lock block but it lasts only 40 seconds, unlock as many as u can.")
    omniverse.txtpeople(7,7,12,"Screw it. what if i just gave them the key and a bunch of treasure around, and u gotta get as much as possible as fast as possible!")
    bent_set_param_i(7, 7, 8, 40)

end