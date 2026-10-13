function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__main()
    set_default_block("XAR_MOSSY_AIR_ASCEND_RECURSIVE")
    add_bent(0,5,7,"bent_green_key_image")
    add_bent(0,9,7,"bent_green_lock_image")
    add_bent_s(7,7,7,"bent_base_txt","In the outside, sometimes u can find either of these 2 blocks, the key inside the key block can unlock the lock in the lock block but it lasts only 40 seconds, unlock as many as u can.")
end