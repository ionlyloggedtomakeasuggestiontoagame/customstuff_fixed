function p.__get_is_solid() return true end
function p.__get_tex() return "block_dark_green_border" end

function p.__main()
    set_default_block("block_Amalgam_green")
    block_abstract_amalgamation.amalgamation()
    block_Amalgam_red.holes()
end