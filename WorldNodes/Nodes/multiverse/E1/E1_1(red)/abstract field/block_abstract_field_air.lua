function p.__get_is_solid()
    return false
end

function p.__get_tex()
    return ""
end

function p.__main()
    set_default_block("block_abstract_field_air")
    p.air()

end

function p.air()
    if (randf() < 1/8) then
        block_E1_1_walls.structurething(6,6,6,8,8,8,7,7,7)
    end
    --helix
    srand(seed_xy())
    if randf() < 1/8 then
        local x = randi(1,14)
        local y = randi(1,14)
        create_rect("block_abstract_vine_torus",x-1,y-1,0,x-1,y+1,15)
        create_rect("block_abstract_vine_torus",x-1,y+1,0,x+1,y+1,15)
        create_rect("block_abstract_vine_torus",x-1,y-1,0,x+1,y-1,15)
        create_rect("block_abstract_vine_torus",x+1,y-1,0,x+1,y+1,15)
        for x1,y1,z1 in bps(x-1,y-1,0,x+1,y+1,15) do
            block_set_v(x1,y1,z1, "vine_xy", std.vec(x,y,0))
        end
        for z=0,15 do
            p.amalgam(x,y,z,"block_abstract_helix")
        end
    end
    --porous walls
    srand(seed_xz())
    if randf() < 1/8 then
        local x = randi(0,15)
        local z = randi(0,15)
        for y=0,15 do
            p.amalgam(x,y,z,"block_abstract_field_porous_walls")
        end
    end
    --i2 spires
    srand(seed_yz())
    if randf() < 1/8 then
        local y = randi(0,15)
        local z = randi(0,15)
        for x=0,15 do
            p.amalgam(x,y,z,"XAR_FANATIC_LATTICE")
        end
    end
    srand(seed_normal())
    if (randf() < 1/64) then
        p.amalgam(7,7,7,"block_abstract_field")
    end
    omniverse.rings()
    block_abstract_field.monsters()
end
function p.amalgam(x,y,z,block)
    if bt_get_is_solid_physically(get_pos(x,y,z)) then
        if get_pos(x,y,z) == "block_abstract_amalgamation" then
            set_pos(x,y,z,"block_abstract_glitch")
        else
            set_pos(x,y,z,"block_abstract_amalgamation")
        end
    else
        set_pos(x,y,z,block)
    end
end