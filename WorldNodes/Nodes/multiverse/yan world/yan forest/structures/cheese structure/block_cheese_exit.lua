function p.__get_is_solid() return true end
function p.__get_tex() return "block_door_green" end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")
    create_rect("block_cheese_exit_gate",0,0,15,15,15,15)
    create_rect("XAR_BRISTOL_ONE_WAY_Z_NEG",0,0,0,15,15,0)
end