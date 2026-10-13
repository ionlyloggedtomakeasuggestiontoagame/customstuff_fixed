function p.__get_is_solid()
    return false
end

function p.__get_tex()
    return ""
end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")
    
    std.create_edges("XAR_SOLID_BORING_CONCRETE_RED_BORDER")
    local input = get_input_path_block_s(get_level()-1, "input")
    if input == "" then
        input = "None"
    end
    --^should never happen unless the player breaks the fabric of space and time
    local msg = "Message from Filthy Frank:\n\n^xff0000"..
    "It's time to stop!\n\n"..
    "It's time to stop, okay?\n\n"..
    "No more. Where the **** are your parents?\n\n"..
    "Who are your parents?\n\n"..
    "I'm going to call child protective services.\n\n"..
    "It's time to stop!"
    add_bent_s(7,7,8,"bent_base_txt",msg)
    add_bent_s(7,7,6,"bent_base_txt",input.."...\n\nThats 10 digits, u know this dungeon only needs 6 to be solved, right?\n\nHere, i will give you a ring to go back, a random health upgrade and 50 gold.\n\n^xff0000Dont tell anyone of where u have been.")
    add_bent(7,6,4,"bent_upgrade_shield")
    add_bent(7,8,4,"bent_gold_50")
    add_bent(7,7,2,"bent_base_ring_pink_source")
    
end
