--This is called by the engine when the game is loaded.
function p.__load_game()
    local cmd_name = "giveweaponmodes"
    game_command_system.add_command(cmd_name, p.handler)
    game_command_system.add_help(cmd_name, p.get_help_str())
end

function p.handler(str)
    game_cheats.get_all_weapon_modes()
end

function p.get_help_str()
    return
           "Usage: giveweaponmodes\n\n"
        .. "Unlocks the extra weapon modes for the player's weapons. "
end
