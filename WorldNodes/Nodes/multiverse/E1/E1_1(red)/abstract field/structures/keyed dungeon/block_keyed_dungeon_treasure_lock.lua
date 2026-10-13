function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__main()
    set_default_block("XAR_MOSSY_AIR_ASCEND_RECURSIVE")
    create_rect("XAR_DOOR_GREEN",0,7,0,15,7,15)
    create_rect("XAR_DOOR_GREEN_GLASS",5,7,5,10,7,10)
    add_bent_s(7,10,8,"bent_open_green_door","Dungeon Key")
end