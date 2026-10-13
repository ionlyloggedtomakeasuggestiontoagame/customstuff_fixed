function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_concrete_dark_dot"
end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")
    if (randf() > 0.25) then
    --challenging blud or big blud
    jumps = {"Big Striped boi","Neo"}
    jumptype = jumps[randi(1,#jumps)]
    if jumptype == "Big Striped boi" then
        for y = 2,14,2 do
        create_rect("XAR_SOLID_BORING_DARK_GREEN_BORDER", 3,y,0, 12,y,0)
        end
    end
    if jumptype == "Neo" then
        if (randf() > 0.25) then
    create_rect("XAR_SOLID_BORING_CONCRETE_RED_BORDER", 0,2,0, 15,14,0)
    create_rect("XAR_SOLID_BORING_CONCRETE_RED_BORDER", 0,7,0, 15,7,3)
        else
    local xoffset1 = randi(-2,2)
    create_rect("XAR_SOLID_BORING_CONCRETE_RED_BORDER", 7-xoffset1,2,0, 7-xoffset1,14,0)
    create_rect("XAR_SOLID_BORING_CONCRETE_RED_BORDER", 7-xoffset1,7,0, 7-xoffset1,7,3)
    end end
    else
    --2 small bluds
    local xoffset1 = randi(-3,3)
    local xoffset2 = randi(-3,3)
    create_rect("XAR_SOLID_BORING_CONCRETE_YELLOW_BORDER", 5+xoffset1,2,0, 10+xoffset1,5,0)
    create_rect("XAR_SOLID_BORING_CONCRETE_YELLOW_BORDER", 5+xoffset2,10,0, 10+xoffset2,13,0)
    end
end
