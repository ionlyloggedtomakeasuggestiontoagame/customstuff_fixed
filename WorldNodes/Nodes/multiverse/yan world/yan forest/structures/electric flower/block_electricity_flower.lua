function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__main()
    local msg = "This is an Electricity flower, its simple, enter it, do a 7x7x7 maze, get lots of plasma treasure, but there is a small detail, its walls are made out of high voltage blocks, one slip and u are dead, also it will be hard to see them while in the maze, u can also try to go to the Back Down Right corner and pay 10000 gold to grow making the maze easier"
    omniverse.create_yan_flower("block_electricity_flower_danger_maze","XAR_SOLID_BORING_CONCRETE_PURPLE_BORDER",msg)
    set_pos(7,7,10,"block_electricity_flower_treasure_chamber")
end
