function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_infinity_green"
end

function p.__main()
    set_default_block("block_multiversal_air")
    std.create_edges("block_multiversal_structure")
    local universes = {"XAR"}
    local whichuniverse = universes[randi(1,#universes)]
    if whichuniverse == "XAR" then
        add_bent_s(7,8,9,"bent_base_txt","Message from Laniakea: \n\n^x00ffff The multiverse is a very unstable place with the XAR zones and their inner cores and iccc's causing most trouble, so we had to cage it up, every XAR related zone is caged, some bits end up escaping from time to time but luckly the rest of the outer caos turns it into a lesser problem.")
        set_pos(7,8,7, "block_XAR_containment")
        base_blue_tele.set_blue_type_down(7,8,7);
        add_bent(7,8,8, "bent_base_ring_green")
    end
end