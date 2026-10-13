function p.__get_is_solid() return true end
function p.__get_tex() return "block_error" end

function p.__main()
    omniverse.sponge("block_abstract_field_air","block_abstract_glitch")
    block_abstract_field_air.air()
    omniverse.rings()
    block_abstract_field.monsters()
    for x,y,z in bps(0,0,0,15,15,15) do
        if (randf() > 0.75) then
            if get_pos(x,y,z) == "block_abstract_glitch" then
                local blocks = {"XAR_TAU_CAVE_LAYER_3_CAVE","block_abstract_amalgamation","XAR_FANATIC_LATTICE","XAR_SPONGE_PURE","block_omniverse_yan_world_shell","XAR_YW_SHELL_ROOM"}
                local randblock = blocks[randi(1,#blocks)]
                set_pos(x,y,z,randblock)
            end
        end
    end
end