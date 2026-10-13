function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_E1_green"
end

function p.__main()
    set_default_block("block_E1_mucube_small")
    omniverse.wallsauto(0,"block_omniverse_yan_forest_air","block_E1_boring")
end
