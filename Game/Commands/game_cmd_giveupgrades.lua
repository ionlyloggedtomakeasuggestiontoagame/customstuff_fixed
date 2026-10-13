--This is called by the engine when the game is loaded.
function p.__load_game()
    local cmd_name = "giveupgrades"
    game_command_system.add_command(cmd_name, p.handler)
    game_command_system.add_help(cmd_name, p.get_help_str())
end

function p.handler(str)
    game_cheats.giveupgrades()
end

function p.get_help_str()
    return
           "Usage: giveupgrades\n\n"
        .. "Setting the player to have 100 upgrades in many categories. "
end
