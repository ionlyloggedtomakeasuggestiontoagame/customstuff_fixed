function p.__get_is_solid() return true end

function p.__get_tex() return "block_dark_concrete_yellow_border" end

function p.__main()
    set_default_block("block_multiversal_air")
    for dgonal = 0,15 do
        set_pos(dgonal,dgonal,0,"block_multiversal_structure")
        set_pos(dgonal,0,dgonal,"block_multiversal_structure")
        set_pos(0,dgonal,dgonal,"block_multiversal_structure")
        set_pos(dgonal,15-dgonal,15,"block_multiversal_structure")
        set_pos(dgonal,15,15-dgonal,"block_multiversal_structure")
        set_pos(15,dgonal,15-dgonal,"block_multiversal_structure")
        set_pos(dgonal,dgonal,15,"block_multiversal_structure")
        set_pos(dgonal,15,dgonal,"block_multiversal_structure")
        set_pos(15,dgonal,dgonal,"block_multiversal_structure")
        set_pos(dgonal,15-dgonal,0,"block_multiversal_structure")
        set_pos(dgonal,0,15-dgonal,"block_multiversal_structure")
        set_pos(0,dgonal,15-dgonal,"block_multiversal_structure")
    end

    for dgonal = 0,15 do
        set_pos(dgonal,dgonal,dgonal,"block_diagonals")
        set_pos(15-dgonal,dgonal,dgonal,"block_diagonals")
        set_pos(15-dgonal,15-dgonal,dgonal,"block_diagonals")
        set_pos(15-dgonal,dgonal,15-dgonal,"block_diagonals")
    end
    if (randf() > 0.75) then
        local structures = {"block_omniverse_shell","block_omniverse_yan_world_shell"}
        set_pos(randi(0,15),randi(0,15),randi(0,15), structures[randi(1,#structures)])
    end

    if(randf() < 0.25) then
        local x = randi(0,15)
        local y = randi(0,15)
        local z = randi(0,15)
        if(randf() > 0.3) then
            add_bent(x,y,z,"bent_base_ring_green")
        else
            add_bent(x,y,z,"bent_base_ring_red")
        end
    end
end
