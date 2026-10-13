function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__main()
    set_default_block("block_E1_2_air")
    if (randf() < 1/20) then
        set_pos(7,7,7,"block_Bismuth_Outside")
    else
        if (randf() < 1/5) then
            set_pos(7,7,7,"block_pearl_black")
        else
            set_pos(7,7,7,"block_pearl_white")
        end
    end
    add_bent(7,7,9,"bent_base_ring_green")
end