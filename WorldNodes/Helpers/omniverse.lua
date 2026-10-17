--helps

function p.create_yan_flower(dungeon,flowerbt,msg)
    set_default_block("block_omniverse_yan_forest_air")
    create_rect("block_omniverse_yan_forest",0,0,15,15,15,15)
    create_rect(flowerbt,7,7,11,7,7,15)
    create_rect(flowerbt,5,7,11,9,7,11)
    create_rect(flowerbt,7,5,11,7,9,11)
    create_rect(flowerbt,5,7,7,9,7,7)
    create_rect(flowerbt,7,5,7,7,9,7)
    create_rect(flowerbt,5,7,7,5,7,11)
    create_rect(flowerbt,9,7,7,9,7,11)
    create_rect(flowerbt,7,5,7,7,5,11)
    create_rect(flowerbt,7,9,7,7,9,11)
    set_pos(7,7,9,dungeon)
    add_bent(7,7,8, "bent_base_ring_green")

    --pillars around
    create_rect(flowerbt,3,3,11,3,3,15)
    add_bent(3,3,9, "bent_base_ring_pink_dest")
    create_rect(flowerbt,3,12,11,3,12,15)
    set_pos(3,12,11,"XAR_SOLID_BORING_EXPANDER")
    set_pos(3,12,10,"XAR_ASCEND_SIMPLE")
    create_rect(flowerbt,12,3,11,12,3,15)
    add_bent(12,3,9, "bent_base_ring_green")
    create_rect(flowerbt,12,12,11,12,12,15)
    add_bent_s(12,12,9,"bent_base_txt",msg)

    --checks if there is air above, if so make the tips green
    if get_input_adj_bt(0,0,1) == "block_omniverse_yan_forest_air" then
        set_pos(7,7,15,"XAR_YING_FOREST")
        set_pos(7,7,14,"XAR_SOLID_BORING_DARK_GREEN_BORDER")
        set_pos(7,7,13,"block_green_and_pink")
        --the pillars
        set_pos(3,3,15,"XAR_YING_FOREST")
        set_pos(3,3,14,"XAR_SOLID_BORING_DARK_GREEN_BORDER")
        set_pos(3,3,13,"block_green_and_pink")

        set_pos(3,12,15,"XAR_YING_FOREST")
        set_pos(3,12,14,"XAR_SOLID_BORING_DARK_GREEN_BORDER")
        set_pos(3,12,13,"block_green_and_pink")

        set_pos(12,3,15,"XAR_YING_FOREST")
        set_pos(12,3,14,"XAR_SOLID_BORING_DARK_GREEN_BORDER")
        set_pos(12,3,13,"block_green_and_pink")

        set_pos(12,12,15,"XAR_YING_FOREST")
        set_pos(12,12,14,"XAR_SOLID_BORING_DARK_GREEN_BORDER")
        set_pos(12,12,13,"block_green_and_pink")
    end
end

function p.superellipse(bt,size,exp,xpos,ypos,zpos)
    for x,y,z in bps(0,0,0,15,15,15) do
        if math.abs((x-xpos))^exp+math.abs((y-ypos))^exp+math.abs((z-zpos))^exp < size^exp then
            set_pos(x,y,z,bt)
        end
    end
    --checks each block and puts through that x²+y²+z²=n² formula for a sphere.
    --tho the x,y and zpos are to re-center the sphere in the middle of the chunk, usual number is 7.5, but it can also be 7 for odd spheres, 
    --rather than being in the corner.
    --exponent is the superellipse part, exponent of 2 is usual sphere, exponent of 1 is rhombus, infinite exponent is cube, tho we wont need that
end

function p.random_upgrade_ammo(x,y,z)
    
    local upgrades = "bent_upgrade_gun_"..randi(0,9).."_ammo_cap"
    add_bent(x,y,z,upgrades)
end

------taken from the std but updated to cover areas that arent 0,0,0 and 15,15,15
--Will create the 12 edges of the chunk.
function p.create_edges(bt_str,x1,y1,z1,x2,y2,z2)
    p.create_edges_c(bt_str_to_code(bt_str),x1,y1,z1,x2,y2,z2)
end

