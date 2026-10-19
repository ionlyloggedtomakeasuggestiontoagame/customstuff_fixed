function p.__get_can_use(level, bp)
    local dist = ga_block_dist_to_viewer(level, bp)
    if( dist < 1.0 ) then return false end
    return true
end

function p.__get_use_msg(level, bp)
    if( not p.__get_can_use(level, bp, dist) ) then return "" end
    return "Use (1% chance u get a random upgrade)"
end

function p.__on_use(level, bp)
    game_bent.remove_temp(level, bp, 86400) --1 whole day
    local chance = 0.01
    --chance = 1
    if ga_randf() < chance then
        local upgrades = {"plasma_regen"
                        ,"plasma_max_ammo"
                        ,"plasma_damage"
                        ,"plasma_fire_rate"
                        ,"plasma_proj_speed"
                        ,"cannon_max_ammo"
                        ,"cannon_fire_rate"
                        ,"cannon_damage"
                        ,"cannon_proj_speed"
                        ,"laser_max_ammo"
                        ,"laser_damage"
                        ,"laser_freeze_time"
                        ,"rocket_max_ammo"
                        ,"rocket_damage"
                        ,"rocket_fire_rate"
                        ,"rocket_proj_speed"
                        ,"rocket_radius"
                        ,"homing_max_ammo"
                        ,"homing_damage"
                        ,"homing_fire_rate"
                        ,"homing_proj_speed"
                        ,"minigun_max_ammo"
                        ,"minigun_damage"
                        ,"minigun_fire_rate"
                        ,"minigun_proj_speed"
                        ,"railgun_max_ammo"
                        ,"railgun_damage"
                        ,"railgun_fire_rate"
                        ,"emp_max_ammo"
                        ,"emp_damage"
                        ,"emp_radius"
                        ,"emp_freeze_time"
                        ,"nuke_max_ammo"
                        ,"nuke_damage"
                        ,"nuke_proj_speed"
                        ,"nuke_radius"
                        ,"dark_hole_max_ammo"
                        ,"dark_hole_damage"
                        ,"dark_hole_proj_speed"}
        local upgradesrand = upgrades[ga_randi(1,#upgrades)]
        game_upgrades[upgradesrand]()
    end
end
