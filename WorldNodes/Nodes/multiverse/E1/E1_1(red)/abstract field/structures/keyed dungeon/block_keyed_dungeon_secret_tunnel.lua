function p.__get_is_solid() return true end
function p.__get_tex() return "block_dark_concrete_green_border" end

function p.__main()
    set_default_block("XAR_SOLID_BORING_DARK_CONCRETE_GREEN_BORDER")
    create_rect("XAR_SOLID_BORING_DARK_CONCRETE_BLUE_BORDER",0,8,6,15,11,9)
    create_rect("XAR_EMPTY_BORING",0,9,7,15,10,8)
    add_bent_s(8,9,7,"bent_open_green_door","E1_1_lock")
    omniverse.txtpeople(10,9,7,"Something tells me this lock's key is in dungeon on a more shiny, some sort of dark sphere on the other side...")
    --the key is in a black pearl
    create_rect("XAR_DOOR_GREEN",5,9,7,5,10,8)
end