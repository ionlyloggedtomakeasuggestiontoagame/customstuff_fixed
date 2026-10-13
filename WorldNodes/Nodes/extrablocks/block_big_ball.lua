function p.__get_is_solid() return true end
function p.__get_tex() return "block_bright" end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")
    --[[local chop = 2
    for x,y,z,rx,ry,rz in vchunk_bps(chop,0,0,0) do
        if (x-31)^2+(y-31)^2+(z-31)^2 < 31^2 then
            set_pos(rx,ry,rz,"XAR_SOLID_BORING")
        end
    end]]
    local chop = 3
    local max = 2^(chop+4)-1
    local balls = {}
    for dx,dy,dz in bps(-1,-1,-1,1,1,1) do
        local data = get_vchunk_data(chop,dx,dy,dz)
        srand(data.seed)
        for i = 1,2 do
            local ball_pos = std.vec(
                randi(data.min2.x,data.max2.x-1),
                randi(data.min2.y,data.max2.y-1),
                randi(data.min2.z,data.max2.z-1)
            )
            balls[#balls+1] = ball_pos
        end
    end
    for x,y,z in bps(0,0,0,15,15,15) do
        for i = 1,#balls do
            local v = balls[i]
            if (x-v.x)^2+(y-v.y)^2+(z-v.z)^2 < 41^2 then
                set_pos(x,y,z,"XAR_SOLID_BORING")
                break
            end
        end
    end
end
