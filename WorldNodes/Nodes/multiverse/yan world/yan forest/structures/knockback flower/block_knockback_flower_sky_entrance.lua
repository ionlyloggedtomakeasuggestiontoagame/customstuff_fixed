function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__main()
    if chunk_get_b("small?") then
        create_xar_chunk("XAR_HELLBERRY_ARCADE_ENTER_Z_POS")
        omniverse.create_edges("XAR_SOLID_BORING_WHITE_BOX",0,0,9,15,15,9)
        add_env_rect(0,0,9,15,15,9,"env_rect_take_ammo")
    else
        set_default_block("XAR_EMPTY_BORING")
        p.sky()
    end
end

function p.__type_init(id)
    ia_block_new_var_b(id, "small?", false)
    ia_block_new_var_b(id, "plataforms?", true)
end

function p.sky()
    create_rect("block_knockback_flower_sky_entrance",0,0,1,15,15,1)
    if chunk_get_b("plataforms?") then
        create_rect("block_knockback_flower_plataforms",0,0,2,15,15,15)
    end
    for x,y,z in bps(0,0,1,15,15,15) do
        block_set_b(x,y,z, "small?", true)
    end
end
