function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__main()

    create_rect("XAR_YW_SMALL_ISLAND_AIR",0,0,0,15,15,15)
    create_rect("XAR_YW_LATTICE_1",0,0,0,15,0,0)
    create_rect("XAR_YW_LATTICE_1",0,0,0,0,15,0)
    create_rect("XAR_YW_LATTICE_1",0,0,0,0,0,15)

    local structures = {"island","endurance"}
    local randomstruct = structures[randi(1,#structures)]
    if randomstruct == "island" then
        local x1 = randi(3,6)
        local y1 = randi(3,6)
        local x2 = randi(9,12)
        local y2 = randi (9,12)
        local z = randi(5,10)
        local xring = randi(x1,x2)
        local yring = randi(y1,y2)
        create_rect("XAR_SOLID_BORING_CONCRETE_PURPLE_BORDER",x1,y1,z,x2,y2,z)
        create_rect("block_omniverse_yan_forest",x1,y1,z-1,x2,y2,z-1)
        if randf() > 0.6 then
            add_bent(xring,yring,z-2,"bent_base_ring_green")
        end
    end
    if randomstruct == "endurance" then
        add_bent(7,7,14,"bent_base_ring_pink_dest")
        create_rect("XAR_YW_LATTICE_1",3,3,3,12,12,12)
        create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",4,4,3,11,11,12)
        create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",4,3,4,11,12,11)
        create_rect("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",3,4,4,12,11,11)
        set_pos(7,12,7,"XAR_ANTI_PLUG_GLASS")
        set_pos(7,11,7,"XAR_ASCEND_SIMPLE")
        set_pos(7,10,7,"block_endurance_dungeon_entrance")
        add_bent(7,10,7,"bent_base_ring_green")
        create_rect("XAR_EMPTY_BORING",7,9,7,7,9,10)
        set_pos(7,8,10,"block_endurance_dungeon_entrance_2")
        create_rect("block_endurance_dungeon_middle",7,5,10,7,7,10)
        create_rect("XAR_EMPTY_BORING",7,4,10,9,4,10)
        create_rect("block_endurance_dungeon_middle",9,5,10,9,6,10)
        create_rect("XAR_EMPTY_BORING",9,7,6,9,7,10)
        set_pos(9,8,6,"block_endurance_dungeon_treasure")
    end
end
