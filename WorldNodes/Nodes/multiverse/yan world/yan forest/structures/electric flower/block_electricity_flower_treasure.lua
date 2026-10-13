function p.__get_is_solid() return true end
function p.__get_tex() return "block_green_black_striped" end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")
    std.create_edges("XAR_SOLID_BORING_GREEN_BLACK_STRIPED")
    add_bent(13,13,13,"bent_base_ring_pink_source")
    add_bent(7,7,9,"bent_base_save")
    add_bent(7,7,11,"bent_key_electric_flower")
    if get_input_path_bt(get_level()-1) == "block_electricity_maze_treasure_kilo" then
        omniverse.txtpeople(7,7,5,"Hell yeah, 2 cakes!!!")
        add_bent_s(7,7,7,"bent_base_waypoint","Electricity + Maze Hybrid flower")
    else
        omniverse.txtpeople(7,7,5,"What a hellish structure, once lost inside u cant even rest due to the amount of electricity everywhere charging you up, i dont even know how it could work on me but it definitelly doesn't care if you are a robot or not.")
        add_bent_s(7,7,7,"bent_base_waypoint","Electricity Flower Treasure")
    end
    for y = 1,10 do
        for z = 1,10 do
            add_bent(0,y,z,"bent_upgrade_gun_1_ammo_cap")
        end
    end
    for y = 1,14 do
        for z = 12,14 do
            add_bent(0,y,z,"bent_upgrade_gun_1_ammo_regen")
        end
    end
    add_bent(0,13,9,"bent_upgrade_gun_1_fire_speed")
    create_rect("XAR_SOLID_BORING_GREEN_BLACK_STRIPED",0,0,11,0,15,11)
    create_rect("XAR_SOLID_BORING_GREEN_BLACK_STRIPED",0,11,0,0,11,11)
    create_rect("XAR_SOLID_BORING_GREEN_BLACK_STRIPED",0,11,0,0,15,7)
end
