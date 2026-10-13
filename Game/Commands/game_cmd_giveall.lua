--This is called by the engine when the game is loaded.
function p.__load_game()
    local cmd_name = "giveall"
    game_command_system.add_command(cmd_name, p.handler)
    game_command_system.add_help(cmd_name, p.get_help_str())
end

function p.handler(str)
    game_cheats.giveall()
end

function p.get_help_str()
    return
           "Usage: giveall\n\n"
        .. "Cheat code to give all ammo, health, and armor of the player. "
end
