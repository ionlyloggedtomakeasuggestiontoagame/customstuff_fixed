function p.__get_is_solid() return true end
function p.__get_tex() return "block_deco1" end

function p.__main()
    set_default_block("block_Quartz_Hall")
    for x,y,z in bps(0,0,0,15,15,15) do
        block_set_b(x, y, z, "gravitybarrier", false)
    end
end