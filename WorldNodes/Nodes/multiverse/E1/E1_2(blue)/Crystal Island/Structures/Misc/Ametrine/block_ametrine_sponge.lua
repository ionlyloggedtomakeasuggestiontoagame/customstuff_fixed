function p.__get_is_solid() return true end
function p.__get_tex() return "block_deco1_shade1" end

function p.__main()
    set_default_block("block_E1_2_air")
    if randf() > 0.125 then
        fractals.sponge("block_E1_2_air","block_ametrine_sponge")
        omniverse.rings()
        for x,y,z in bps(0,0,0,15,15,15) do
            if (randf() > 0.75) then
                if get_pos(x,y,z) == "block_ametrine_sponge" then
                    local blocks = {"block_Citrine_Sponge","block_Quartz_Hall","block_Purple_Crystal_Walls_big"}
                    local randblock = blocks[randi(1,#blocks)]
                    set_pos(x,y,z,randblock)
                end
            end
        end
    else
        fractals.sierpinski(0,0,0,"block_ametrine_sponge")
    end
end