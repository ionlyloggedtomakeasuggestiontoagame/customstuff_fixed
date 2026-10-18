function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__main()
    set_default_block("block_abstract_field_air")
    local vine_xy = chunk_get_v("vine_xy")
    local r = 4
    local R = 16
    local chop = 4
    local max = 2^(chop+4)-1
    local tori = {}
    for dx,dy,dz in bps(-1,-1,-1,1,1,1) do
        local data = get_vchunk_data(chop,dx,dy,dz)
        local tori_pos = std.vec(
            data.min2.x+vine_xy.x%(2^chop)*16+7.5,
            data.min2.y+vine_xy.y%(2^chop)*16+7.5,
            data.min2.z
        )
        tori[#tori+1] = tori_pos
        --debug stuff
        --[[if (dx == 0) and (dy == 0) and (dz == 0) then
            add_bent_s(7,7,7,"bent_base_txt",tori_pos.x .. " " .. tori_pos.y .. " " .. tori_pos.z)
        end]]
    end
    for x,y,z in bps(0,0,0,15,15,15) do
        for i = 1,#tori do
            local v = tori[i]
            if (math.sqrt((x-v.x)^2+(y-v.y)^2)-R)^2 + (math.fmod(z-v.z+16,32)+8)^2 < r^2 then
                block_abstract_field_air.amalgam(x,y,z,"XAR_TAU_CAVE_MOSS_TOP")
            end
            if (math.sqrt((x-v.x)^2+(y-v.y)^2)-R)^2 + (math.fmod(z-v.z+16,32)+8)^2 < (r-1)^2 then
                block_abstract_field_air.amalgam(x,y,z,"XAR_BOTANY_LAB_CAVE_IMP")
            end
            if (math.sqrt((x-v.x)^2+(y-v.y)^2)-R)^2 + (math.fmod(z-v.z+16,32)+8)^2 < (r-2)^2 then
                block_abstract_field_air.amalgam(x,y,z,"XAR_TAU_CAVE_LAYER_2_CAVE")
                break
            end
        end
    end
    for x,y,z in bps(0,0,0,15,15,15) do
        if (get_pos(x,y,z) == "XAR_TAU_CAVE_MOSS_TOP") and (get_pos(x,y,z+1) == "block_abstract_field_air") then
            if randf() > 0.01 then
                set_pos(x,y,z+1,"XAR_YING_FOREST") 
            else
                local pyramid = {"block_minigun_pyramid_big","XAR_SMALL_CANNON_PYRAMID","XAR_LARGE_CANNON_PYRAMID","XAR_SPONGE_PURE_PYRAMID"}
                local pyramidtype = pyramid[randi(1,#pyramid)]
                set_pos(x,y,z+1,pyramidtype)
            end
        end
    end
    block_abstract_field_air.air()
    omniverse.rings()
    block_abstract_field.monsters()
end

function p.__type_init(id)
ia_block_new_var_v(id, "vine_xy", std.vec(0,0,0))
end