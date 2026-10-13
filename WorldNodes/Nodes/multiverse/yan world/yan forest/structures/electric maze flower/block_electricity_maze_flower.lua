function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__main()
    local msg = "This is a rare hybrid between an electricity flower and a big maze flower, inside is a 10x10x10 maze, "
    if get_input_path_bt(get_level()-1) == "block_electricity_maze_treasure_kilo" then
        msg = "Wanna try again?"
    end
    omniverse.create_yan_flower("block_electricity_maze_chamber","XAR_SOLID_BORING_CONCRETE_PURPLE_BORDER",msg)
end
