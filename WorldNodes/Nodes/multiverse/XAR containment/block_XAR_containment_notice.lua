function p.__get_is_solid()
    return false
end

function p.__get_tex()
    return ""
end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")
    add_bent_s(7,5,7,"bent_base_waypoint","XAR Containment Passage")
    add_bent_s(7,7,7,"bent_base_txt","^xffffffNotice to anyone entering or exiting the zone:\n\n^xff4444The exit of this zone requires a Key to the universe, a Dan house key and a Laser Genesis planet key.\n\n^x44ff44The entrance of this zone requires only a Key to the universe.\n\n^xffffffThere will also be a Key Stealer Box near the ends of each passage.\n\n^x0000ffHeh, the colors of the sign look jolly :3")
    add_bent_s(7,9,7,"bent_base_txt","^xffffffNotice 2:\n\nPlease do not vandalize the signs. Thank you.")
    add_bent(0,7,7,"bent_vault_door_image")
    add_bent(0,0,7,"bent_warning1_image") 
end
