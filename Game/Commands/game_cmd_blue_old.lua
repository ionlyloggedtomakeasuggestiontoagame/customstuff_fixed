--This is called by the engine when the game is loaded.
function p.__load_game()
    local cmd_name = "blue_old"
    game_command_system.add_command(cmd_name, p.handler)
    game_command_system.add_help(cmd_name, p.get_help_str())
end

function p.handler(str)
    ga_console_print("^1*** Warning: This command \"blue_old\" is deprecated. ")
    ga_console_print("^1Use the \"blue\" command instead. ")
    game_cheats.blue_tele() --Deprecate.
end

function p.get_help_str()
    return
           "Usage: blue_old\n\n"
        .. "Cheat code that causes the player to teleport as if "
        .. "they used blue rings. "
        .. "This has been deprecated. "
        .. "Please use the \"blue\" command instead. "
end
