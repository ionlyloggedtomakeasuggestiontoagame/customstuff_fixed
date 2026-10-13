function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__main()
    create_xar_chunk("XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER")
    create_rect("XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER",6,6,0,9,9,15)
    create_rect("XAR_EMPTY_BORING",1,1,1,14,14,14)
    create_rect("XAR_EMPTY_BORING",7,7,0,8,8,15)
    add_bent_s(7,7,7,"bent_base_txt","This is a pearl, it got a treasure in the center but to reach it u gotta go through a long walk, the entrance to the inner pearl is at the bottom.\n\nThis one seems to be a dark one so inside it u can find a key to go between the great E1 mucube walls.")
    add_bent(8,8,7,"bent_base_save")
    for i = 6,9 do
        add_bent(1,4,i,"bent_ammo_gun_7_large_once")
        add_bent(1,5,i,"bent_ammo_gun_7_large_once")
        add_bent(1,7,i,"bent_ammo_gun_8_once")
        add_bent(1,8,i,"bent_ammo_gun_8_once")
        add_bent(1,10,i,"bent_ammo_gun_9_once")
        add_bent(1,11,i,"bent_ammo_gun_9_once")
    end
end