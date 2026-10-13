function p.__get_is_solid()
    return false
end

function p.__get_tex()
    return ""
end

function p.__main()
    local msg = "This is the sky flower, the fluffy clouds will help you navigate the inside."
    omniverse.create_yan_flower("block_sky_flower_chamber","XAR_SOLID_BORING_CONCRETE_PURPLE_BORDER",msg)
end
