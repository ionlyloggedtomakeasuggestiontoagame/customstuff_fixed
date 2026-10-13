function p.__get_is_solid() return true end

function p.__get_tex() return "block_green_and_pink_border" end
function p.__get_tex_z_pos() return "block_dark_green_border" end
function p.__get_tex_z_neg() return "block_concrete_purple_border" end

function p.__main()
    set_default_block("XAR_SOLID_BORING_DARK_GREEN_BORDER")
    create_rect("XAR_SOLID_BORING_CONCRETE_PURPLE_BORDER",0,0,0,15,15,7)
    for x = 0,15 do
        for z = 0,15 do
            local yhigh = randi(8,10)
            local ylow = randi(7,5)
            if (randf() < 0.5) then
                create_rect("XAR_SOLID_BORING_DARK_GREEN_BORDER",x,z,ylow,x,z,yhigh)
                set_pos(x,z,ylow,"block_green_and_pink")
            else
                create_rect("XAR_SOLID_BORING_CONCRETE_PURPLE_BORDER",x,z,ylow,x,z,yhigh)
                set_pos(x,z,yhigh,"block_green_and_pink")
            end
        end
    end

    create_rect("block_omniverse_yan_forest_air",5,0,0,10,15,15)
    create_rect("XAR_YING_FOREST",5,0,0,10,15,0)
    create_rect("block_omniverse_yan_forest",5,0,15,10,15,15)
    create_rect("block_omniverse_yan_forest_air",0,5,0,15,10,15)
    create_rect("XAR_YING_FOREST",0,5,0,15,10,0)
    create_rect("block_omniverse_yan_forest",0,5,15,15,10,15)

    --ammo
    local ammo = {"bent_ammo_gun_1_once","bent_ammo_gun_2_large_once","bent_ammo_gun_3_large_once","bent_ammo_gun_4_large_once","bent_ammo_gun_5_large_once","bent_ammo_gun_6_large_once","bent_ammo_gun_7_large_once"}
    local ammotype = ammo[randi(1,#ammo)]
    add_bent(7,7,7,ammotype)
end
