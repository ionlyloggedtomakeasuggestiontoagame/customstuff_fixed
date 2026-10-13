function p.__get_is_solid()
    return false
end

function p.__get_tex()
    return ""
end

function p.__main()
    local msg = "This is the parkour flower, i hope u like the special thing that goes on inside >:)"
    omniverse.create_yan_flower("block_parkour_flower_chamber","XAR_SOLID_BORING_CONCRETE_PURPLE_BORDER",msg)
    add_bent_s(12,12,7,"bent_base_txt", "^xffff00 Message from Mad Goblin: \n\nThis is one of the plants i will never wanna enter, here on the outside i feel fine but when i go inside, i suddenly turn into what i can only describe as, idk, i just get these thing you all seem to call legs? whatever is the ambient yall usually live, i def hated it, no flying around.")
end
