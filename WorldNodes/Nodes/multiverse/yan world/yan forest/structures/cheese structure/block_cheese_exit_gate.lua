function p.__get_is_solid() return true end
function p.__get_tex() return "block_door_green" end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")
    create_rect("XAR_DOOR_GREEN",0,0,13,15,15,13)
    add_bent_s(7,7,15,"bent_open_green_door","king_rat")
end