function p.__get_is_solid() return true end
function p.__get_tex() return "block_jericho" end

function p.__main()
    create_xar_chunk("XAR_WILLISTON_SECRET_CAVE")
    create_rect("XAR_JERICHO_CAVES_PILLAR",7,7,0,8,8,15)
end
