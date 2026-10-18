--sponge
function p.sponge(air,block)
    for x = 0, 3 do
        for y = 0, 3 do
            for z = 0, 3 do
                p.menger(x*4, y*4, z*4, air, block)
            end
        end
    end

    create_rect(air, 0, 4, 4, 15, 11, 11)
    create_rect(air, 4, 0, 4, 11, 15, 11)
    create_rect(air, 4, 4, 0, 11, 11, 15)
    
    p.menger(6, 6, 6, air, block)
end

function p.menger(ox, oy, oz, air, block)
    local origin = std.vec(ox, oy, oz)

    local mrs = relative_pos( origin, 0, 0, 0)
    local mre = relative_pos( origin, 3, 3, 3)
    create_rect(block, mrs.x, mrs.y, mrs.z, mre.x, mre.y, mre.z)
    
    local zrs = relative_pos( origin, 1, 1, 0)
    local zre = relative_pos( origin, 2, 2, 3)
    create_rect(air, zrs.x, zrs.y, zrs.z, zre.x, zre.y, zre.z)

    local yrs = relative_pos( origin, 0, 1, 1)
    local yre = relative_pos( origin, 3, 2, 2)
    create_rect(air, yrs.x, yrs.y, yrs.z, yre.x, yre.y, yre.z)

    local xrs = relative_pos( origin, 1, 0, 1)
    local xre = relative_pos( origin, 2, 3, 2)
    create_rect(air, xrs.x, xrs.y, xrs.z, xre.x, xre.y, xre.z)
end

function relative_pos(origin, offset_x, offset_y, offset_z)

    local x = origin.x + offset_x
    local y = origin.y + offset_y
    local z = origin.z + offset_z

    return std.vec(x, y, z)
end
--sponge end

--sierpisnki
function p.sierpinski(block)
    p.sierp2(0,0,0,block)
    p.sierp2(8,8,0,block)
    p.sierp2(8,0,8,block)
    p.sierp2(0,8,8,block)
end

function p.sierp2(x,y,z,block)
    p.sierp1(0+x,0+y,0+z,block)
    p.sierp1(4+x,4+y,0+z,block)
    p.sierp1(4+x,0+y,4+z,block)
    p.sierp1(0+x,4+y,4+z,block)
end

function p.sierp1(x,y,z,block)
    p.sierp0(0+x,0+y,0+z,block)
    p.sierp0(2+x,2+y,0+z,block)
    p.sierp0(2+x,0+y,2+z,block)
    p.sierp0(0+x,2+y,2+z,block)
end

function p.sierp0(x,y,z,block)
    set_pos(0+x,0+y,0+z,block)
    set_pos(1+x,1+y,0+z,block)
    set_pos(1+x,0+y,1+z,block)
    set_pos(0+x,1+y,1+z,block)
end
--sierpisnki end