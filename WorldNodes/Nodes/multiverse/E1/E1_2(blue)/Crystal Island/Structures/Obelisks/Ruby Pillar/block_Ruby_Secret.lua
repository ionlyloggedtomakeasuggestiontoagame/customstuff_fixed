function p.__get_is_solid() return true end
function p.__get_tex() return "block_rainbow" end

function p.__main()
    set_default_block("block_E1_2_air")
    srand(seed_normal())
    std.create_edges("block_Ruby_Sponge")
    create_rect("block_Ruby_Sponge",0,0,15,15,15,15)
    create_rect("block_Ruby_Sponge",0,0,0,15,15,0)
    add_bent(15,7,7,"bent_ruby_program_image")
    add_bent_s(7,7,7,"bent_base_txt","^xff0000Ruby")
    add_bent_s(7,7,5,"bent_base_txt","Sadly, this mod wasnt programmed using ruby but instead it uses Lua.")
    --rings
    omniverse.rings()
end
