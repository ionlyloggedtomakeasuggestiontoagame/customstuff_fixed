--This is called by the engine when the game is loaded.
function p.__load_game()
    local cmd_name = "giveupgrades0"
    game_command_system.add_command(cmd_name, p.handler)
    game_command_system.add_help(cmd_name, p.get_help_str())
end

function p.handler(str)
    game_cheats.giveupgrades0()
end

function p.get_help_str()
    return
           "Usage: giveupgrades0\n\n"
        .. "Setting the player to have a very small number of upgrades in many categories. "
end