--The "block type is an integer" version.
function p.create_edges_c(bt_int,x1,y1,z1,x2,y2,z2)
    create_rect_c(bt_int, x1,y1,z1,   x2,y1,z1)
    create_rect_c(bt_int, x1,y1,z2,  x2,y1,z2)
    create_rect_c(bt_int, x1,y2,z1,  x2,y2,z1)
    create_rect_c(bt_int, x1,y2,z2, x2,y2,z2)
    --
    create_rect_c(bt_int, x1,y1,z1,   x1,y2,z1)
    create_rect_c(bt_int, x1,y1,z2,  x1,y2,z2)
    create_rect_c(bt_int, x2,y1,z1,  x2,y2,z1)
    create_rect_c(bt_int, x2,y1,z2, x2,y2,z2)
    --
    create_rect_c(bt_int, x1,y1,z1,   x1,y1,z2)
    create_rect_c(bt_int, x1,y2,z1,  x1,y2,z2)
    create_rect_c(bt_int, x2,y1,z1,  x2,y1,z2)
    create_rect_c(bt_int, x2,y2,z1, x2,y2,z2)
end
------
function p.rainbow_dark_cubes(x1,y1,z1,x2,y2,z2)
    for x,y,z in bps(x1,y1,z1,x2,y2,z2) do
        local colorbt = {"XAR_SOLID_BORING_DARK_CONCRETE_RED_BORDER",
        "XAR_SOLID_BORING_DARK_CONCRETE_BLUE_BORDER",
        "XAR_SOLID_BORING_DARK_CONCRETE_GREEN_BORDER",
        "XAR_SOLID_BORING_DARK_CONCRETE_PURPLE_BORDER",
        "XAR_SOLID_BORING_DARK_CONCRETE_ORANGE_BORDER",
        "XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER",
        "block_solid_boring_dark_concrete_yellow_border"}
        local whichcolor = colorbt[randi(1,#colorbt)]
        set_pos(x,y,z,whichcolor)
    end
end

function p.cylinder(bt,size,xpos,ypos,zpos,axis)
    for x,y,z in bps(0,0,0,15,15,15) do
        local val = nil
        if axis == "x" then val = x end
        if axis == "y" then val = y end
        if axis == "z" then val = z end
        if (x-xpos)^2+(y-ypos)^2+(z-zpos)^2 < size^2+val^2 then
            set_pos(x,y,z,bt)
        end
    end
end

function p.replace_rect(toreplace,replaced,x1,y1,z1,x2,y2,z2)
    for x,y,z in bps(x1,y1,z1,x2,y2,z2) do
        if get_pos(x,y,z) == toreplace then
            set_pos(x,y,z,replaced)
        end
    end
end

-- code deduplication
function p.rings()
    if(randf() < 0.25) then
        local x = randi(0,15)
        local y = randi(0,15)
        local z = randi(0,15)
        if not bt_get_is_solid_physically(get_pos(x,y,z)) then
            if(randf() > 0.3) then
                add_bent(x,y,z,"bent_base_ring_green")
            else
                add_bent(x,y,z,"bent_base_ring_red")
            end
        end
    end
end

function p.ringsEX(x1,y1,z1,x2,y2,z2,chance1,chance2)
    if(randf() < chance1) then
        local x = randi(x1,x2)
        local y = randi(y1,y2)
        local z = randi(z1,z2)
        if not bt_get_is_solid_physically(get_pos(x,y,z)) then
            if(randf() > chance2) then
                add_bent(x,y,z,"bent_base_ring_green")
            else
                add_bent(x,y,z,"bent_base_ring_red")
            end
        end
    end
end

--dec to hex
function dectohex(number)
    number = tonumber(number)
    if number == 0 then return '0' end

    local neg = false
    if number < 0 then
        neg = true
        number = number * -1
    end

    local hexstr    = '0123456789ABCDEF'
    local result    = ''

    while number > 0 do
        local n = number%16
        result = string.sub( hexstr, n + 1, n + 1 ) .. result
        number = math.floor( number / 16 )
    end

    if neg then
        result = '-' .. result
    end

    return result
end

--textbox that has random colors for the different people inside
function p.txtpeople(x,y,z,msg)
    local r = randi(16,255)
    local g = randi(16,255)
    local b = randi(16,255)
    while r+g+b <= 240 do
        r = randi(16,255)
        g = randi(16,255)
        b = randi(16,255)
    end
    r = dectohex(r)
    g = dectohex(g)
    b = dectohex(b)
    local textcolor = "^x"..r..g..b
    local text = textcolor.."Message from the Last creature in here: \n\n"..msg
    add_bent_s(x,y,z,"bent_base_txt",text)
end

--DTE distance to edge, an int from 0 to 7, usually 0 tho
--BTA block to attach, usually it would attach to something that isnt itself
--BT block type of the wall
function p.wallsauto(dte,bta,bt)
        --faces
    if get_input_adj_bt(0,0,-1) == bta then
        create_rect(bt,0+dte,0+dte,0,15-dte,15-dte,0)
    end
    if get_input_adj_bt(0,0,1) == bta then
        create_rect(bt,0+dte,0+dte,15,15-dte,15-dte,15)
    end
    if get_input_adj_bt(0,-1,0) == bta then
        create_rect(bt,0+dte,0,0+dte,15-dte,0,15-dte)
    end
    if get_input_adj_bt(0,1,0) == bta then
        create_rect(bt,0+dte,15,0+dte,15-dte,15,15-dte)
    end
    if get_input_adj_bt(-1,0,0) == bta then
        create_rect(bt,0,0+dte,0+dte,0,15-dte,15-dte)
    end
    if get_input_adj_bt(1,0,0) == bta then
        create_rect(bt,15,0+dte,0+dte,15,15-dte,15-dte)
    end
        --edges
    if get_input_adj_bt(-1,-1,0) == bta then
        create_rect(bt,0+dte,0+dte,0,0+dte,0+dte,15)
    end
    if get_input_adj_bt(-1,1,0) == bta then
        create_rect(bt,0+dte,15-dte,0,0+dte,15-dte,15)
    end
    if get_input_adj_bt(1,-1,0) == bta then
        create_rect(bt,15-dte,0+dte,0,15-dte,0+dte,15)
    end
    if get_input_adj_bt(1,1,0) == bta then
        create_rect(bt,15-dte,15-dte,0,15-dte,15-dte,15)
    end
    --
    if get_input_adj_bt(-1,0,-1) == bta then
        create_rect(bt,0+dte,0,0+dte,0+dte,15,0+dte)
    end
    if get_input_adj_bt(-1,0,1) == bta then
        create_rect(bt,0+dte,0,15-dte,0+dte,15,15-dte)
    end
    if get_input_adj_bt(1,0,-1) == bta then
        create_rect(bt,15-dte,0,0+dte,15-dte,15,0+dte)
    end
    if get_input_adj_bt(1,0,1) == bta then
        create_rect(bt,15-dte,0,15-dte,15-dte,15,15-dte)
    end
    --
    if get_input_adj_bt(0,-1,-1) == bta then
        create_rect(bt,0,0+dte,0+dte,15,0+dte,0+dte)
    end
    if get_input_adj_bt(0,-1,1) == bta then
        create_rect(bt,0,0+dte,15-dte,15,0+dte,15-dte)
    end
    if get_input_adj_bt(0,1,-1) == bta then
        create_rect(bt,0,15-dte,0+dte,15,15-dte,0+dte)
    end
    if get_input_adj_bt(0,1,1) == bta then
        create_rect(bt,0,15-dte,15-dte,15,15-dte,15-dte)
    end
        --vertices
    if get_input_adj_bt(-1,-1,-1) == bta then
        set_pos(0+dte,0+dte,0+dte,bt)
    end
    if get_input_adj_bt(1,-1,-1) == bta then
        set_pos(15-dte,0+dte,0+dte,bt)
    end
    if get_input_adj_bt(-1,1,-1) == bta then
        set_pos(0+dte,15-dte,0+dte,bt)
    end
    if get_input_adj_bt(-1,-1,1) == bta then
        set_pos(0+dte,0+dte,15-dte,bt)
    end
    if get_input_adj_bt(-1,1,1) == bta then
        set_pos(0+dte,15-dte,15-dte,bt)
    end
    if get_input_adj_bt(1,-1,1) == bta then
        set_pos(15-dte,0+dte,15-dte,bt)
    end
    if get_input_adj_bt(1,1,-1) == bta then
        set_pos(15-dte,15-dte,0+dte,bt)
    end
    if get_input_adj_bt(1,1,1) == bta then
        set_pos(15-dte,15-dte,15-dte,bt)
    end
end

--sticky version, usually it would attach to something that IS itself
function p.wallsautosticky(dte,bta,bt)
        --faces
    if get_input_adj_bt(0,0,-1) ~= bta then
        create_rect(bt,0+dte,0+dte,0,15-dte,15-dte,0)
    end
    if get_input_adj_bt(0,0,1) ~= bta then
        create_rect(bt,0+dte,0+dte,15,15-dte,15-dte,15)
    end
    if get_input_adj_bt(0,-1,0) ~= bta then
        create_rect(bt,0+dte,0,0+dte,15-dte,0,15-dte)
    end
    if get_input_adj_bt(0,1,0) ~= bta then
        create_rect(bt,0+dte,15,0+dte,15-dte,15,15-dte)
    end
    if get_input_adj_bt(-1,0,0) ~= bta then
        create_rect(bt,0,0+dte,0+dte,0,15-dte,15-dte)
    end
    if get_input_adj_bt(1,0,0) ~= bta then
        create_rect(bt,15,0+dte,0+dte,15,15-dte,15-dte)
    end
        --edges
    if get_input_adj_bt(-1,-1,0) ~= bta then
        create_rect(bt,0+dte,0+dte,0,0+dte,0+dte,15)
    end
    if get_input_adj_bt(-1,1,0) ~= bta then
        create_rect(bt,0+dte,15-dte,0,0+dte,15-dte,15)
    end
    if get_input_adj_bt(1,-1,0) ~= bta then
        create_rect(bt,15-dte,0+dte,0,15-dte,0+dte,15)
    end
    if get_input_adj_bt(1,1,0) ~= bta then
        create_rect(bt,15-dte,15-dte,0,15-dte,15-dte,15)
    end
    --
    if get_input_adj_bt(-1,0,-1) ~= bta then
        create_rect(bt,0+dte,0,0+dte,0+dte,15,0+dte)
    end
    if get_input_adj_bt(-1,0,1) ~= bta then
        create_rect(bt,0+dte,0,15-dte,0+dte,15,15-dte)
    end
    if get_input_adj_bt(1,0,-1) ~= bta then
        create_rect(bt,15-dte,0,0+dte,15-dte,15,0+dte)
    end
    if get_input_adj_bt(1,0,1) ~= bta then
        create_rect(bt,15-dte,0,15-dte,15-dte,15,15-dte)
    end
    --
    if get_input_adj_bt(0,-1,-1) ~= bta then
        create_rect(bt,0,0+dte,0+dte,15,0+dte,0+dte)
    end
    if get_input_adj_bt(0,-1,1) ~= bta then
        create_rect(bt,0,0+dte,15-dte,15,0+dte,15-dte)
    end
    if get_input_adj_bt(0,1,-1) ~= bta then
        create_rect(bt,0,15-dte,0+dte,15,15-dte,0+dte)
    end
    if get_input_adj_bt(0,1,1) ~= bta then
        create_rect(bt,0,15-dte,15-dte,15,15-dte,15-dte)
    end
        --vertices
    if get_input_adj_bt(-1,-1,-1) ~= bta then
        set_pos(0+dte,0+dte,0+dte,bt)
    end
    if get_input_adj_bt(1,-1,-1) ~= bta then
        set_pos(15-dte,0+dte,0+dte,bt)
    end
    if get_input_adj_bt(-1,1,-1) ~= bta then
        set_pos(0+dte,15-dte,0+dte,bt)
    end
    if get_input_adj_bt(-1,-1,1) ~= bta then
        set_pos(0+dte,0+dte,15-dte,bt)
    end
    if get_input_adj_bt(-1,1,1) ~= bta then
        set_pos(0+dte,15-dte,15-dte,bt)
    end
    if get_input_adj_bt(1,-1,1) ~= bta then
        set_pos(15-dte,0+dte,15-dte,bt)
    end
    if get_input_adj_bt(1,1,-1) ~= bta then
        set_pos(15-dte,15-dte,0+dte,bt)
    end
    if get_input_adj_bt(1,1,1) ~= bta then
        set_pos(15-dte,15-dte,15-dte,bt)
    end
end

function p.wallsautoenvrect(dte,bta,rect)
        --faces
    if get_input_adj_bt(0,0,-1) == bta then
        add_env_rect(0+dte,0+dte,0,15-dte,15-dte,0,rect)
    end
    if get_input_adj_bt(0,0,1) == bta then
        add_env_rect(0+dte,0+dte,15,15-dte,15-dte,15,rect)
    end
    if get_input_adj_bt(0,-1,0) == bta then
        add_env_rect(0+dte,0,0+dte,15-dte,0,15-dte,rect)
    end
    if get_input_adj_bt(0,1,0) == bta then
        add_env_rect(0+dte,15,0+dte,15-dte,15,15-dte,rect)
    end
    if get_input_adj_bt(-1,0,0) == bta then
        add_env_rect(0,0+dte,0+dte,0,15-dte,15-dte,rect)
    end
    if get_input_adj_bt(1,0,0) == bta then
        add_env_rect(15,0+dte,0+dte,15,15-dte,15-dte,rect)
    end
        --edges
    if get_input_adj_bt(-1,-1,0) == bta then
        add_env_rect(0+dte,0+dte,0,0+dte,0+dte,15,rect)
    end
    if get_input_adj_bt(-1,1,0) == bta then
        add_env_rect(0+dte,15-dte,0,0+dte,15-dte,15,rect)
    end
    if get_input_adj_bt(1,-1,0) == bta then
        add_env_rect(15-dte,0+dte,0,15-dte,0+dte,15,rect)
    end
    if get_input_adj_bt(1,1,0) == bta then
        add_env_rect(15-dte,15-dte,0,15-dte,15-dte,15,rect)
    end
    --
    if get_input_adj_bt(-1,0,-1) == bta then
        add_env_rect(0+dte,0,0+dte,0+dte,15,0+dte,rect)
    end
    if get_input_adj_bt(-1,0,1) == bta then
        add_env_rect(0+dte,0,15-dte,0+dte,15,15-dte,rect)
    end
    if get_input_adj_bt(1,0,-1) == bta then
        add_env_rect(15-dte,0,0+dte,15-dte,15,0+dte,rect)
    end
    if get_input_adj_bt(1,0,1) == bta then
        add_env_rect(15-dte,0,15-dte,15-dte,15,15-dte,rect)
    end
    --
    if get_input_adj_bt(0,-1,-1) == bta then
        add_env_rect(0,0+dte,0+dte,15,0+dte,0+dte,rect)
    end
    if get_input_adj_bt(0,-1,1) == bta then
        add_env_rect(0,0+dte,15-dte,15,0+dte,15-dte,rect)
    end
    if get_input_adj_bt(0,1,-1) == bta then
        add_env_rect(0,15-dte,0+dte,15,15-dte,0+dte,rect)
    end
    if get_input_adj_bt(0,1,1) == bta then
        add_env_rect(0,15-dte,15-dte,15,15-dte,15-dte,rect)
    end
        --vertices
    if get_input_adj_bt(-1,-1,-1) == bta then
        add_env_rect(0+dte,0+dte,0+dte,0+dte,0+dte,0+dte,rect)
    end
    if get_input_adj_bt(1,-1,-1) == bta then
        add_env_rect(15-dte,0+dte,0+dte,15-dte,0+dte,0+dte,rect)
    end
    if get_input_adj_bt(-1,1,-1) == bta then
        add_env_rect(0+dte,15-dte,0+dte,0+dte,15-dte,0+dte,rect)
    end
    if get_input_adj_bt(-1,-1,1) == bta then
        add_env_rect(0+dte,0+dte,15-dte,0+dte,0+dte,15-dte,rect)
    end
    if get_input_adj_bt(-1,1,1) == bta then
        add_env_rect(0+dte,15-dte,15-dte,0+dte,15-dte,15-dte,rect)
    end
    if get_input_adj_bt(1,-1,1) == bta then
        add_env_rect(15-dte,0+dte,15-dte,15-dte,0+dte,15-dte,rect)
    end
    if get_input_adj_bt(1,1,-1) == bta then
        add_env_rect(15-dte,15-dte,0+dte,15-dte,15-dte,0+dte,rect)
    end
    if get_input_adj_bt(1,1,1) == bta then
        add_env_rect(15-dte,15-dte,15-dte,15-dte,15-dte,15-dte,rect)
    end
end