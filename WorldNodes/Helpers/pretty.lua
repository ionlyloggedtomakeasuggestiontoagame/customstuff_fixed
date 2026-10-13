-- purpose for this file is to make code look better for minimal performance loss.

-- internal
local function make_func(argtypes,impl)
    return function(...)
        local args = table.pack(...)
        local newargs = {}
        local pos = 1
        local pos2 = 1
        local i = 1
        while i <= args.n do
            local v = args[i]
            local t = argtypes[pos2]
            if t == "vec" then
                if type(v) == "table" then
                    local x,y,z = v.x,v.y,v.z
                    if type(x) ~= "number" or type(y) ~= "number" or type(z) ~= "number" then
                        error("invalid args to pretty func", 2)
                    end
                    newargs[pos] = x
                    newargs[pos+1] = y
                    newargs[pos+2] = z
                    pos = pos+3
                else
                    newargs[pos] = v
                    newargs[pos+1] = args[i+1]
                    newargs[pos+2] = args[i+2]
                    i = i+2
                    pos = pos+3
                end
            else
                newargs[pos] = v
                pos = pos+1
            end
            pos2 = pos2+1
            i = i+1
        end
        return impl(table.unpack(newargs))
    end
end

function bps(x1,y1,z1,x2,y2,z2)
    local x,y,z = x1,y1,z1
    return function()
        if x > x2 then return nil end
        local ox,oy,oz = x,y,z
        z = z + 1
        if z > z2 then z,y = z1,y+1 end
        if y > y2 then y,x = y1,x+1 end
        return ox,oy,oz
    end
end
bps = make_func({"vec","vec"},bps)

-- `for x,y,z,rx,ry,rz in vchunk_bps(chop,dx,dy,dz) do`
-- x,y,z -> use for math
-- rx,ry,rz -> use for placing blocks
function vchunk_bps(chop,dx,dy,dz)
    local data = get_vchunk_data(chop,dx,dy,dz)
    local x1,y1,z1,x2,y2,z2 = 0,0,0,15,15,15
    local x,y,z = x1,y1,z1
    return function()
        if x > x2 then return nil end
        local ox,oy,oz = x,y,z
        z = z + 1
        if z > z2 then z,y = z1,y+1 end
        if y > y2 then y,x = y1,x+1 end
        return ox-data.min2.x,oy-data.min2.y,oz-data.min2.z,ox,oy,oz,data
    end
end
vchunk_bps = make_func({"number","vec"},vchunk_bps)

-- like vchunk_bps but you put in a vchunk data instead
function vchunk_bps_data(data)
    local x1,y1,z1,x2,y2,z2 = 0,0,0,15,15,15
    local x,y,z = x1,y1,z1
    return function()
        if x > x2 then return nil end
        local ox,oy,oz = x,y,z
        z = z + 1
        if z > z2 then z,y = z1,y+1 end
        if y > y2 then y,x = y1,x+1 end
        return ox-data.min2.x,oy-data.min2.y,oz-data.min2.z,ox,oy,oz
    end
end

function valueinlist(value,list)
    for i= 1,#list do
        if list[i] == value then
            return true 
        end
    end
    return false
end

local function set(t)local o={}for i=1,#t do o[t[i]]=true end return o end
local xar_solid_bts = set{"XAR_SOLID_BORING"}
function bt_phys_solid(bt)
    if xar_solid_bts[bt] then return true end
    return bt_get_is_solid_physically(bt)
end