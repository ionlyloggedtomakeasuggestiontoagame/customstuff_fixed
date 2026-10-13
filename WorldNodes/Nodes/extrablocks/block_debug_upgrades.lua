function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__main()
    set_default_block("block_air")
    set_pos(7,7,7,"debug_upgrades")
    for x,y,z in bps(0,0,0,15,15,15) do
        if randi(0,1) == 1 then
            local guntype = randi(0,9)
            local upgrades = {"_ammo_cap","_damage"}
            if (guntype == 0) or (guntype == 1) or (guntype == 2) or (guntype == 4) or (guntype == 5) or (guntype == 6) or (guntype == 9) then
                upgrades[#upgrades+1] = "_proj_speed"
            end
            if (guntype == 1) or (guntype == 2) or (guntype == 4) or (guntype == 5) or (guntype == 6) or (guntype == 7) then
                upgrades[#upgrades+1] = "_fire_speed"
            end
            if (guntype == 4) or (guntype == 8) or (guntype == 9) then
                upgrades[#upgrades+1] = "_radius"
            end
            if (guntype == 3) or (guntype == 8) then
                upgrades[#upgrades+1] = "_time"
            end
            if (guntype == 3) or (guntype == 6) then
                upgrades[#upgrades+1] = "_num"
            end
            if (guntype == 2) then
                upgrades[#upgrades+1] = "_num_shots"
            end
            if (guntype == 1) then
                upgrades[#upgrades+1] = "_ammo_regen"
            end
            local upgtype = upgrades[randi(1,#upgrades)]
            local upgradeplace = "bent_upgrade_gun_"..guntype..upgtype
            add_bent(x,y,z,upgradeplace)
        else
            local special = {"shield","spice","armor_regen"}
            local specialtype = "bent_upgrade_"..special[randi(1,#special)]
            add_bent(x,y,z,specialtype)
        end
    end
    add_bent(7,7,8,"bent_base_ring_green_danger")
    --literally every upgrade in the game, generated randomly in a cube
end