--This is called by the engine when the game is loaded.
function p.__load_game()
    local cmd_name = "giveupgrades2"
    game_command_system.add_command(cmd_name, p.handler)
    game_command_system.add_help(cmd_name, p.get_help_str())
end

function p.handler(str)
    game_cheats.giveupgrades2()
end

function p.get_help_str()
    return
           "Usage: giveupgrades2\n\n"
        .. "Setting the player to have 1000 upgrades in many categories. "
end
